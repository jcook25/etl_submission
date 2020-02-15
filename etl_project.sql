-- CREATE TABLE data_05 (
--   resident_status INT,
--   sex VARCHAR(30),
--   place_of_death INT,
--   manner_of_death INT,
--   method_of_disposition VARCHAR(30)  
-- );

-- CREATE TABLE manner_key (
--   index INT,
--   manner_of_death VARCHAR(30)
-- );

-- CREATE TABLE place_key (
--   index INT,
--   place_of_death VARCHAR(30)
-- );

-- select * from data_05
-- select * from status_key
-- select * from place_key

-- SELECT d.resident_status
-- from data_05 as d
-- join status_key as s on d.resident_status = cast(s.index as integer)

SELECT sk.resident_status, d.sex, pk.place_of_death, mk.manner_of_death, mtk.method_of_disposition
FROM data_05 as d
JOIN status_key as sk on d.resident_status = sk.index
JOIN place_key as pk on d.place_of_death = pk.index
JOIN manner_key as mk on d.manner_of_death = mk.index
JOIN method_key as mtk on d.method_of_disposition = mtk.index

-- SELECT COUNT(resident_status)
-- FROM data_05
-- GROUP BY resident_status