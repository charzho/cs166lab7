DROP INDEX IF EXISTS color_id_index;
DROP INDEX IF EXISTS color_name_index;
DROP INDEX IF EXISTS nyc_color_index;
DROP INDEX IF EXISTS sfo_color_index;
DROP INDEX IF EXISTS nyc_part_index;
DROP INDEX IF EXISTS sfo_part_index;
DROP INDEX IF EXISTS nyc_supplier_index;
DROP INDEX IF EXISTS sfo_supplier_index;
DROP INDEX IF EXISTS supplier_index;

CREATE INDEX color_id_index
ON color
USING BTREE(color_id);

CREATE INDEX color_name_index
ON color
USING BTREE(color_name);

CREATE INDEX nyc_color_index
ON part_nyc
USING BTREE(color);

CREATE INDEX sfo_color_index
ON part_sfo
USING BTREE(color);

CREATE INDEX nyc_part_index
ON part_nyc
USING BTREE(part_number);

CREATE INDEX sfo_part_index
ON part_sfo
USING BTREE(part_number);

CREATE INDEX nyc_supplier_index
ON part_nyc
USING BTREE(supplier);

CREATE INDEX sfo_supplier_index
ON part_sfo
USING BTREE(supplier);

CREATE INDEX nyc_on_hand_index
ON part_nyc
USING BTREE(on_hand);

CREATE INDEX sfo_on_hand_index
ON part_sfo
USING BTREE(on_hand);

CREATE INDEX supplier_index
ON supplier
USING BTREE(supplier_id);


