SELECT COUNT(part_number)
FROM part_nyc N
WHERE N.on_hand > 70;

SELECT SUM(N.on_hand) + SUM(S.on_hand) as total
FROM part_nyc N, color C, part_sfo S
WHERE (S.color = C.color_id OR N.color = C.color_id) AND color_name = 'Red';

SELECT S.supplier_id
FROM part_nyc NYC, part_sfo SFO, supplier S
WHERE (S.supplier_id = NYC.supplier AND S.supplier_id = SFO.supplier)
GROUP BY S.supplier_id
HAVING SUM(NYC.on_hand) > SUM(SFO.on_hand);

SELECT S.supplier_id
FROM part_nyc NYC, supplier S
WHERE S.supplier_id = NYC.supplier AND (NYC.part_number) NOT IN
( SELECT part_number
FROM part_nyc SFO, supplier S
WHERE S.supplier_id = SFO.supplier);

UPDATE part_nyc
SET on_hand = on_hand - 10;

DELETE FROM part_nyc N
WHERE N.on_hand < 30;
