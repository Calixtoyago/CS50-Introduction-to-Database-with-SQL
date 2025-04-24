-- In this SQL file, write (and comment!) the typical SQL queries users will run on your database

-- Inserting datas

---- Inserting default datas to genres and authors
INSERT INTO "genres" ("id", "genre")
VALUES (0, 'No data');

INSERT INTO "authors" ("id", "name")
VALUES (0, 'No data');

---- Inserting books
INSERT INTO "books" ("title", "pages", "type", "isbn")
VALUES
("As Crônicas de Nárnia: O Sobrinho do Mago", 184, "paperbook", "9788578272616"),
("As Crônicas de Nárnia: O Leão, a Feiticeira e o Guarda-Roupa", 224, "paperbook", "9788578270889"),
("As Crônicas de Nárnia: O Cavalo e seu Menino", 240, "paperbook", "9788578273583"),
("As Crônicas de Nárnia: Príncipe Caspian", 240, "paperbook", "9788546901951"),
("As Crônicas de Nárnia: A Viagem do Peregrino da Alvorada", 288, "paperbook", "9788546901357"),
("As Crônicas de Nárnia: A Cadeira de Prata", 256, "paperbook", "9788578277918"),
("As Crônicas de Nárnia: A Última Batalha", 224, "paperbook", "9788578279097"),
("A Metamorfose", 96, "paperbook", "9788594318787"),
("O Fantasma da Ópera", 336, "paperbook", "9786555520040"),
("O Desaparecimento de Josef Mengele", 272, "paperbook", "9788551004708"),
("O Hobbit", 336, "paperbook", "9788595084742"),
("Mitologia Nórdica", 288, "paperbook", "9788551010167"),
("A Rosa do Povo", 288, "paperbook", "9788535920277"),
("A Arte da Guerra", 104, "paperbook", "9786589678182"),
("Todas as Coisas que Eu Te Escreveria se Pudesse", 144, "paperbook", "9786588131244"),
("A Guerra dos Tronos", 592, "paperbook", "9788556510785"),
("O Livro de Ouro da Mitologia", 384, "paperbook", "9788595082311"),
("O Labirinto do Fauno", 304, "paperbook", "9788551005194"),
("Lugar Nenhum", 336, "paperbook", "9788580578997"),
("O Pequeno Príncipe", 100, "paperbook", "9788522030828"),
("Depois Daquele Verão", 359, "ebook", "9786553931305"),
("Battle Royale", 664, "paperbook", "9788576572008"),
("A Última Festa", 400, "paperbook", "9788551005729"),
("O Clube do Livro dos Homens", 352, "paperbook", "9786555650655"),
("Teto para Dois", 400, "paperbook", "9788551005415"),
("Coraline", 224, "paperbook", "9788551006757"),
("As Vantagens de Ser Invisível", 224, "paperbook", "9786555320695"),
("Código de um Cavaleiro", 192, "paperbook", "9788569809777"),
("Bem-vindos à Livraria Hyunam-dong", 272, "paperbook", "9786555606355"),
("Não Me Abandone Jamais", 344, "paperbook", "9788535926552"),
("Guerra Civil", 398, "paperbook", "9788542804126"),
("Amigo Imaginário", 752, "paperbook", "9788501118899"),
("V de Vingança", 296, "hq", "9788565484107"),
("Contos Fabulosos", 224, "hq", "9788565484206"),
("O Talentoso Ripley", 384, "paperbook", "9786555601862"),
("Jogador Número 1", 464, "paperbook", "9786555601589"),
("O Diário de Anne Frank", 352, "paperbook", "9788556710123"),
("Uma Noite na Livraria Morisaki", 208, "paperbook", "9786558382942"),
("Duna", 680, "ebook", "9788576573135"),
("Messias de Duna", 272, "ebook", "9788576573821"),
("Filhos de Duna", 528, "ebook", "9788576573142"),
("Flores para Algernon", 288, "ebook", "9788576573937"),
("Declínio de um Homem", 152, "ebook", "9788574482446"),
("A Morte de Ivan Ilitch", 100, "ebook", "9786580210183"),
("A Última Guerreira", 404, "paperbook", "9788500013041"),
("A Hora da Estrela", 88, "paperbook", "9786555320350"),
("Auto da Compadecida", 192, "paperbook", "9788522006588"),
("O Cão dos Baskerville", 189, "paperbook", "9788599187395"),
("Um Estudo em Vermelho", 120, "paperbook", "9788506056561"),
("Assassinato no Expresso Oriente", 272, "paperbook", "9788525430090"),
("O Morro dos Ventos Uivantes", 368, "ebook", "9786555520415"),
("Amor de Capitu", 296, "paperbook", "9788508107162"),
("Diário de um Banana: Caindo na Estrada", 224, "paperbook", "9788576838234"),
("Cidades de Papel", 368, "paperbook", "9788580573749"),
("O Tatuador de Auschwitz", 240, "paperbook", "9788542215694"),
("Mortal Kombat X Volume 1: Laços de Sangue", 128, "hq", "9781401257088"),
("Mortal Kombat X Volume 2: Deuses de Sangue", 144, "hq", "9781401258535"),
("1222", 256, "paperbook", "9788539505326"),
("Anjos e Demônios", 480, "paperbook", "9788575421468"),
("Percy Jackson: O Ladrão de Raios", 385, "paperbook", "9788580575392");

