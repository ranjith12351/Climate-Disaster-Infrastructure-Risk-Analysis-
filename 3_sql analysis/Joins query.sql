use analysis;
SELECT 
    d.`Disaster ID`,
    d.`Disaster Type`,
    d.`Disaster Date`,
    d.Country,
    d.`State / Region`,
    d.District,
    d.Severity,
    d.`Hazard Index`,
    e.`People Affected`,
    e.Fatalities,
    e.`Infrastructure Damage`,
    e.`Economic Loss`,
    e.`Agricultural Loss`,
    e.`Recovery Cost`
FROM disaster d
INNER JOIN economic e
    ON d.`Disaster ID` = e.`Disaster ID`;

SELECT 
    e.`Impact ID`,
    e.`Disaster ID`,
    e.`Disaster Type`,
    e.Country,
    e.`State / Region`,
    e.District,
    e.Year,
    p.Population AS `Total Population`,
    p.`Vulnerable Population`,
    p.`Population Density`,
    e.`People Affected`,
    e.Fatalities,
    e.`Economic Loss`,
    ROUND((e.`People Affected` / NULLIF(p.Population, 0)) * 100, 2) AS `Percent Population Affected`
FROM economic e
INNER JOIN population p
    ON  e.Country = p.Country
    AND e.`State / Region` = p.`State / Region`
    AND e.District = p.District
    AND e.Year = p.Year;
    
SELECT 
    d.`Disaster ID`,
    d.`Disaster Type`,
    d.`Disaster Date`,
    d.Country,
    d.`State / Region`,
    d.District,
    d.Severity,
    p.Population AS `District Population`,
    p.`Vulnerable Population`,
    e.`People Affected`,
    e.Fatalities,
    e.`Infrastructure Damage`,
    e.`Economic Loss`,
    e.`Recovery Cost`
FROM disaster d
INNER JOIN economic e 
    ON d.`Disaster ID` = e.`Disaster ID`
LEFT JOIN population p 
    ON  e.Country = p.Country
    AND e.`State / Region` = p.`State / Region`
    AND e.District = p.District
    AND e.Year = p.Year;    
    
SELECT 
    d.`Disaster ID`,
    d.`Disaster Type`,
    d.`Disaster Date`,
    i.`Infrastructure ID`,
    i.`Infrastructure Name`,
    i.`Infrastructure Type`,
    i.`Criticality Level`,
    i.`Replacement Value`,
    (6371 * ACOS(
        COS(RADIANS(d.Latitude)) * COS(RADIANS(i.Latitude)) *
        COS(RADIANS(i.Longitude) - RADIANS(d.Longitude)) +
        SIN(RADIANS(d.Latitude)) * SIN(RADIANS(i.Latitude))
    )) AS `Distance_KM`
FROM disaster d
CROSS JOIN infrastructure i
WHERE (6371 * ACOS(
        COS(RADIANS(d.Latitude)) * COS(RADIANS(i.Latitude)) *
        COS(RADIANS(i.Longitude) - RADIANS(d.Longitude)) +
        SIN(RADIANS(d.Latitude)) * SIN(RADIANS(i.Latitude))
    )) <= 50;    
    
 
SET SQL_SAFE_UPDATES = 0;
 
UPDATE infrastructure
SET `Operational Status` = 'Damaged'
WHERE `Infrastructure ID` = 'INF-1002';

UPDATE economic e
JOIN disaster d ON e.`Disaster ID` = d.`Disaster ID`
SET e.`Economic Loss` = e.`Economic Loss` * 1.15
WHERE d.Severity = 'High';

UPDATE population
SET `Population Density` = ROUND(Population / NULLIF(`Area (sq. km)`, 0), 2)
WHERE Year = 2026;

select*from economic;
select*from disaster;
select*from population;
select*from infrastructure;



COMMIT;