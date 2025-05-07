CREATE EXTENSION postgis;

CREATE TABLE locations (name varchar, geom geometry);
INSERT INTO locations VALUES
	('Leavey Library','POINT(-118.283029 34.021626)'),
	('Doheny Memorial Library', 'POINT(-118.284063 34.020306)'),
	('Science Engineering Library', 'POINT(-118.288917 34.019401)'),
	('Waterwork1', 'POINT(-118.282861 34.021392)'),
	('Waterwork2', 'POINT(-118.285248 34.020248)'),
	('Waterwork3', 'POINT(-118.286122 34.020324)'),
	('Starbucks', 'POINT(-118.282545 34.021350)'),
	('Moreton Fig', 'POINT(-118.285797 34.019739)'),
	('Burger Crush', 'POINT(-118.286322 34.020037)'),
	('Gate1', 'POINT(-118.286303 34.018801)'),
	('Gate2', 'POINT(-118.288862 34.018795)'),
	('Gate3', 'POINT(-118.283777 34.022672)'),
	('Home', 'POINT(-118.300076 34.028632)');
	
SELECT name, ST_AsText(geom) FROM locations;

SELECT ST_AsText(ST_ConvexHull(ST_Collect(geom))) FROM locations;

SELECT name, ST_AsText(geom) FROM locations
WHERE name != 'Home'
ORDER BY ST_Distance(locations.geom, ST_GeomFromText('POINT(-118.300076 34.028632)'))
LIMIT 4;