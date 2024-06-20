-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 20-Jun-2024 às 17:50
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `id` int(11) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `turma` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`id`, `cpf`, `nome`, `email`, `telefone`, `turma`) VALUES
(1, '10470160365', 'João Vittor Silveira', 'joaovittorss2007@gmail.com', '8592476347', '3D'),
(2, '123.456.789-00', 'Leticia Sampaio', 'letsamp@gmail.com', '85998707209', '1B'),
(3, '253.526.346-73', 'eduardo', 'jota@aluno.com', '889999999', '1C');

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor`
--

CREATE TABLE `autor` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `autor`
--

INSERT INTO `autor` (`id`, `nome`) VALUES
(1, 'JK Rowling');

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor_obra`
--

CREATE TABLE `autor_obra` (
  `id` int(11) NOT NULL,
  `id_obra` int(11) DEFAULT NULL,
  `id_autor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `editora`
--

CREATE TABLE `editora` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `editora`
--

INSERT INTO `editora` (`id`, `nome`, `email`, `telefone`) VALUES
(1, 'Max Livros', 'maxlivros@maxlivros.com', '9140028922');

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimo`
--

CREATE TABLE `emprestimo` (
  `id` int(11) NOT NULL,
  `data_inicio` varchar(25) NOT NULL,
  `data_fim` varchar(25) DEFAULT NULL,
  `data_prazo` varchar(25) NOT NULL,
  `id_livro` int(11) DEFAULT NULL,
  `id_aluno` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `user` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `emprestimo`
--

INSERT INTO `emprestimo` (`id`, `data_inicio`, `data_fim`, `data_prazo`, `id_livro`, `id_aluno`, `id_usuario`, `user`) VALUES
(29, '2024-06-04', '2024-06-15', '2024-06-19', 12, 1, 1, ''),
(32, '2024-06-19', '2024-06-22', '2024-07-06', 12, 1, 1, ''),
(33, '2024-06-20', '2024-07-04', '2024-08-19', 12, 1, 1, ''),
(36, '2024-06-01', NULL, '2024-07-01', 12, 1, 1, ''),
(37, '2024-06-29', NULL, '2024-08-28', 13, 2, 8, ''),
(38, '2024-06-01', '', '2024-06-16', 12, 1, 1, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `id` int(11) NOT NULL,
  `nome` varchar(250) NOT NULL,
  `disponivel` varchar(25) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Ìntegro',
  `id_obra` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`id`, `nome`, `disponivel`, `status`, `id_obra`) VALUES
(12, 'Senhor dos Anéis', '1', '1', 2),
(13, 'Harry Potter', 'INDISPONÍVEL', 'Com avarias', 3),
(18, 'Senhor dos Anéis', 'DISPONIVEL', 'S', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `obra`
--

CREATE TABLE `obra` (
  `id` int(11) NOT NULL,
  `titulo` varchar(500) NOT NULL,
  `isbn` varchar(25) NOT NULL,
  `categoria` varchar(15) NOT NULL,
  `ano_publicacao` int(11) NOT NULL,
  `id_editora` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `obra`
--

INSERT INTO `obra` (`id`, `titulo`, `isbn`, `categoria`, `ano_publicacao`, `id_editora`) VALUES
(2, 'Senhor dos Anéis', 'ISBN 978 – 85 – 333 – 022', 'Drama', 2010, 1),
(3, 'Harry Potter', 'ISBN 978 – 85 – 333 – 022', 'Aventura', 2011, 1),
(4, 'O CHAMADO', 'WS2564362', 'TERROR', 12454, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `senha` varchar(15) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `email`, `senha`, `telefone`) VALUES
(1, 'jotaveqs', 'jotave@gmail.com', 'jotaveqs', '85992476347'),
(2, 'letsamp', 'letsamp@gmail.com', 'letsamp123', '85992476347'),
(6, 'jotaveqs123', 'jotave@gmail.com', '', '85998707209'),
(7, 'jotaveqszada', 'jota@gmail.com', '', '85990019002'),
(8, 'yarley', 'yarley@gmail.com', 'e3050067fc0bb15', '859999999'),
(9, 'jotave', 'jotave@lindo.com', 'e3050067fc0bb15', '85992476347');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `autor_obra`
--
ALTER TABLE `autor_obra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_obra` (`id_obra`),
  ADD KEY `id_autor` (`id_autor`);

--
-- Índices para tabela `editora`
--
ALTER TABLE `editora`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_livro` (`id_livro`),
  ADD KEY `id_aluno` (`id_aluno`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices para tabela `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_obra` (`id_obra`);

--
-- Índices para tabela `obra`
--
ALTER TABLE `obra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_editora` (`id_editora`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `autor`
--
ALTER TABLE `autor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `autor_obra`
--
ALTER TABLE `autor_obra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `editora`
--
ALTER TABLE `editora`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de tabela `livro`
--
ALTER TABLE `livro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `obra`
--
ALTER TABLE `obra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `autor_obra`
--
ALTER TABLE `autor_obra`
  ADD CONSTRAINT `autor_obra_ibfk_1` FOREIGN KEY (`id_obra`) REFERENCES `obra` (`id`),
  ADD CONSTRAINT `autor_obra_ibfk_2` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id`);

--
-- Limitadores para a tabela `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD CONSTRAINT `emprestimo_ibfk_1` FOREIGN KEY (`id_livro`) REFERENCES `livro` (`id`),
  ADD CONSTRAINT `emprestimo_ibfk_2` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id`),
  ADD CONSTRAINT `emprestimo_ibfk_3` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`);

--
-- Limitadores para a tabela `livro`
--
ALTER TABLE `livro`
  ADD CONSTRAINT `livro_ibfk_1` FOREIGN KEY (`id_obra`) REFERENCES `obra` (`id`);

--
-- Limitadores para a tabela `obra`
--
ALTER TABLE `obra`
  ADD CONSTRAINT `obra_ibfk_1` FOREIGN KEY (`id_editora`) REFERENCES `editora` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
