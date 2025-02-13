CREATE TABLE `users` (
    `id` INT AUTO_INCREMENT,
    `first_name` VARCHAR(32) NOT NULL,
    `last_name` VARCHAR(32) NOT NULL,
    `username` VARCHAR(32) NOT NULL,
    `password` VARCHAR(16) NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `schools` (
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(32) NOT NULL UNIQUE,
    `type` ENUM('Primary', 'Secondary', 'Higher Education') NOT NULL,
    `location` VARCHAR(32) NOT NULL,
    `year_foundation` YEAR NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `companies` (
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(32) NOT NULL UNIQUE,
    `industry` ENUM('Technology', 'Education', 'Business') NOT NULL,
    `location` VARCHAR(64) NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `users_connections` (
    `user_a` INT CHECK(`user_a` != `user_b`),
    `user_b` INT CHECK(`user_b` != `user_a`),
    FOREIGN KEY (`user_a`) REFERENCES `users`(`id`),
    FOREIGN KEY (`user_b`) REFERENCES `users`(`id`)
);

CREATE TABLE `schools_connections` (
    `school_id` INT,
    `user_id` INT,
    `start_date` DATE,
    `end_date` DATE,
    `degree_type` VARCHAR(16),
    FOREIGN KEY (`school_id`) REFERENCES `schools`(`id`),
    FOREIGN KEY (`user_id`) REFERENCES `users`(`id`)
);

CREATE TABLE `companies_connections` (
    `company_id` INT,
    `user_id` INT,
    `start_date` DATE,
    `end_date` DATE,
    FOREIGN KEY (`company_id`) REFERENCES `companies`(`id`),
    FOREIGN KEY (`user_id`) REFERENCES `users`(`id`)
);
