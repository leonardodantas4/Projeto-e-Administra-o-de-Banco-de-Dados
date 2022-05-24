CREATE TRIGGER add_voo_piloto
AFTER INSERT ON voo
FOR EACH ROW UPDATE piloto
SET num_voos = num_voos + 1
WHERE piloto.codigo = new.piloto;