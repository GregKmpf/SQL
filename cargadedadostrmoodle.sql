-- Inserindo dados na tabela Leitor
--CARGA DE DADOS
INSERT INTO Leitor (cpf, nome, telefone, email) VALUES
('12345678901', 'João Silva', '21987654321', 'joao.silva@gmail.com'),
('98765432100', 'Maria Oliveira', '21999887766', 'maria.oliveira@hotmail.com'),
('45678912345', 'Carlos Pereira', '21988776655', 'carlos.pereira@outlook.com');

-- Inserindo dados na tabela Livro
INSERT INTO Livro (codigo, titulo, autor, editora, anoPublicacao, quantidade) VALUES
(1, 'Dom Quixote', 'Miguel de Cervantes', 'Editora Clássica', 1605, 3),
(2, '1984', 'George Orwell', 'Companhia das Letras', 1949, 5),
(3, 'O Senhor dos Anéis', 'J.R.R. Tolkien', 'HarperCollins', 1954, 4),
(4, 'O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 'Gallimard', 1943, 10);

-- Inserindo dados na tabela Funcionario
INSERT INTO Funcionario (codigo, nome, dataNasc, cargo) VALUES
(1, 'Ana Costa', '1990-05-15', 'Atendente'),
(2, 'Roberto Lima', '1985-08-20', 'Gerente'),
(3, 'Sofia Mendes', '1995-12-10', 'Atendente');

-- Inserindo dados na tabela Emprestimo
INSERT INTO Emprestimo (numero, dataEmprestimo, dataDevolucao, codLeitor, codFuncionario) VALUES
(1, '2024-11-10', '2024-11-17', '12345678901', 1),
(2, '2024-11-12', '2024-11-19', '98765432100', 2),
(3, '2024-11-14', NULL, '45678912345', 1); -- Empréstimo ainda não devolvido

-- Inserindo dados na tabela ItensEmprestimo
INSERT INTO ItensEmprestimo (numEmprestimo, codLivro, qtd) VALUES
(1, 1, 1), -- 1 cópia de "Dom Quixote" no empréstimo 1
(1, 3, 2), -- 2 cópias de "O Senhor dos Anéis" no empréstimo 1
(2, 2, 1), -- 1 cópia de "1984" no empréstimo 2
(3, 4, 3); -- 3 cópias de "O Pequeno Príncipe" no empréstimo 3