---- Inserting authors
INSERT INTO "authors" ("name")
VALUES
("C.S. Lewis"),
("Franz Kafka"),
("Olivier Guez"),
("J.R.R. Tolkien"),
("Neil Gaiman"),
("Carlos Drummond de Andrade"),
("Sun Tzu"),
("Rick Riordan"),
("Emily Brontë"),
("Igor Pires"),
("George R.R. Martin"),
("Carley Fortune"),
("Thomas Bulfinch"),
("Koushun Takami"),
("Lucy Foley"),
("Lyssa Kay Adams"),
("Beth O'Leary"),
("Stephen Chbosky"),
("Ethan Hawke"),
("Hwang Bo-reum"),
("Antoine de Saint-Exupéry"),
("Stuart Moore"),
("Alan Moore"),
("David Lloyd"),
("Herman Hesse"),
("Patricia Highsmith"),
("Ernest Cline"),
("Anne Frank"),
("Satoshi Yagisawa"),
("Daniel Keyes"),
("Osamu Dazai"),
("Steven Pressfield"),
("Clarice Lispector"),
("Ariano Suassuna"),
("Arthur Conan Doyle"),
("Agatha Christie"),
("Jeff Kinney"),
("Heather Morris"),
("Shawn Kittelsen"),
("Dan Brown");

---- Intersint genres
INSERT INTO "genres" ("genre")
VALUES
("Fantasia"),
("Aventura"),
("Ficção"),
("Literatura Clássica"),
("Romance Gótico"),
("Mistério"),
("Biografia"),
("História"),
("Mitologia"),
("Poesia"),
("Literatura Brasileira"),
("Estratégia"),
("Filosofia"),
("Crônicas"),
("Ficção Épica"),
("Referência"),
("Fantasia Sombria"),
("Ficção Histórica"),
("Fantasia Urbana"),
("Ficção Distópica"),
("Comédia"),
("Romance"),
("Chick-lit"),
("Horror"),
("Romance Adolescente"),
("Autoajuda"),
("Ficção Contemporânea"),
("Ficção Científica"),
("Super-herói"),
("Contos"),
("Suspense Psicológico"),
("Crime");

