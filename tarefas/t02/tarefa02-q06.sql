CREATE TRIGGER soma_milhas AFTER INSERT ON cliente_voo
FOR EACH ROW UPDATE milhas
SET quantidade = quantidade + 
(SELECT distancia FROM voo, cliente_voo 
WHERE NEW.voo = voo.codigo
) / 10
WHERE cliente = NEW.cliente;