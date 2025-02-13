delimiter //

CREATE PROCEDURE `current_collection`()
BEGIN
SELECT `title`, `accession_number`, `acquired`
FROM `collections` WHERE `deleted` = 0;
END//

CREATE PROCEDURE `sell`(IN `sold_id` INT)
BEGIN
UPDATE `collections` SET `deleted` = 1
WHERE `id` = `sold_id`;
INSERT INTO `transactions` (`title`, `action`)
VALUES((SELECT `title` FROM `collections` WHERE `id` = `sold_id`), 'sold');
END//