---- Inserting relationship between books and authors
INSERT INTO "book_authors" ("book_id", "author_id")
VALUES
(1, (SELECT "id" FROM "authors" WHERE "name" = 'C.S. Lewis')),
(2, (SELECT "id" FROM "authors" WHERE "name" = 'C.S. Lewis')),
(3, (SELECT "id" FROM "authors" WHERE "name" = 'C.S. Lewis')),
(4, (SELECT "id" FROM "authors" WHERE "name" = 'C.S. Lewis')),
(5, (SELECT "id" FROM "authors" WHERE "name" = 'C.S. Lewis')),
(6, (SELECT "id" FROM "authors" WHERE "name" = 'C.S. Lewis')),
(7, (SELECT "id" FROM "authors" WHERE "name" = 'C.S. Lewis')),
(8, (SELECT "id" FROM "authors" WHERE "name" = 'Franz Kafka')),
(9, (SELECT "id" FROM "authors" WHERE "name" = 'Gaston Leroux')),
(10, (SELECT "id" FROM "authors" WHERE "name" = 'Olivier Guez')),
(11, (SELECT "id" FROM "authors" WHERE "name" = 'J.R.R. Tolkien')),
(12, (SELECT "id" FROM "authors" WHERE "name" = 'Neil Gaiman')),
(13, (SELECT "id" FROM "authors" WHERE "name" = 'Carlos Drummond de Andrade')),
(21, (SELECT "id" FROM "authors" WHERE "name" = 'Carley Fortune')),
(14, (SELECT "id" FROM "authors" WHERE "name" = 'Sun Tzu')),
(15, (SELECT "id" FROM "authors" WHERE "name" = 'Igor Pires')),
(16, (SELECT "id" FROM "authors" WHERE "name" = 'George R.R. Martin')),
(17, (SELECT "id" FROM "authors" WHERE "name" = 'Thomas Bulfinch')),
(18, (SELECT "id" FROM "authors" WHERE "name" = 'Guillermo del Toro')),
(18, (SELECT "id" FROM "authors" WHERE "name" = 'Cornelia Funke')),
(19, (SELECT "id" FROM "authors" WHERE "name" = 'Neil Gaiman')),
(20, (SELECT "id" FROM "authors" WHERE "name" = 'Antoine de Saint-Exupéry')),
(22, (SELECT "id" FROM "authors" WHERE "name" = 'Koushun Takami')),
(23, (SELECT "id" FROM "authors" WHERE "name" = 'Lucy Foley')),
(24, (SELECT "id" FROM "authors" WHERE "name" = 'Lyssa Kay Adams')),
(25, (SELECT "id" FROM "authors" WHERE "name" = 'Beth O''Leary')),
(60, (SELECT "id" FROM "authors" WHERE "name" = 'Rick Riordan')),
(26, (SELECT "id" FROM "authors" WHERE "name" = 'Neil Gaiman')),
(27, (SELECT "id" FROM "authors" WHERE "name" = 'Stephen Chbosky')),
(28, (SELECT "id" FROM "authors" WHERE "name" = 'Ethan Hawke')),
(29, (SELECT "id" FROM "authors" WHERE "name" = 'Hwang Bo-reum')),
(30, (SELECT "id" FROM "authors" WHERE "name" = 'Kazuo Ishiguro')),
(51, (SELECT "id" FROM "authors" WHERE "name" = 'Emily Brontë')),
(31, (SELECT "id" FROM "authors" WHERE "name" = 'Stuart Moore')),
(32, (SELECT "id" FROM "authors" WHERE "name" = 'Stephen Chbosky')),
(33, (SELECT "id" FROM "authors" WHERE "name" = 'Alan Moore')),
(33, (SELECT "id" FROM "authors" WHERE "name" = 'David Lloyd')),
(34, (SELECT "id" FROM "authors" WHERE "name" = 'Herman Hesse')),
(35, (SELECT "id" FROM "authors" WHERE "name" = 'Patricia Highsmith')),
(36, (SELECT "id" FROM "authors" WHERE "name" = 'Ernest Cline')),
(37, (SELECT "id" FROM "authors" WHERE "name" = 'Anne Frank')),
(38, (SELECT "id" FROM "authors" WHERE "name" = 'Satoshi Yagisawa')),
(39, (SELECT "id" FROM "authors" WHERE "name" = 'Frank Herbert')),
(40, (SELECT "id" FROM "authors" WHERE "name" = 'Frank Herbert')),
(41, (SELECT "id" FROM "authors" WHERE "name" = 'Frank Herbert')),
(42, (SELECT "id" FROM "authors" WHERE "name" = 'Daniel Keyes')),
(43, (SELECT "id" FROM "authors" WHERE "name" = 'Osamu Dazai')),
(44, (SELECT "id" FROM "authors" WHERE "name" = 'Liev Tolstói')),
(45, (SELECT "id" FROM "authors" WHERE "name" = 'Steven Pressfield')),
(46, (SELECT "id" FROM "authors" WHERE "name" = 'Clarice Lispector')),
(47, (SELECT "id" FROM "authors" WHERE "name" = 'Ariano Suassuna')),
(48, (SELECT "id" FROM "authors" WHERE "name" = 'Arthur Conan Doyle')),
(49, (SELECT "id" FROM "authors" WHERE "name" = 'Arthur Conan Doyle')),
(50, (SELECT "id" FROM "authors" WHERE "name" = 'Agatha Christie')),
(52, (SELECT "id" FROM "authors" WHERE "name" = 'Fernando Sabino')),
(53, (SELECT "id" FROM "authors" WHERE "name" = 'Jeff Kinney')),
(54, (SELECT "id" FROM "authors" WHERE "name" = 'John Green')),
(55, (SELECT "id" FROM "authors" WHERE "name" = 'Heather Morris')),
(56, (SELECT "id" FROM "authors" WHERE "name" = 'Shawn Kittelsen')),
(57, (SELECT "id" FROM "authors" WHERE "name" = 'Shawn Kittelsen')),
(58, (SELECT "id" FROM "authors" WHERE "name" = 'Anne Holt')),
(59, (SELECT "id" FROM "authors" WHERE "name" = 'Dan Brown'));

