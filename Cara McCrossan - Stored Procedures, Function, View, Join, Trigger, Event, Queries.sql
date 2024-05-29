-- ****************************** PROCEDURES ****************************** --

-- INSERT NEW EPISODE - FILL IN ALL TABLES SIMULTANEOUSLY WHEN A NEW EPISODE IS RELEASED -- 

DELIMITER //
CREATE PROCEDURE InsertNewEpisode(
    IN p_EpisodeNumber VARCHAR(10),
    IN p_FirstName VARCHAR(30),
    IN p_Surname VARCHAR(30),
    IN p_Gender VARCHAR(10), -- Use VARCHAR for procedure instead of ENUM
    IN p_Professions JSON,
    IN p_SecretIngredient VARCHAR(30),
    IN p_StillOrSparkling VARCHAR(15),
    IN p_PoppadomsOrBread VARCHAR(10),
    IN p_Starter VARCHAR(255),
    IN p_MainCourse VARCHAR(255),
    IN p_Sides VARCHAR(255),
    IN p_Dessert VARCHAR(255),
    IN p_Drinks VARCHAR(255),
    IN p_StarterCuisine VARCHAR(30),
    IN p_MainCourseCuisine VARCHAR(30),
    IN p_SidesCuisine VARCHAR(30),
    IN p_DessertCuisine VARCHAR(30),
    IN p_WaterAdditions VARCHAR(50),
    IN p_Ice BOOLEAN,
    IN p_WaterSpecifications TEXT,
    IN p_BreadType VARCHAR(255),
    IN p_ToppingsOrAccompaniments VARCHAR(50),
    IN p_BreadSpecifications TEXT,
    IN p_RestaurantNames JSON,
    IN p_RestaurantCountries JSON,
    IN p_RestaurantCities JSON,
    IN p_DishesMentioned JSON,
    IN p_Mentioned BOOLEAN,
    IN p_Chosen BOOLEAN
)
BEGIN
    -- Declare all variables that will need to be used in the logic
    -- Variable needed for GuestID as this is both a primary and foreign key and is Auto Generated. It is not needed for GuestProfessionID as this is only used once.
    -- Variables are needed for the others as there might be multiple values input using the procedure and a variable is needed to store each one.
    DECLARE guest_id INT; 
    DECLARE i INT DEFAULT 0;
    DECLARE profession VARCHAR(255);
    DECLARE restaurant_name VARCHAR(255);
    DECLARE restaurant_country VARCHAR(255);
    DECLARE restaurant_city VARCHAR(255);
    DECLARE dish_mentioned VARCHAR(255);
    
    -- Temporarily remove foreign key constraints to add all data simultaneously without constraint errors occurring.
    SET FOREIGN_KEY_CHECKS = 0;

    -- Insert into WaterSpecifications table
    INSERT INTO WaterSpecifications (FirstName, Surname, StillOrSparkling, WaterAdditions, Ice, WaterSpecifications)
    VALUES(p_FirstName, p_Surname, p_StillOrSparkling, p_WaterAdditions, p_Ice, p_WaterSpecifications)
    -- The 'ON DUPLICATE KEY UPDATE' line is used where duplicate key is found, the existing row is updated with the new values provided.
    -- This is the same with the other insert sections of the procedure.
    ON DUPLICATE KEY UPDATE StillOrSparkling = VALUES(StillOrSparkling), WaterAdditions = VALUES(WaterAdditions), Ice = VALUES(Ice), WaterSpecifications = VALUES(WaterSpecifications);

    -- Insert into PoppadomsOrBread table
    INSERT INTO PoppadomsOrBread (FirstName, Surname, PoppadomsOrBread, BreadType, ToppingsOrAccompaniments, BreadSpecifications)
    VALUES (p_FirstName, p_Surname, p_PoppadomsOrBread, p_BreadType, p_ToppingsOrAccompaniments, p_BreadSpecifications)
    ON DUPLICATE KEY UPDATE PoppadomsOrBread = VALUES(PoppadomsOrBread), BreadType = VALUES(BreadType), ToppingsOrAccompaniments = VALUES(ToppingsOrAccompaniments), BreadSpecifications = VALUES(BreadSpecifications);

    -- Insert into SecretIngredient table
    INSERT INTO SecretIngredient (SecretIngredient, Mentioned, Chosen)
    VALUES (p_SecretIngredient, p_Mentioned, p_Chosen)
    ON DUPLICATE KEY UPDATE Mentioned = VALUES(Mentioned), Chosen = VALUES(Chosen);
    
    -- Insert into Menus table
    INSERT INTO Menus (EpisodeNumber, FirstName, Surname, SecretIngredient, StillOrSparkling, PoppadomsOrBread, Starter, MainCourse, Sides, Dessert, Drinks)
    VALUES (p_EpisodeNumber, p_FirstName, p_Surname, p_SecretIngredient, p_StillOrSparkling, p_PoppadomsOrBread, p_Starter, p_MainCourse, p_Sides, p_Dessert, p_Drinks)
    ON DUPLICATE KEY UPDATE FirstName = VALUES(FirstName), Surname = VALUES(Surname), SecretIngredient = VALUES(SecretIngredient), StillOrSparkling = VALUES(StillOrSparkling), PoppadomsOrBread = VALUES(PoppadomsOrBread), Starter = VALUES(Starter), MainCourse = VALUES(MainCourse), Sides = VALUES(Sides), Dessert = VALUES(Dessert), Drinks = VALUES(Drinks);
	
    -- Insert into Cuisines table
    INSERT INTO Cuisines (EpisodeNumber, StarterCuisine, MainCourseCuisine, SidesCuisine, DessertCuisine)
    VALUES (p_EpisodeNumber, p_StarterCuisine, p_MainCourseCuisine, p_SidesCuisine, p_DessertCuisine)
    ON DUPLICATE KEY UPDATE StarterCuisine = VALUES(StarterCuisine), MainCourseCuisine = VALUES(MainCourseCuisine), SidesCuisine = VALUES(SidesCuisine), DessertCuisine = VALUES(DessertCuisine);
    
    -- Insert into RestaurantsMentioned table
    -- In this logic, SQL first checks if there has been a restaurant mentioned and if there has, then to run the logic
    -- If there are values, [i] is set to 0 to start the counter
    IF p_RestaurantNames IS NOT NULL AND p_RestaurantCountries IS NOT NULL AND p_RestaurantCities IS NOT NULL AND p_DishesMentioned IS NOT NULL THEN
        SET i = 0;
         -- Inside the loop, data is extracted from the JSON arrays for restaurant names, locations, and dishes mentioned.
         -- 
        WHILE i < JSON_LENGTH(p_RestaurantNames) DO
            SET restaurant_name = JSON_UNQUOTE(JSON_EXTRACT(p_RestaurantNames, CONCAT('$[', i, ']')));
            SET restaurant_country = JSON_UNQUOTE(JSON_EXTRACT(p_RestaurantCountries, CONCAT('$[', i, ']')));
            SET restaurant_city = JSON_UNQUOTE(JSON_EXTRACT(p_RestaurantCities, CONCAT('$[', i, ']')));
            SET dish_mentioned = JSON_UNQUOTE(JSON_EXTRACT(p_DishesMentioned, CONCAT('$[', i, ']')));

			-- Data is inserted into the RestaurantsMentioned table.
			-- If a duplicate key is found (based on the unique keys of the table), the existing row is updated with the new values provided.
            INSERT INTO RestaurantsMentioned (EpisodeNumber, RestaurantNames, RestaurantCountries, RestaurantCities, DishMentioned)
            VALUES (p_EpisodeNumber, restaurant_name, restaurant_country, restaurant_city, dish_mentioned)
            ON DUPLICATE KEY UPDATE RestaurantCountries = VALUES(RestaurantCountries), RestaurantCities = VALUES(RestaurantCities), DishMentioned = VALUES(DishMentioned);

            SET i = i + 1;
        END WHILE;
    END IF;
    
    -- Insert into Guest table
    INSERT INTO Guest (EpisodeNumber, FirstName, Surname, Gender)
    VALUES (p_EpisodeNumber, p_FirstName, p_Surname, p_Gender)
    ON DUPLICATE KEY UPDATE FirstName = VALUES(FirstName), Surname = VALUES(Surname), Gender = VALUES(Gender);
    SET guest_id = LAST_INSERT_ID();

    -- Insert into GuestProfessions table
    SET i = 0;
    WHILE i < JSON_LENGTH(p_Professions) DO
        SET profession = JSON_UNQUOTE(JSON_EXTRACT(p_Professions, CONCAT('$[', i, ']')));

        INSERT INTO GuestProfessions (GuestNumber, Profession)
        VALUES (guest_id, profession)
        ON DUPLICATE KEY UPDATE Profession = VALUES(Profession);

        SET i = i + 1;
    END WHILE;

    -- Re-enable foreign key checks
    SET FOREIGN_KEY_CHECKS = 1; 
