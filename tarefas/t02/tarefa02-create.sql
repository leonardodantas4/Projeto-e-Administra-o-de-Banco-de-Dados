CREATE TABLE cliente(
	codigo INTEGER PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL,
	endereco VARCHAR(100) NOT NULL
);

CREATE TABLE piloto(
	codigo INTEGER PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(100),
	num_voos INT
);

CREATE TABLE voo(
	codigo INTEGER PRIMARY KEY AUTO_INCREMENT,
	piloto INT,
	tipo VARCHAR (100),
	num_passageiros INT DEFAULT 0,
	distancia INT DEFAULT 0,
	FOREIGN KEY(piloto) REFERENCES piloto(codigo)
);

CREATE TABLE milhas(
	codigo INTEGER PRIMARY KEY AUTO_INCREMENT,
	cliente INT DEFAULT 0,
	quantidade INT DEFAULT 0,
	FOREIGN KEY(cliente) REFERENCES cliente(codigo)
);

CREATE TABLE cliente_voo(
	cliente INTEGER NOT NULL,
	voo INTEGER NOT NULL,
	classe VARCHAR(100),
	PRIMARY KEY(cliente, voo),
	FOREIGN KEY(cliente) REFERENCES cliente(codigo),
	FOREIGN KEY(voo) REFERENCES voo(codigo)
);