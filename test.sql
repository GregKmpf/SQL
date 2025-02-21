-- Tabela de Leitores (Clientes)
-- CRIANDO TABELA
CREATE TABLE Leitor (
    cpf VARCHAR(11) PRIMARY KEY,
    nome VARCHAR(40) NOT NULL,
    telefone VARCHAR(11),
    email VARCHAR(50) UNIQUE
);

-- Tabela de Livros
CREATE TABLE Livro (
    codigo INTEGER PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    autor VARCHAR(60) NOT NULL,
    editora VARCHAR(50),
    anoPublicacao INTEGER CHECK(anoPublicacao > 0),
    quantidade INTEGER NOT NULL CHECK(quantidade >= 0)
);

-- Tabela de Funcionários
CREATE TABLE Funcionario (
    codigo INTEGER PRIMARY KEY,
    nome VARCHAR(40) NOT NULL,
    dataNasc DATE,
    cargo VARCHAR(30)
);

-- Tabela de Empréstimos
CREATE TABLE Emprestimo (
    numero INTEGER PRIMARY KEY,
    dataEmprestimo DATE DEFAULT CURRENT_DATE,
    dataDevolucao DATE,
    codLeitor VARCHAR(11),
    codFuncionario INTEGER,
    FOREIGN KEY (codLeitor) REFERENCES Leitor (cpf),
    FOREIGN KEY (codFuncionario) REFERENCES Funcionario (codigo)
);

-- Tabela de Itens do Empréstimo
CREATE TABLE ItensEmprestimo (
    numEmprestimo INTEGER,
    codLivro INTEGER,
    qtd INTEGER NOT NULL CHECK(qtd > 0),
    PRIMARY KEY (numEmprestimo, codLivro),
    FOREIGN KEY (numEmprestimo) REFERENCES Emprestimo (numero),
    FOREIGN KEY (codLivro) REFERENCES Livro (codigo)
);
