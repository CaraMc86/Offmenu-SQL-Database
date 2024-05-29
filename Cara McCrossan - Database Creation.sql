DROP DATABASE IF EXISTS OffMenu;

CREATE DATABASE OffMenu;
USE OffMenu;

CREATE TABLE Guest
(
    GuestNumber INT AUTO_INCREMENT PRIMARY KEY,
    EpisodeNumber VARCHAR(10),
    FirstName VARCHAR (30) NOT NULL,
    Surname VARCHAR (30) NOT NULL,
    Gender ENUM('Female', 'Male', 'Non Binary')
);

CREATE TABLE GuestProfessions
(
    GuestProfessionID INT AUTO_INCREMENT PRIMARY KEY,
    GuestNumber INT,
    Profession VARCHAR(30)
);

CREATE TABLE Menus
(
    EpisodeNumber VARCHAR(10) NOT NULL PRIMARY KEY,
    FirstName VARCHAR (30),
    Surname VARCHAR (30),
    SecretIngredient VARCHAR(30),
    StillOrSparkling VARCHAR(15),
    PoppadomsOrBread VARCHAR(10),
    Starter VARCHAR(255),
    MainCourse VARCHAR(255),
    Sides VARCHAR (255),
    Dessert VARCHAR(255),
    Drinks VARCHAR(255)
);

CREATE TABLE Cuisines
(
EpisodeNumber VARCHAR(10) NOT NULL PRIMARY KEY,
StarterCuisine VARCHAR (30),
MainCourseCuisine VARCHAR (30),
SidesCuisine VARCHAR (30),
DessertCuisine VARCHAR (30)
);

CREATE TABLE WaterSpecifications
(
    FirstName VARCHAR (30) NOT NULL,
    Surname VARCHAR (30) NOT NULL,
    StillOrSparkling VARCHAR(15),
    WaterAdditions VARCHAR(50),
    Ice BOOLEAN,
    WaterSpecifications TEXT,
    PRIMARY KEY (FirstName, Surname)
);

CREATE TABLE PoppadomsOrBread
(
    FirstName VARCHAR (30) NOT NULL,
    Surname VARCHAR (30) NOT NULL,
    PoppadomsOrBread VARCHAR(10),
    BreadType VARCHAR(255),
    ToppingsOrAccompaniments VARCHAR(50),
    BreadSpecifications TEXT,
    PRIMARY KEY (FirstName, Surname)
);

CREATE TABLE RestaurantsMentioned
(
    EpisodeNumber VARCHAR(10) NOT NULL,
    RestaurantNames VARCHAR(255) NOT NULL,
    RestaurantCountries VARCHAR(255),
    RestaurantCities VARCHAR(255),
    DishMentioned VARCHAR(255),
    PRIMARY KEY (EpisodeNumber, RestaurantNames)
);

CREATE TABLE SecretIngredient
(
    SecretIngredient VARCHAR(30) PRIMARY KEY NOT NULL,
    Mentioned BOOLEAN,
    Chosen BOOLEAN
);

CREATE TABLE MenuLog
(
LogID INT PRIMARY KEY AUTO_INCREMENT,
LogMessage VARCHAR(255)
);

CREATE TABLE episode_count_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    episode_count INT
);

-- --------------------------------------------------------------------------------------------------- --
-- ALL FOREGIN KEYS --


ALTER TABLE Guest ADD FOREIGN KEY (EpisodeNumber) REFERENCES Menus (EpisodeNumber) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE GuestProfessions ADD FOREIGN KEY (GuestNumber) REFERENCES Guest (GuestNumber) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Menus ADD FOREIGN KEY (FirstName, Surname) REFERENCES WaterSpecifications (FirstName, Surname) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE Menus ADD FOREIGN KEY (FirstName, Surname) REFERENCES PoppadomsOrBread (FirstName, Surname) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE Menus ADD FOREIGN KEY (SecretIngredient) REFERENCES SecretIngredient (SecretIngredient) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE Cuisines ADD FOREIGN KEY (EpisodeNumber) REFERENCES Menus (EpisodeNumber) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE RestaurantsMentioned ADD FOREIGN KEY (EpisodeNumber) REFERENCES Menus (EpisodeNumber) ON DELETE CASCADE ON UPDATE CASCADE;


-- --------------------------------------------------------------------------------------------------- --


        
        
        

