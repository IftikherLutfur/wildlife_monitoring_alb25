-- Active: 1747565453223@@127.0.0.1@5432@WildlifeMonitoring
CREATE TABLE rangers (
    ranger_id SERIAL PRIMARY KEY,
    ranger_name VARCHAR(50) NOT NULL,
    region VARCHAR(100) NOT NULL
);
INSERT INTO rangers ("name", region) VALUES
('Alice Green', 'Northern Hills'),
('Bob White', 'River Delta'),
('Carol King', 'Mountain Range');

CREATE TABLE species (
    species_id SERIAL PRIMARY KEY,
    common_name VARCHAR(50) NOT NULL,
    scientific_name	VARCHAR(50) NOT NULL,
    discovery_date DATE NOT NULL,
    conservation_status	VARCHAR(50) NOT NULL
);

INSERT INTO species (common_name, scientific_name, discovery_date, conservation_status) VALUES
('Snow Leopard', 'Panthera uncia', '1775-01-01', 'Endangered'),
('Bengal Tiger', 'Panthera tigris tigris', '1758-01-01', 'Endangered'),
('Red Panda', 'Ailurus fulgens', '1825-01-01', 'Vulnerable'),
('Asiatic Elephant', 'Elephas maximus indicus', '1758-01-01', 'Endangered');



CREATE Table sightings (
    sighting_id	SERIAL PRIMARY KEY,
    species_id INTEGER,
    ranger_id INTEGER,
    "location" VARCHAR(50),
    sighting_time TIMESTAMP,
    notes TEXT,
    FOREIGN KEY (species_id) REFERENCES species(species_id),
    FOREIGN KEY (ranger_id) REFERENCES rangers(ranger_id)
);


INSERT INTO sightings (species_id, ranger_id, location, sighting_time, notes) VALUES
(1, 1, 'Peak Ridge', '2024-05-10 07:45:00', 'Camera trap image captured'),
(2, 2, 'Bankwood Area', '2024-05-12 16:20:00', 'Juvenile seen'),
(3, 3, 'Bamboo Grove East', '2024-05-15 09:10:00', 'Feeding observed'),
(1, 2, 'Snowfall Pass', '2024-05-18 18:30:00', NULL);



--Problem 1
INSERT INTO rangers ("name", region) VALUES ('Derek Fox', 'Coastal Plains');


--Problem 2
SELECT count(DISTINCT species_id) as unique_species FROM sightings;

--Problem 3
SELECT * FROM sightings WHERE "location" ILIKE  '%pass%';

--Problem 4
SELECT r.name as name , count(s.sighting_id) as total_sightings FROM rangers as r 
INNER join sightings as s ON r.ranger_id = s.ranger_id
GROUP BY r.name;

-- Problem 5
SELECT common_name FROM species
WHERE species_id NOT IN(
SELECT DISTINCT species_id FROM sightings);
 
--Problem 6
SELECT sp.common_name, s.sighting_time, r.name as name
FROM sightings as s 
JOIN species as sp ON s.species_id = sp.species_id
JOIN rangers as r on s.ranger_id = r.ranger_id 
ORDER BY s.sighting_time DESC
LIMIT 2; 

--Problem 7
UPDATE species
SET conservation_status = 'History'
WHERE discovery_date <'1800-01-01';

--Problem 8
SELECT s.sighting_id, EXTRACT(HOUR FROM s.sighting_time) as time,

CASE 
    WHEN EXTRACT(HOUR FROM s.sighting_time) BETWEEN 5 AND 11 THEN 'Morning'
    WHEN EXTRACT(HOUR FROM s.sighting_time) BETWEEN 12 AND 16 THEN 'Afternoon'
    WHEN EXTRACT(HOUR FROM s.sighting_time) BETWEEN 17 AND 20 THEN 'Evening'
    ELSE 'Night'
  END AS time_of_day

FROM sightings as s
GROUP BY s.sighting_id, s.sighting_time ;

--Problem 9
DELETE FROM rangers
WHERE ranger_id NOT IN (
    SELECT ranger_id FROM sightings
);