---- Inserting relationship between books and genres
INSERT INTO "book_genres" ("book_id", "genre_id")
VALUES
(1, (SELECT "id" FROM "genres" WHERE "genre" = 'Fantasia')),
(1, (SELECT "id" FROM "genres" WHERE "genre" = 'Aventura')),
(2, (SELECT "id" FROM "genres" WHERE "genre" = 'Fantasia')),
(2, (SELECT "id" FROM "genres" WHERE "genre" = 'Aventura')),
(3, (SELECT "id" FROM "genres" WHERE "genre" = 'Fantasia')),
(3, (SELECT "id" FROM "genres" WHERE "genre" = 'Aventura')),
(4, (SELECT "id" FROM "genres" WHERE "genre" = 'Fantasia')),
(4, (SELECT "id" FROM "genres" WHERE "genre" = 'Aventura')),
(5, (SELECT "id" FROM "genres" WHERE "genre" = 'Fantasia')),
(5, (SELECT "id" FROM "genres" WHERE "genre" = 'Aventura')),
(6, (SELECT "id" FROM "genres" WHERE "genre" = 'Fantasia')),
(6, (SELECT "id" FROM "genres" WHERE "genre" = 'Aventura')),
(7, (SELECT "id" FROM "genres" WHERE "genre" = 'Fantasia')),
(7, (SELECT "id" FROM "genres" WHERE "genre" = 'Aventura')),
(8, (SELECT "id" FROM "genres" WHERE "genre" = 'Ficção')),
(8, (SELECT "id" FROM "genres" WHERE "genre" = 'Literatura Clássica')),
(9, (SELECT "id" FROM "genres" WHERE "genre" = 'Romance Gótico')),
(9, (SELECT "id" FROM "genres" WHERE "genre" = 'Mistério')),
(10, (SELECT "id" FROM "genres" WHERE "genre" = 'Ficção Histórica')),
(10, (SELECT "id" FROM "genres" WHERE "genre" = 'Biografia')),
(11, (SELECT "id" FROM "genres" WHERE "genre" = 'Fantasia')),
(11, (SELECT "id" FROM "genres" WHERE "genre" = 'Aventura')),
(51, (SELECT "id" FROM "genres" WHERE "genre" = 'Literatura Clássica')),
(51, (SELECT "id" FROM "genres" WHERE "genre" = 'Romance')),
(12, (SELECT "id" FROM "genres" WHERE "genre" = 'Mitologia')),
(12, (SELECT "id" FROM "genres" WHERE "genre" = 'Fantasia')),
(60, (SELECT "id" FROM "genres" WHERE "genre" = 'Mitologia')),
(60, (SELECT "id" FROM "genres" WHERE "genre" = 'Fantasia')),
(13, (SELECT "id" FROM "genres" WHERE "genre" = 'Poesia')),
(14, (SELECT "id" FROM "genres" WHERE "genre" = 'Filosofia')),
(14, (SELECT "id" FROM "genres" WHERE "genre" = 'Estratégia')),
(20, (SELECT "id" FROM "genres" WHERE "genre" = 'Filosofia')),
(20, (SELECT "id" FROM "genres" WHERE "genre" = 'Literatura Clássica')),
(15, (SELECT "id" FROM "genres" WHERE "genre" = 'Ficção Contemporânea')),
(16, (SELECT "id" FROM "genres" WHERE "genre" = 'Fantasia')),
(16, (SELECT "id" FROM "genres" WHERE "genre" = 'Ficção Épica')),
(17, (SELECT "id" FROM "genres" WHERE "genre" = 'Mitologia')),
(18, (SELECT "id" FROM "genres" WHERE "genre" = 'Fantasia Sombria')),
(18, (SELECT "id" FROM "genres" WHERE "genre" = 'Terror')),
(19, (SELECT "id" FROM "genres" WHERE "genre" = 'Fantasia Urbana')),
(19, (SELECT "id" FROM "genres" WHERE "genre" = 'Aventura')),
(22, (SELECT "id" FROM "genres" WHERE "genre" = 'Distopia')),
(22, (SELECT "id" FROM "genres" WHERE "genre" = 'Suspense')),
(23, (SELECT "id" FROM "genres" WHERE "genre" = 'Mistério')),
(24, (SELECT "id" FROM "genres" WHERE "genre" = 'Romance')),
(24, (SELECT "id" FROM "genres" WHERE "genre" = 'Comédia Romântica')),
(25, (SELECT "id" FROM "genres" WHERE "genre" = 'Chick-lit')),
(25, (SELECT "id" FROM "genres" WHERE "genre" = 'Romance')),
(26, (SELECT "id" FROM "genres" WHERE "genre" = 'Fantasia Sombria')),
(26, (SELECT "id" FROM "genres" WHERE "genre" = 'Terror')),
(27, (SELECT "id" FROM "genres" WHERE "genre" = 'Ficção Contemporânea')),
(28, (SELECT "id" FROM "genres" WHERE "genre" = 'Filosofia')),
(29, (SELECT "id" FROM "genres" WHERE "genre" = 'Ficção Contemporânea')),
(30, (SELECT "id" FROM "genres" WHERE "genre" = 'Ficção Científica')),
(31, (SELECT "id" FROM "genres" WHERE "genre" = 'Ação')),
(31, (SELECT "id" FROM "genres" WHERE "genre" = 'Heróis')),
(32, (SELECT "id" FROM "genres" WHERE "genre" = 'Suspense')),
(32, (SELECT "id" FROM "genres" WHERE "genre" = 'Terror')),
(33, (SELECT "id" FROM "genres" WHERE "genre" = 'Graphic Novel')),
(33, (SELECT "id" FROM "genres" WHERE "genre" = 'Distopia')),
(34, (SELECT "id" FROM "genres" WHERE "genre" = 'Graphic Novel')),
(34, (SELECT "id" FROM "genres" WHERE "genre" = 'Fantasia')),
(35, (SELECT "id" FROM "genres" WHERE "genre" = 'Mistério')),
(36, (SELECT "id" FROM "genres" WHERE "genre" = 'Ficção Científica')),
(37, (SELECT "id" FROM "genres" WHERE "genre" = 'Biografia')),
(38, (SELECT "id" FROM "genres" WHERE "genre" = 'Ficção Contemporânea')),
(39, (SELECT "id" FROM "genres" WHERE "genre" = 'Ficção Científica')),
(40, (SELECT "id" FROM "genres" WHERE "genre" = 'Ficção Científica')),
(41, (SELECT "id" FROM "genres" WHERE "genre" = 'Ficção Científica')),
(42, (SELECT "id" FROM "genres" WHERE "genre" = 'Ficção Científica')),
(43, (SELECT "id" FROM "genres" WHERE "genre" = 'Literatura Clássica')),
(44, (SELECT "id" FROM "genres" WHERE "genre" = 'Literatura Clássica')),
(45, (SELECT "id" FROM "genres" WHERE "genre" = 'Romance')),
(45, (SELECT "id" FROM "genres" WHERE "genre" = 'Épico')),
(46, (SELECT "id" FROM "genres" WHERE "genre" = 'Ficção Contemporânea')),
(47, (SELECT "id" FROM "genres" WHERE "genre" = 'Comédia')),
(21, (SELECT "id" FROM "genres" WHERE "genre" = 'Romance')),
(48, (SELECT "id" FROM "genres" WHERE "genre" = 'Mistério')),
(49, (SELECT "id" FROM "genres" WHERE "genre" = 'Mistério')),
(50, (SELECT "id" FROM "genres" WHERE "genre" = 'Mistério')),
(52, (SELECT "id" FROM "genres" WHERE "genre" = 'Ficção Contemporânea')),
(53, (SELECT "id" FROM "genres" WHERE "genre" = 'Infantojuvenil')),
(54, (SELECT "id" FROM "genres" WHERE "genre" = 'Ficção Jovem-adulto')),
(55, (SELECT "id" FROM "genres" WHERE "genre" = 'Ficção Histórica')),
(56, (SELECT "id" FROM "genres" WHERE "genre" = 'Graphic Novel')),
(57, (SELECT "id" FROM "genres" WHERE "genre" = 'Graphic Novel')),
(58, (SELECT "id" FROM "genres" WHERE "genre" = 'Mistério')),
(59, (SELECT "id" FROM "genres" WHERE "genre" = 'Suspense'));

