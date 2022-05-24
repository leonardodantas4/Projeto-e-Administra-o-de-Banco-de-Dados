CREATE TRIGGER deletar_passageiros BEFORE
DELETE ON voo 
FOR EACH ROW 
DELETE FROM cliente_voo 
WHERE cliente_voo.cod_voo = OLD.codigo;