END //

DELIMITER ;
-- --------------------------------------------------------------------------------------------------- --


-- PROCEURE TO CLEAR ALL TABLES
DELIMITER //

CREATE PROCEDURE TruncateAllTables()
BEGIN
    -- Disable foreign key checks
    SET FOREIGN_KEY_CHECKS = 0;

    -- Truncate the tables
    TRUNCATE TABLE Guest;
    TRUNCATE TABLE GuestProfessions;
    TRUNCATE TABLE Menus;
    TRUNCATE TABLE Cuisines;
    TRUNCATE TABLE WaterSpecifications;
    TRUNCATE TABLE PoppadomsOrBread;
    TRUNCATE TABLE RestaurantsMentioned;
    TRUNCATE TABLE SecretIngredient;

    -- Re-enable foreign key checks
    SET FOREIGN_KEY_CHECKS = 1;    
END //
DELIMITER ;
-- --------------------------------------------------------------------------------------------------- --


-- PROCEDURE TO DROP AN EPISODE OVER ALL TABLES.

DELIMITER //
CREATE PROCEDURE DropEpisode(
    IN p_EpisodeNumber VARCHAR(10)
)
BEGIN
    -- Disable foreign key checks temporarily to avoid constraint violations
    SET FOREIGN_KEY_CHECKS = 0;

    -- Delete data from all related tables where the episode number matches
    DELETE FROM RestaurantsMentioned WHERE EpisodeNumber = p_EpisodeNumber;
    DELETE FROM Cuisines WHERE EpisodeNumber = p_EpisodeNumber;
    DELETE FROM Menus WHERE EpisodeNumber = p_EpisodeNumber;
    DELETE FROM GuestProfessions WHERE GuestNumber IN (SELECT GuestNumber FROM Guest WHERE EpisodeNumber = p_EpisodeNumber);
    DELETE FROM Guest WHERE EpisodeNumber = p_EpisodeNumber;
    DELETE FROM PoppadomsOrBread WHERE (FirstName, Surname) IN (SELECT FirstName, Surname FROM Menus WHERE EpisodeNumber = p_EpisodeNumber);
    DELETE FROM WaterSpecifications WHERE (FirstName, Surname) IN (SELECT FirstName, Surname FROM Menus WHERE EpisodeNumber = p_EpisodeNumber);
    
    -- Re-enable foreign key checks
    SET FOREIGN_KEY_CHECKS = 1;
