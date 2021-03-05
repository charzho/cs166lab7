UPDATE part_nyc
SET on_hand = on_hand - 10;

DELETE FROM part_nyc N
WHERE N.on_hand < 30;
