-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 29/06/2023 às 16:08
-- Versão do servidor: 10.3.38-MariaDB-0ubuntu0.20.04.1
-- Versão do PHP: 7.4.3-4ubuntu2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `celso_livraria`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `Autor`
--

CREATE TABLE `Autor` (
  `Cod_Autor` int(11) NOT NULL,
  `NomeArt` varchar(100) NOT NULL,
  `NomeReal` varchar(100) NOT NULL,
  `DataNascimento` date DEFAULT NULL,
  `Biografia` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `Autor`
--

INSERT INTO `Autor` (`Cod_Autor`, `NomeArt`, `NomeReal`, `DataNascimento`, `Biografia`) VALUES
(1, 'Chaves', 'Roberto Gómez Bolaños', '1929-02-21', 'foi um premiado ator, cantor, comediante, compositor, desenhista, diretor, dramaturgo, engenheiro, escritor, filantropo, humorista, pintor, poeta, produtor de televisão, publicitário e roteirista mexicano.'),
(2, 'Sr. Madruga', 'Don Ramón', '1923-09-02', 'tem como filha uma garotinha chamada Chiquinha (Maria Antonieta de las Nieves), cuja mãe morreu no seu nascimento.É quase sempre injustamente castigado com bofetadas no rosto pela vizinha Dona Florinda.'),
(3, 'Quico', 'Carlos Villagrán', '1944-12-01', 'Começou sua carreira aos 23 anos, trabalhando como fotógrafo de um jornal mexicano chamado Heraldo. Atuou como um menino de bochechas grandes em uma peça chamada Loquibambia. No início, Carlos conciliava a profissão de ator com a de fotógrafo.'),
(7, 'Chiquinha', 'María Francisca Madruga', '1963-05-29', 'Sua mãe morreu após o parto, o que a deixou apenas com o pai, Seu Madruga. É uma garota de oito anos de idade, sardenta, baixinha, um pouco manipuladora, muito astuta e sapeca, porém, sem muita capacidade intelectual para a escola.'),
(9, 'Dona Florinda', 'Florinda Corcuera y Villalpando', '2017-06-21', 'Se considera social, econômica e moralmente superior aos habitantes da vila. É extremamente arrogante e ardilosa com seus vizinhos, principalmente com o Seu Madruga.'),
(10, 'Senhor Barriga', 'Édgar Vivar', '1944-12-28', 'Iniciou sua carreira artística em 1964 e participou de cerca de 40 obras, que compreenderam autores vanguardistas e mexicanos; mas em 1970, quando realizava rádio-teatros, foi chamado por Roberto Gómez Bolaños para participar de seus programas cômicos. '),
(12, 'Professor Girafales', 'Rubén Aguirre', '1934-06-15', 'foi um ator cômico mexicano trabalhou no Chaves, Lucas Pirado, amigo do Pancada Bonaparte, e o Sargento Refúgio, namorado da Marujinha, no Clube do Chaves. Era casado com Consuelo de los Reyes'),
(13, 'Chapolin Colorado', 'Roberto Gómez Bolaños', '1929-02-21', 'Este super herói raro, seus super poderes e qualidades são diferentes de os dos outros heróis, mas consegue superar as suas deficiências e superar seus problemas, aí reside a grandeza do ser humano. Ele usa um uniforme vermelho cobrindo todo o corpo.'),
(14, 'Dona Clotilde', 'Angelines Fernández', '1922-07-09', ' mais conhecida com o apelido de \"A Bruxa do 71\" (em referência ao número de seu departamento), é uma personagem da série Chaves.'),
(15, 'Justiceiro Mascarado', 'Desconhecido', '1934-06-15', 'Um famoso lutador mascarado e ator de vários filmes de televisão. Chaves e Seu Barriga são seus maiores fãs. Ele atua em vários filmes de luta, mas também em filmes de terror. Ele é uma paródia ao lutador El Santo.'),
(16, 'Sri Prem Baba', 'Sri Prem Baba', NULL, NULL),
(17, 'Hal Elrod', 'Hal Elrod', '2016-05-06', 'Está em uma missão para elevar a consciência da humanidade, uma manhã de cada vez. Era um dos palestrantes mais bem avaliados nos Estados Unidos.'),
(18, 'Paulo Vieira', 'Paulo Vieira', NULL, NULL),
(19, 'Padre Reginaldo Manzotti', 'Reginaldo Manzotti', '1969-04-25', 'É pároco do Santuário Nossa Senhora de Guadalupe, em Curitiba - PR. Coordena a associação Evangelizar é Preciso, com milhares de membros em todo o país.'),
(20, 'Dan Brown', 'Daniel Gerhard Brown', '1964-06-22', 'Escritor norte-americano. Seu primeiro livro, Fortaleza Digital, foi publicado em 1998 nos Estados Unidos. A este seguiram-se Ponto de Impacto e Anjos e Demônios, a primeira aventura protagonizada pelo simbologista de Harvard, Robert Langdon.'),
(21, 'Harold Robbins', 'Harold Robbins', '1916-05-21', 'Passou a infância num orfanato. Frequentou a Escola Secundária George Washington e, depois de deixar a escola, começou a trabalhar em vários empregos. Robbins começou aos 20 anos vender açúcar para o comércio atacadista. '),
(22, 'Lawrence Sanders', 'Lawrence Sanders', '1920-03-15', 'Escritor americano seu sucesso brotou logo com a primeira obra: Dossier Anderson,  Além de O Primeiro Pecado Mortal escreveu também, entre outros, os da saga do detective McNally, como O Plano de McNally, A Prova de McNally e O Castigo de McNally.'),
(23, 'Aiden Thomas', 'Aiden Thomas', NULL, 'Recebeu seu MFA – Master of Fine Arts – em Escrita Criativa pelo Mills College. Nascido na Califórnia, Aiden, durante sua juventude, costumava ir com frequência ao cemitério de Mountain View, como se fosse sua segunda casa. '),
(24, 'Clarice Lispector', 'Chaya Pinkhasivna Lispector', '1920-12-10', 'Foi uma escritora e jornalista brasileira nascida na Ucrânia. Autora de romances, contos, e ensaios, é considerada uma das escritoras brasileiras mais importantes do século XX.'),
(25, 'Rick Riordan', 'Richard Russell Riordan Jr', '1964-06-05', 'É um escritor norte-americano, mais conhecido por escrever a série Percy Jackson e Os Olimpianos de 2005 a 2009. Ele também escreveu a série adulta de mistérios Tres Navarre em 1997.'),
(26, 'Danielle Paige', 'Danielle Paige', NULL, 'É graduada na Universidade de Columbia e autora da série Dorothy Must Die. Antes de contribuir para a literatura jovem adulta, trabalhou na indústria televisiva, onde recebeu um Writers Guild of America Award e foi nomeada para vários Daytime Emmys.'),
(27, 'Sara Sheppard', 'Sara Catherine Shepard', '1977-04-08', 'É uma autora e escritora norte-americana. Ela é conhecida por escrever as séries literárias Pretty Little Liars e The Lying Game, as quais tornaram-se séries televisivas do canal Freeform.'),
(28, 'Amie Kaufman', 'Amie Kaufman', NULL, 'É uma autora australiana de ficção científica e fantasia para jovens adultos best-seller do New York Times e best-seller internacional.'),
(29, 'Veronica Roth', 'Veronica Roth', '1988-08-19', 'É conhecida mundialmente por seus livros da aclamada saga Divergente. Os direitos cinematográficos da trilogia Divergente foram vendidos em abril de 2012, e a adaptação do primeiro livro chegou aos cinemas em 21 de março de 2014.'),
(30, 'Lewis Carroll', 'Charles Lutwidge Dodgson', '1832-01-27', 'Foi um romancista, contista, fabulista, poeta, desenhista, fotógrafo, matemático e reverendo anglicano britânico. Lecionou matemática no Christ College, em Oxford.'),
(31, 'Padre Gean Medeiros', 'Gean Carlos Medeiros de Oliveira', '1977-11-15', 'Formado em filosofia e teologia, além de cursos técnicos na área de comunicação (rádio e TV). Em 2000 ingressou no Seminário, Diocese de Campo Limpo e em dezembro de 2007 ordenou- se padre.'),
(32, 'Thomas Merton', 'Thomas Merton', '1915-01-31', 'Foi um escritor católico do século XX. Monge trapista da Abadia de Gethsemani, Kentucky, foi um poeta, ativista social e estudioso de religiões comparadas. Escreveu mais de setenta livros, a maioria sobre espiritualidade, e várias biografias.'),
(33, 'Padre Antonio José', 'Antônio José', '1980-01-02', 'Padre católico escritor de livros.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `Editora`
--

CREATE TABLE `Editora` (
  `Cod_Editora` int(11) NOT NULL,
  `Nome` varchar(40) NOT NULL,
  `Endereco` varchar(100) DEFAULT NULL,
  `Telefone` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `Editora`
--

INSERT INTO `Editora` (`Cod_Editora`, `Nome`, `Endereco`, `Telefone`) VALUES
(1, 'Arqueiro', 'Rua Funchal, 00538, Vila Olímpia, São Paulo - SP, CEP: 04551-060', '(11) 2412-8320'),
(2, 'Record', 'Rua Argentina, 171 - São Cristóvão Rio de Janeiro/RJ 20921-380.', '(21) 2585-2000'),
(3, 'Editora Gente', 'Rua Wizard, 305 – sala 53 – Vila Madalena - São Paulo - SP - CEP: 05434-080', '(11) 3670-2500'),
(4, 'Berkley Books', 'Reino Unido', ''),
(5, 'Penguin Books', 'Cidade de Westminster, Londres', '(20)71393000'),
(6, 'Petra Editorial Ltda', 'Rua Anseriz, 27 04618-050 - Campo Belo - São Paulo - SP', '11 3093.3300'),
(7, 'Elsevier', 'R Sete De Setembro, 111 - Centro - Rio De Janeiro, Rio de Janeiro', '251 39709300'),
(8, 'Editora Galera Record', 'Rio de Janeiro/RJ', '(21) 3349-5771'),
(9, 'Editora Rocco', 'Rio de Janeiro/RJ', '(21) 3525-2000'),
(10, 'Editora Intrínseca Ltda', 'Rio de Janeiro - RJ', '(21) 3206-7400'),
(11, 'Editora Darkside Books Ltda', 'Av. Portugal, 46 - Galpão 1 - Itaqui - Itapevi - SP', '(11) 3550-3030'),
(12, 'Feiwel & Friends', 'Flatiron Building, 175 5th Ave, New York, NY 10010, Estados Unidos', '1 212-674-5151'),
(13, 'Pan Macmillan', '6 Briset St, London EC1M 5NR, Reino Unido', '44 20 70385000'),
(14, 'Open Road Integrated Media', 'Nova Iorque, Nova York, EUA', '1(212)691-0900');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ItemPedido`
--

CREATE TABLE `ItemPedido` (
  `ISSN` int(11) NOT NULL DEFAULT 0,
  `Quantidade` int(11) DEFAULT NULL,
  `cod_pedido` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `ItemPedido`
--

INSERT INTO `ItemPedido` (`ISSN`, `Quantidade`, `cod_pedido`) VALUES
(1, 1, 1),
(1, 2, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `Livro`
--

CREATE TABLE `Livro` (
  `ISSN` int(11) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `Preco` decimal(10,2) DEFAULT NULL,
  `Edicao` int(11) DEFAULT NULL,
  `Quantidade` int(11) DEFAULT NULL,
  `Lingua` varchar(40) DEFAULT NULL,
  `codAutor` int(11) NOT NULL,
  `CodEditora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `Livro`
--

INSERT INTO `Livro` (`ISSN`, `Nome`, `Preco`, `Edicao`, `Quantidade`, `Lingua`, `codAutor`, `CodEditora`) VALUES
(1, 'Propósito', '17.90', 1, 15, 'Português', 16, 1),
(2, 'O Milagre Da Manhã', '23.90', 1, 20, 'Português', 17, 1),
(3, 'O Poder da Ação', '15.90', 23, 30, 'Português', 18, 1),
(4, 'Combate espiritual', '24.90', 1, 10, 'Português', 19, 6),
(5, 'Feridas da Alma', '22.90', 1, 25, 'Português', 19, 6),
(6, 'Box Sinais do Sagrado', '22.90', 1, 10, 'Português', 19, 6),
(7, 'O Poder da Autorresponsabilidade', '16.50', 1, 10, 'Português', 18, 1),
(8, 'Origem', '49.90', 1, 50, 'Português e Inglês', 20, 1),
(10, 'Anjos e Demônios', '49.90', 5, 50, 'Português e Inglês', 20, 1),
(11, 'O Código Da Vinci', '29.90', 5, 35, 'Português e Inglês', 20, 1),
(12, 'O Símbolo Perdido', '29.90', 1, 35, 'Português', 20, 1),
(13, 'Goodbye, Janette', '20.50', 1, 30, 'Português e Inglês', 21, 1),
(14, 'Os Saqueadores', '39.90', 1, 20, 'Português', 21, 1),
(15, '79 Park Avenue', '49.90', 19, 30, 'Português', 21, 1),
(16, 'A Estatueta Fatal', '29.90', 7, 15, 'Português', 22, 1),
(17, 'A Prova de McNally', '33.50', 4, 15, 'Português', 22, 1),
(18, 'Bênçãos Roubadas', '47.30', 3, 12, 'Português', 22, 1),
(19, 'Dossier Anderson', '38.00', 6, 10, 'Português', 22, 1),
(20, 'O Oitavo Mandamento', '37.90', 5, 10, 'Português', 22, 1),
(21, 'A Torre de Nero', '34.95', 1, 12, 'Português', 25, 10),
(22, 'No Rastro Da Neve', '79.90', 2, 11, 'Português', 26, 9),
(23, 'Como Nasceram As Estrelas', '39.90', 2, 11, 'Português', 24, 9),
(24, 'Os Desaparecidos', '69.90', 2, 9, 'Português', 27, 9),
(25, 'Adeus, Aurora', '74.90', 4, 8, 'Português e inglês', 28, 9),
(26, 'Crave A Marca', '79.90', 2, 8, 'Português e inglês', 29, 9),
(27, 'Alice Através Do Espelho (Limited Edition)', '69.90', 1, 12, 'Português e inglês', 30, 11),
(28, 'Corações Curados para Amar', '19.90', 4, 15, 'Português', 31, 6),
(29, 'Pílulas do Saber', '19.90', 6, 20, 'Português', 19, 6),
(30, 'Homem algum é uma ilha', '44.90', 3, 15, 'Português e espanhol', 32, 6),
(31, 'Sementes entre Lágrimas', '24.90', 3, 14, 'Português', 33, 6),
(32, 'Combate Espiritual', '24.90', 6, 12, 'Português', 19, 6),
(33, 'O Desafio Dos Semideuses (Vol. 1 Portadores Do Sol)', '64.90', 4, 10, 'Português e inglês', 23, 8),
(34, 'The Sunbearer Trials', '48.39', 1, 8, 'Inglês', 23, 12),
(35, 'Lost In The Never Woods', '49.19', 2, 12, 'Inglês', 23, 13),
(36, 'A Mulher que matou os peixes', '59.90', 3, 9, 'Português', 24, 9),
(37, 'The Seventh Commandment', '38.29', 7, 10, 'Inglês', 22, 14),
(38, 'The First Deadly Sin', '38.29', 3, 12, 'Inglês', 22, 14),
(39, 'The Timothy Files', '38.29', 3, 11, 'Inglês', 22, 14),
(40, 'Mcnally\'S Folly', '9.41', 2, 11, 'Inglês', 22, 14);

-- --------------------------------------------------------

--
-- Estrutura para tabela `Pedido`
--

CREATE TABLE `Pedido` (
  `Cod_Pedido` int(11) NOT NULL,
  `FormaPagamento` varchar(40) DEFAULT NULL,
  `Confirmacao` tinyint(1) DEFAULT NULL,
  `Ped_Internet` tinyint(1) DEFAULT NULL,
  `Cod_Solicitante` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `Pedido`
--

INSERT INTO `Pedido` (`Cod_Pedido`, `FormaPagamento`, `Confirmacao`, `Ped_Internet`, `Cod_Solicitante`) VALUES
(1, '05 parcelas', 1, 1, 1),
(2, '02 parcelas', 1, 0, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `Solicitante`
--

CREATE TABLE `Solicitante` (
  `Cod_Solicitante` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Endereco` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `Solicitante`
--

INSERT INTO `Solicitante` (`Cod_Solicitante`, `Nome`, `Endereco`) VALUES
(1, 'Chaves', 'Porto União - SC'),
(2, 'Sr. Madruga', 'Porto União - SC'),
(3, 'Quico', 'Porto Vitória - PR'),
(4, 'Chiquinha', 'Porto Vitória - PR'),
(5, 'Dona Florinda', 'União da Vitória - PR'),
(6, 'Senhor Barriga', 'União da Vitória - PR'),
(7, 'Professor Girafales', 'Matos Costa - SC'),
(8, 'Chapolin Colorado', 'Matos Costa - SC'),
(9, 'Dona Clotilde', 'Paula Freitas - PR'),
(10, 'Justiceiro Mascarado', 'Desconhecido'),
(11, 'Paulo Coelho', 'Paula Freitas - PR'),
(12, 'Jô Soares', 'Paulo Frontin - PR');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `Autor`
--
ALTER TABLE `Autor`
  ADD PRIMARY KEY (`Cod_Autor`);

--
-- Índices de tabela `Editora`
--
ALTER TABLE `Editora`
  ADD PRIMARY KEY (`Cod_Editora`);

--
-- Índices de tabela `ItemPedido`
--
ALTER TABLE `ItemPedido`
  ADD PRIMARY KEY (`ISSN`,`cod_pedido`),
  ADD KEY `cod_pedido` (`cod_pedido`);

--
-- Índices de tabela `Livro`
--
ALTER TABLE `Livro`
  ADD PRIMARY KEY (`ISSN`),
  ADD KEY `fk_Cod_Autor` (`codAutor`),
  ADD KEY `fk_CodEditora` (`CodEditora`);

--
-- Índices de tabela `Pedido`
--
ALTER TABLE `Pedido`
  ADD PRIMARY KEY (`Cod_Pedido`),
  ADD KEY `Cod_Solicitante` (`Cod_Solicitante`);

--
-- Índices de tabela `Solicitante`
--
ALTER TABLE `Solicitante`
  ADD PRIMARY KEY (`Cod_Solicitante`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `Autor`
--
ALTER TABLE `Autor`
  MODIFY `Cod_Autor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de tabela `Editora`
--
ALTER TABLE `Editora`
  MODIFY `Cod_Editora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `Livro`
--
ALTER TABLE `Livro`
  MODIFY `ISSN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `Pedido`
--
ALTER TABLE `Pedido`
  MODIFY `Cod_Pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `Solicitante`
--
ALTER TABLE `Solicitante`
  MODIFY `Cod_Solicitante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `ItemPedido`
--
ALTER TABLE `ItemPedido`
  ADD CONSTRAINT `ItemPedido_ibfk_1` FOREIGN KEY (`ISSN`) REFERENCES `Livro` (`ISSN`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ItemPedido_ibfk_2` FOREIGN KEY (`cod_pedido`) REFERENCES `Pedido` (`Cod_Pedido`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `Livro`
--
ALTER TABLE `Livro`
  ADD CONSTRAINT `fk_CodEditora` FOREIGN KEY (`CodEditora`) REFERENCES `Editora` (`Cod_Editora`),
  ADD CONSTRAINT `fk_Cod_Autor` FOREIGN KEY (`codAutor`) REFERENCES `Autor` (`Cod_Autor`);

--
-- Restrições para tabelas `Pedido`
--
ALTER TABLE `Pedido`
  ADD CONSTRAINT `Pedido_ibfk_1` FOREIGN KEY (`Cod_Solicitante`) REFERENCES `Solicitante` (`Cod_Solicitante`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