END //
DELIMITER ;
-- --------------------------------------------------------------------------------------------------- --

-- ****************************** FUNCTION ****************************** --

DELIMITER //
CREATE FUNCTION CountEpisodesByCuisine(cuisine VARCHAR(30))
RETURNS VARCHAR(100)
READS SQL DATA
BEGIN
    DECLARE count_episodes INT;
    DECLARE total_episodes INT;
    DECLARE result VARCHAR(100);
    
    -- Count episodes featuring the specified cuisine.
    -- This checks the cuisines in the Cuisine table against the Cuisine Argument passed
    -- If *Any* of the courses have the cuisine, it will count the record not the number.
    SELECT COUNT(*) INTO count_episodes
    FROM Cuisines
    WHERE StarterCuisine = cuisine 
        OR MainCourseCuisine = cuisine 
        OR SidesCuisine = cuisine 
        OR DessertCuisine = cuisine;
        
    -- Count total number of episodes
    SELECT COUNT(DISTINCT EpisodeNumber) INTO total_episodes
    FROM Menus;
    
    SET result = CONCAT(count_episodes, ' out of ', total_episodes, ' episodes.');
    
    RETURN result; -- Return both counts as a concatenated string
END//
DELIMITER ;

-- ****************************** EVENT ****************************** --

SET GLOBAL event_scheduler = ON;

DELIMITER //
CREATE EVENT FiveSecondIntervalLogger
ON SCHEDULE EVERY 5 SECOND
DO
BEGIN
    INSERT INTO episode_count_log (date, episode_count)
    SELECT CURDATE(), COUNT(*) FROM Menus;
END//
DELIMITER ;

SELECT * FROM episode_count_log;
DROP EVENT FiveSecondIntervalLogger;


-- ****************************** TRIGGER ****************************** --

DELIMITER //
CREATE TRIGGER trg_after_menu_insert
AFTER INSERT ON Menus
FOR EACH ROW
BEGIN
    INSERT INTO MenuLog (LogMessage)
    VALUES (CONCAT('New episode: ', ' ', NEW.EpisodeNumber, ' ', CURRENT_USER(), NOW()));