---- Inserting ratings
INSERT INTO "ratings" ("book_id", "stars", "review", "finished_date")
VALUES
(1, 5, 'Muito bom, amei a construção do mundo', '2021-01-12'),
(3, 5, 'Uma história diferente e bem interessante. Mostra partes do mundo de Nárnia que nunca vi', '2021-01-23'),
(12, 5, 'Meu livro favorito, histórias fantásticas', '2019-05-19'),
(2, 4, 'Eu gostei, só não dei 5 estrelas porque prefiro o filme', '2021-01-17'),
(5, 5, 'Melhor que o livro, um dos melhores livros da saga', '2021-04-06'),
(6, 5, 'Muito bom, mostra uma Nárnia após alguns anos de Príncipe Caspian, uma outra realidade', '2021-04-29'),
(52, 3.5, 'Interessante, foi bem melhor do que eu esperava mas não foi maior porque li pra escola', '2021-03-31'),
(55, 5, 'Um livro um pouco diferente dos outros e muito bom, adorei', '2021-05-14'),
(4, 3.5, 'Minha maior crítica é que não tem as cenas de batalhas do filme, são as partes que mais gosto', '2021-02-18'),
(7, 4, 'Só não dei 5 estrelas porque recebi spoiler do final', '2021-05-10'),
(25, 4, 'Gostosinho, um romance bem leve', '2021-06-04'),
(26, 3.5, 'Coloquei muita expectativa e não foi lá essas coisas', '2021-11-20'),
(8, 4, 'Bem melancólico', '2021-08-17'),
(43, 3.5, 'Pensa num cara que sofreu, mas sofreu muito, muito mesmo', '2023-11-27'),
(44, 2.5, 'Muito chato', '2024-01-28'),
(21, 4.5, 'Gostei, bem tranquilo', '2024-03-03'),
(29, 5, 'Muito bom, um livro super calmo e tranquilo', '2024-06-29'),
(46, 3, 'Chato, dei 3 estrelas porque tem piores', '2022-05-16'),
(24, 4, 'É legal, tirando as partes estranhas', '2022-05-05'),
(47, 5, 'Um dos melhores livros que li', '2022-02-05'),
(54, 3.5, 'É legalzinho', '2021-11-24'),
(19, 4.5, 'Muito bom, Neil Gaiman escreve muito bem', '2021-07-03'),
(27, 4, 'Tem cenas que seriam maravilhosas se tivessem no filme', '2021-08-09'),
(22, 5, 'Muito bom, bem envolvente e um plot twist maravilhoso', '2022-01-12'),
(60, 4, 'Bom, realmente melhor que o filme', '2022-04-22'),
(20, 5, 'Definitivamente não é pra crianças', '2022-08-25'),
(42, 5, 'Simplesmente incrível, único livro que chorei', '2023-04-20'),
(39, 5, 'I AM PAUL MUAD''DIB ATREIDES, DUKE OF ARRAKIS', '2024-02-27'),
(40, 5, 'Uma ótima finalização de Paul Atreides', '2024-04-19'),
(51, 4.5, 'Não teve um dia feliz na vida dessas pessoas', '2024-08-23');

