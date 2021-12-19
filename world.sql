SELECT world.countries.name AS country, world.languages.language AS language, world.languages.percentage
FROM world.languages
JOIN world.countries ON world.languages.country_id = world.countries.id
WHERE world.languages.language = "Slovene"
ORDER BY world.languages.percentage DESC;

SELECT countries.name AS country, COUNT(cities.name) AS number_of_cities
FROM cities
JOIN countries ON cities.country_id = countries.id
GROUP BY countries.name
ORDER BY number_of_cities DESC;

SELECT cities.name, cities.population FROM cities
JOIN countries ON cities.country_id = countries.id
WHERE countries.name = "Mexico" AND cities.population > 500000
ORDER BY cities.population DESC;

SELECT countries.name AS country, languages.language AS language, languages.percentage
FROM languages
LEFT JOIN countries ON languages.country_id = countries.id
WHERE languages.percentage > 89
ORDER BY languages.percentage DESC;

SELECT countries.name, countries.surface_area, countries.population FROM countries
WHERE countries.surface_area < 501 AND countries.population > 100000;

SELECT countries.name, countries.government_form, countries.capital, countries.life_expectancy
FROM countries
WHERE countries.government_form = 'Constitutional Monarchy'
AND	countries.capital > 200
AND countries.life_expectancy > 75;

SELECT countries.name AS country, cities.name AS city, cities.district, cities.population
FROM cities
JOIN countries on countries.id = cities.country_id
WHERE countries.name = 'Argentina'
AND cities.district = 'Buenos Aires'
AND cities.population > 500000;

SELECT countries.region, COUNT(countries.name) AS countries
FROM countries
GROUP BY countries.region
ORDER BY countries DESC;