END//
DELIMITER ;


-- ****************************** VIEW ****************************** --

-- CREATE FULL EPISODE VIEW
CREATE OR REPLACE VIEW fullepisode AS
SELECT 
    m.EpisodeNumber AS 'Episode Number',
    m.FirstName AS 'First Name',
    m.Surname AS 'Surname',
    m.SecretIngredient AS 'Secret Ingredient',
    CONCAT(
        IFNULL(w.StillOrSparkling, ''), ': ',
        IFNULL(CASE WHEN w.Ice THEN 'With Ice' ELSE 'No Ice' END, ''), ', ',
        IFNULL(w.WaterSpecifications, '')
    ) AS 'Still or Sparkling',
    CONCAT(
        IFNULL(p.PoppadomsOrBread, ''), ': ', IFNULL(p.BreadType, ''), ' ', 
        IFNULL(p.ToppingsOrAccompaniments, ''), ' ', IFNULL(p.BreadSpecifications, '')
    ) AS 'Bread Course',
    m.Starter,
    m.MainCourse AS 'Main Course',
    m.Sides,
    m.Dessert,
    m.Drinks,
    GROUP_CONCAT(
        CONCAT(
            IFNULL(r.RestaurantNames, ''), ' ', 
            IFNULL(r.RestaurantCities, ''), ' ', 
            IFNULL(r.DishMentioned, '')
        ) SEPARATOR '; '
    ) AS 'Restaurant Mentioned'
FROM 
    Menus AS m
LEFT JOIN 
    WaterSpecifications AS w ON m.FirstName = w.FirstName AND m.Surname = w.Surname
LEFT JOIN 
    PoppadomsOrBread AS p ON m.FirstName = p.FirstName AND m.Surname = p.Surname
LEFT JOIN 
    RestaurantsMentioned AS r ON m.EpisodeNumber = r.EpisodeNumber
GROUP BY 
    m.EpisodeNumber, m.FirstName, m.Surname;
    
-- ****************************** SUBQUERY ****************************** --

-- Query with Sub query to searcht he guest and guest profession tables and return female comedian guests.

SELECT 
    Guest.*, 'Comedian' AS Profession
FROM
    Guest
WHERE
    Guest.Gender = 'Female'
        AND Guest.GuestNumber IN (SELECT 
            GuestNumber
        FROM
            GuestProfessions
        WHERE
            Profession = 'Comedian');

-- ****************************** GROUPBY & HAVING ****************************** --

SELECT
	g.EpisodeNumber AS 'Episode Number', CONCAT(g.firstName, ' ', g.Surname) AS GuestName,
    COUNT(DISTINCT gp.profession) AS ProfessionCount
FROM
	Guest AS g
JOIN
	guestprofessions AS gp ON g.GuestNumber = gp.GuestNumber
GROUP BY
	g.EpisodeNumber, GuestName
HAVING
	COUNT(DISTINCT gp.Profession) = 1;

-- ****************************** JOIN ****************************** --
-- JOIN--

SELECT 
    g.EpisodeNumber,
    CONCAT(g.FirstName, ' ', g.Surname) AS GuestName,
    GROUP_CONCAT(DISTINCT gp.Profession ORDER BY gp.Profession SEPARATOR ', ') AS Professions,
    COUNT(DISTINCT rm.RestaurantNames) AS 'Number of Restaurants Mentioned',
    GROUP_CONCAT(
        DISTINCT
        NULLIF(CONCAT_WS(', ',
            NULLIF(c.StarterCuisine, ''),
            NULLIF(c.MainCourseCuisine, ''),
            NULLIF(c.SidesCuisine, ''),
            NULLIF(c.DessertCuisine, '')
        ), '')
        ORDER BY c.StarterCuisine, c.MainCourseCuisine, c.SidesCuisine, c.DessertCuisine
        SEPARATOR ', '
    ) AS 'Cuisines Mentioned'
FROM 
    Guest AS g
JOIN 
    GuestProfessions AS gp ON g.GuestNumber = gp.GuestNumber
JOIN 
    Menus AS m ON g.EpisodeNumber = m.EpisodeNumber
LEFT JOIN 
    RestaurantsMentioned AS rm ON g.EpisodeNumber = rm.EpisodeNumber
LEFT JOIN 
    Cuisines AS c ON g.EpisodeNumber = c.EpisodeNumber
GROUP BY 
    g.EpisodeNumber, GuestName
ORDER BY 
    g.EpisodeNumber, GuestName;