-- Find all books that have missing informations
SELECT "title", "authors", "genres" FROM "my_books"
WHERE "authors" LIKE '%No data%' OR "genres" LIKE '%No data%'
ORDER BY "authors", "genres";

-- Inserting auhtors and genres that are missing
INSERT INTO "authors" ("name")
VALUES
("Guilhermo del Toro"),
("Cornelia Funke"),
("Frank Herbert"),
("Kazuo Ishiguro"),
("Fernando Sabino"),
("Liev Tolstói"),
("Anne Holt"),
("John Green"),
("Gaston Leroux");

INSERT INTO "genres" ("genre")
VALUES
("Graphic Novel"),
("Suspense"),
("Infantojuvenil"),
("Distopia"),
("Comédia Romântica"),
("Terror"),
("Ficção Jovem-adulto"),
("Ação"),
("Luta"),
("Heróis"),
("Épico");

-- Updating books that have missing information
UPDATE "book_authors"
SET "author_id" = (SELECT "id" FROM "authors" WHERE "name" = 'Frank Herbert')
WHERE "book_id" = (SELECT "id" FROM "books" WHERE "title" = 'Duna');

UPDATE "book_authors"
SET "author_id" = (SELECT "id" FROM "authors" WHERE "name" = 'Frank Herbert')
WHERE "book_id" = (SELECT "id" FROM "books" WHERE "title" = 'Messias de Duna');

UPDATE "book_authors"
SET "author_id" = (SELECT "id" FROM "authors" WHERE "name" = 'Frank Herbert')
WHERE "book_id" = (SELECT "id" FROM "books" WHERE "title" = 'Filhos de Duna');

