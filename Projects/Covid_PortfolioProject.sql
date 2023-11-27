------ Looking into the Covid Deaths data globally ------
SELECT location, continent, date,total_cases,new_cases,total_deaths,population 
FROM covid_deaths
LIMIT 50000



-- Shows likelihood of dying if you contract covid in your country -------
SELECT location, date, total_cases, total_deaths, 
ROUND((total_deaths*100.0)/total_cases,2) AS death_percent
FROM covid_deaths AS cd
where location = 'India' 
AND cast(cd.date as timestamp) BETWEEN '01-01-2023' AND '14-07-2023'
--ORDER BY 3




-- Shows percentage of population infected with Covid ------
SELECT location,date,population,total_cases, ROUND((total_cases*100.0)/population,2) AS cases_percent
FROM covid_deaths
where location = 'India'
ORDER BY 5




-- Looking at countries with highest infections rate compared to population ----
SELECT location, population,
MAX(total_cases) AS highest_Infectcount,
ROUND((MAX(total_cases)*100.0)/population,2) AS percent_populationinfected
FROM covid_deaths
WHERE total_cases IS NOT NULL
GROUP BY location,population
ORDER BY percent_populationinfected DESC




-- Showing countries with highest death count per population -----
SELECT location,
MAX(total_deaths) AS Total_Deathcount,
ROUND((MAX(total_deaths)*100.0)/population,2) AS percent_PopulationDied
FROM covid_deaths cd
WHERE continent IS NOT NULL
AND total_deaths IS NOT NULL
GROUP BY location, cd.population
ORDER BY percent_PopulationDied DESC




-- LET'S SPLIT THINGS BY CONTINENT -----
-- Showing continents with highest death count per population -----
SELECT continent,
MAX(total_deaths) AS Total_Deathcount
FROM covid_deaths cd
WHERE continent IS NOT NULL AND total_deaths IS NOT NULL
GROUP BY continent
ORDER BY Total_Deathcount DESC
-- MORE ACCURATE DATA BUT NOT GOING TO USE THIS (in terms of breaking things by continent)
SELECT location,
MAX(total_deaths) AS Total_Deathcount
FROM covid_deaths cd
WHERE continent IS NULL AND total_deaths IS NOT NULL
GROUP BY location
ORDER BY Total_Deathcount DESC



-- Showing GLOBAL NUMBERS -----
SELECT -- cast(cd.date AS date), 
SUM(new_cases) AS Global_TotalCases, SUM(new_deaths) AS Global_TotalDeaths,
(SUM(new_deaths)*100)/SUM(new_cases) AS Global_Death_Percent
FROM covid_deaths AS cd
WHERE continent is not Null
-- GROUP BY date
ORDER BY 1




----- Looking into the Covid Vaccinations data globally ------
SELECT * FROM covid_vaccinations
LIMIT 50



-- JOIN BOTH TABLES ----
SELECT * FROM covid_vaccinations cv
JOIN covid_deaths cd
ON cv.location = cd.location
AND cv.date = cd.date
LIMIT 50




-- Looking at Total Population VS Vaccination ------
SELECT cd.continent, cd.location, cd.date, cd.population, cv.new_vaccinations,
SUM(cv.new_vaccinations) OVER (Partition by cd.location ORDER BY cd.location,cd.date) AS Rolling_PeopleVaccinated,
FROM covid_vaccinations cv
JOIN covid_deaths cd
ON cv.location = cd.location
AND cv.date = cd.date
WHERE cd.continent IS NOT NULL
ORDER BY 2,3





-- Use CTE (Common Table Expression) using WITH statement ------
WITH Pop_Vs_Vac (Continent, location, date, population, new_vaccinations, Rolling_PeopleVaccinated)
AS
(
SELECT cd.continent, cd.location, cd.date, cd.population, cv.new_vaccinations,
SUM(cv.new_vaccinations) OVER (Partition by cd.location ORDER BY cd.location,cd.date) AS Rolling_PeopleVaccinated
FROM covid_vaccinations cv
JOIN covid_deaths cd
ON cv.location = cd.location
AND cv.date = cd.date
WHERE cd.continent IS NOT NULL
)
SELECT *, (Rolling_PeopleVaccinated*100)/Population AS Percent_Rolling_PeopleVaccinated
FROM Pop_Vs_Vac;




-- Creating VIEW to store data for later visualizations -------
Create View Percent_PopVaccinated AS
SELECT cd.continent, cd.location, cd.date, cd.population, cv.new_vaccinations,
SUM(cv.new_vaccinations) OVER (Partition by cd.location ORDER BY cd.location,cd.date) AS Rolling_PeopleVaccinated
FROM covid_vaccinations cv
JOIN covid_deaths cd
ON cv.location = cd.location
AND cv.date = cd.date
WHERE cd.continent IS NOT NULL
