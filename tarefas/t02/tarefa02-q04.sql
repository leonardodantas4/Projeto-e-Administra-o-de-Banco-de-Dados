CREATE TRIGGER add_cartao_milhas
AFTER INSERT ON cliente
FOR EACH ROW INSERT INTO milhas (quantidade, cliente) VALUES (0, NEW.codigo);