UPDATE "book_authors"
SET "author_id" = (SELECT "id" FROM "authors" WHERE "name" = 'Kazuo Ishiguro')
WHERE "book_id" = (SELECT "id" FROM "books" WHERE "title" = 'Não Me Abandone Jamais');

UPDATE "book_authors"
SET "author_id" = (SELECT "id" FROM "authors" WHERE "name" = 'Fernando Sabino')
WHERE "book_id" = (SELECT "id" FROM "books" WHERE "title" = 'Amor de Capitu');

UPDATE "book_authors"
SET "author_id" = (SELECT "id" FROM "authors" WHERE "name" = 'Liev Tolstói')
WHERE "book_id" = (SELECT "id" FROM "books" WHERE "title" = 'A Morte de Ivan Ilitch');

UPDATE "book_authors"
SET "author_id" = (SELECT "id" FROM "authors" WHERE "name" = 'Anne Holt')
WHERE "book_id" = (SELECT "id" FROM "books" WHERE "title" = '1222');

UPDATE "book_authors"
SET "author_id" = (SELECT "id" FROM "authors" WHERE "name" = 'John Green')
WHERE "book_id" = (SELECT "id" FROM "books" WHERE "title" = 'Cidades de Papel');

UPDATE "book_authors"
SET "author_id" = (SELECT "id" FROM "authors" WHERE "name" = 'Gaston Leroux')
WHERE "book_id" = (SELECT "id" FROM "books" WHERE "title" = 'O Fantasma da Ópera');


BEGIN TRANSACTION;
DELETE FROM "book_authors" WHERE "book_id" = (SELECT "id" FROM "books" WHERE "title" = 'O Labirinto do Fauno');
INSERT INTO "book_authors" ("book_id", "author_id") VALUES
((SELECT "id" FROM "books" WHERE "title" = 'O Labirinto do Fauno'), (SELECT "id" FROM "authors" WHERE "name" = 'Guilhermo del Toro')),
((SELECT "id" FROM "books" WHERE "title" = 'O Labirinto do Fauno'), (SELECT "id" FROM "authors" WHERE "name" = 'Cornelia Funke'));
COMMIT;

-- updating book genres that are missing
BEGIN TRANSACTION;
DELETE FROM "book_genres" WHERE "book_id" = (SELECT "id" FROM "books" WHERE "title" = 'V de Vingança');
INSERT INTO "book_genres" ("book_id", "genre_id") VALUES
((SELECT "id" FROM "books" WHERE "title" = 'V de Vingança'), (SELECT "id" FROM "genres" WHERE "genre" = 'Graphic Novel')),
((SELECT "id" FROM "books" WHERE "title" = 'V de Vingança'), (SELECT "id" FROM "genres" WHERE "genre" = 'Distopia'));
COMMIT;

UPDATE "book_genres"
SET "genre_id" = (SELECT "id" FROM "genres" WHERE "genre" = 'Suspense')
WHERE "book_id" = (SELECT "id" FROM "books" WHERE "title" = 'Anjos e Demônios');

UPDATE "book_genres"
SET "genre_id" = (SELECT "id" FROM "genres" WHERE "genre" = 'Terror')
WHERE "book_id" = (SELECT "id" FROM "books" WHERE "title" = 'O Labirinto do Fauno') AND "genre_id" = 0;

UPDATE "book_genres"
SET "genre_id" = (SELECT "id" FROM "genres" WHERE "genre" = 'Graphic Novel')
WHERE "book_id" = (SELECT "id" FROM "books" WHERE "title" = 'Contos Fabulosos') AND "genre_id" = 0;

UPDATE "book_genres"
SET "genre_id" = (SELECT "id" FROM "genres" WHERE "genre" = 'Infantojuvenil')
WHERE "book_id" = (SELECT "id" FROM "books" WHERE "title" = 'Diário de um Banana: Caindo na Estrada');

UPDATE "book_genres"
SET "genre_id" = (SELECT "id" FROM "genres" WHERE "genre" = 'Ficção Jovem-adulto')
WHERE "book_id" = (SELECT "id" FROM "books" WHERE "title" = 'Cidades de Papel');

