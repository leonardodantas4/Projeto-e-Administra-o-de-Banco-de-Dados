INSERT INTO cliente(nome, endereco)
VALUES ("Messi",  "Monte - Santa Luzia");

INSERT INTO milhas(cliente, quantidade)
VALUES (1,  50);


CREATE TRIGGER add_cartao_milhas AFTER
UPDATE ON cliente
FOR EACH ROW 
INSERT INTO milhas(cliente, quantidade)
VALUES(OLD.codigo, 0);
#PrimaryKey Duplicated

#Solution
CREATE TRIGGER add_cartao_milhas AFTER
UPDATE ON cliente
FOR EACH ROW 
UPDATE milhas SET quantidade = 0
where milhas.cliente = OLD.codigo;