BEGIN TRANSACTION;
DELETE FROM "book_genres" WHERE "book_id" = (SELECT "id" FROM "books" WHERE "title" = 'Battle Royale');
INSERT INTO "book_genres" ("book_id", "genre_id") VALUES
((SELECT "id" FROM "books" WHERE "title" = 'Battle Royale'), (SELECT "id" FROM "genres" WHERE "genre" = 'Distopia')),
((SELECT "id" FROM "books" WHERE "title" = 'Battle Royale'), (SELECT "id" FROM "genres" WHERE "genre" = 'Suspense'));
COMMIT;

UPDATE "book_genres"
SET "genre_id" = (SELECT "id" FROM "genres" WHERE "genre" = 'Comédia Romântica')
WHERE "book_id" = (SELECT "id" FROM "books" WHERE "title" = 'O Clube do Livro dos Homens') AND "genre_id" = 0;

UPDATE "book_genres"
SET "genre_id" = (SELECT "id" FROM "genres" WHERE "genre" = 'Terror')
WHERE "book_id" = (SELECT "id" FROM "books" WHERE "title" = 'Coraline') AND "genre_id" = 0;

BEGIN TRANSACTION;
DELETE FROM "book_genres" WHERE "book_id" = (SELECT "id" FROM "books" WHERE "title" = 'Mortal Kombat X Volume 1: Laços de Sangue');
INSERT INTO "book_genres" ("book_id", "genre_id") VALUES
((SELECT "id" FROM "books" WHERE "title" = 'Mortal Kombat X Volume 1: Laços de Sangue'), (SELECT "id" FROM "genres" WHERE "genre" = 'Graphic Novel')),
((SELECT "id" FROM "books" WHERE "title" = 'Mortal Kombat X Volume 1: Laços de Sangue'), (SELECT "id" FROM "genres" WHERE "genre" = 'Ação'));
COMMIT;

BEGIN TRANSACTION;
DELETE FROM "book_genres" WHERE "book_id" = (SELECT "id" FROM "books" WHERE "title" = 'Mortal Kombat X Volume 2: Deuses de Sangue');
INSERT INTO "book_genres" ("book_id", "genre_id") VALUES
((SELECT "id" FROM "books" WHERE "title" = 'Mortal Kombat X Volume 2: Deuses de Sangue'), (SELECT "id" FROM "genres" WHERE "genre" = 'Graphic Novel')),
((SELECT "id" FROM "books" WHERE "title" = 'Mortal Kombat X Volume 2: Deuses de Sangue'), (SELECT "id" FROM "genres" WHERE "genre" = 'Ação'));
COMMIT;

BEGIN TRANSACTION;
DELETE FROM "book_genres" WHERE "book_id" = (SELECT "id" FROM "books" WHERE "title" = 'Amigo Imaginário');
INSERT INTO "book_genres" ("book_id", "genre_id") VALUES
((SELECT "id" FROM "books" WHERE "title" = 'Amigo Imaginário'), (SELECT "id" FROM "genres" WHERE "genre" = 'Suspense')),
((SELECT "id" FROM "books" WHERE "title" = 'Amigo Imaginário'), (SELECT "id" FROM "genres" WHERE "genre" = 'Terror'));
COMMIT;

UPDATE "book_genres"
SET "genre_id" = (SELECT "id" FROM "genres" WHERE "genre" = 'Épico')
WHERE "book_id" = (SELECT "id" FROM "books" WHERE "title" = 'A Última Guerreira') AND "genre_id" = 0;

BEGIN TRANSACTION;
DELETE FROM "book_genres" WHERE "book_id" = (SELECT "id" FROM "books" WHERE "title" = 'Guerra Civil');
INSERT INTO "book_genres" ("book_id", "genre_id") VALUES
((SELECT "id" FROM "books" WHERE "title" = 'Guerra Civil'), (SELECT "id" FROM "genres" WHERE "genre" = 'Ação')),
((SELECT "id" FROM "books" WHERE "title" = 'Guerra Civil'), (SELECT "id" FROM "genres" WHERE "genre" = 'Heróis'));
COMMIT;

-- Find all books that haven't been read
SELECT * FROM "to_be_read";

--- Find all books by Neil Gaiman
SELECT * FROM "my_books"
WHERE "authors" LIKE '%Neil Gaiman%';

-- Find the books that have been read ordered by date
SELECT * FROM "my_reviews"
ORDER BY "finished_date";

-- Find all books that have been rated with 4 or higher
SELECT * FROM "my_reviews"
WHERE "stars" >= 4
ORDER BY "stars" DESC;

-- Find all books that have been rated lower than 4
SELECT * FROM "my_reviews"
WHERE "stars" < 4
ORDER BY "stars" DESC;
