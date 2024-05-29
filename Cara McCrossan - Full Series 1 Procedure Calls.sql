CALL InsertNewEpisode(
    'S01E01',                             -- Episode Number
    'Scroobius',                          -- FirstName
    'Pip',                                -- Surname
    'Male',                               -- Gender
    JSON_ARRAY('Musician'),               -- Professions
    'Pomegranate seeds',                  -- SecretIngredient
    'Tap',                                -- StillOrSparkling
    'Poppadoms',                          -- PoppadomsOrBread
    'Cheesy Garlic Bread',                -- Starter
    'Medium ham pizza on a Meadsy base',  -- MainCourse
    'Halloumi fries without pomegranates',-- Sides
    '3 scoops of Ben & Jerry\'s: Flavours: chocolate fudge brownie, peanut butter cup and a cookie dough', -- Dessert
    'Scroobius 2018 (flat Pepsi Max with rhubarb gin)',  -- Drinks
    '',                                   -- StarterCuisine
    '',                                   -- MainCourseCuisine
    '',                                   -- SidesCuisine
    '',                                   -- DessertCuisine
    '',                                   -- WaterAdditions
    FALSE,                                -- Ice
    '',                                   -- WaterSpecifications
    '',                                   -- BreadType
    '4 Mango chutney dips',               -- ToppingsOrAccompaniments
    '',                                   -- BreadSpecifications
    JSON_ARRAY('Pizza Hut'),              -- RestaurantNames
    JSON_ARRAY('Worldwide Chain'),        -- RestaurantCountry(s)
    JSON_ARRAY('Worldwide Chain'),        -- RestaurantCity(s)
    JSON_ARRAY('Cheesy garlic bread and Ham Pizza'),    -- DishesMentioned
    TRUE,                                 -- Is the secret ingredient Mentioned
    FALSE                                 -- Is the secret ingredient Chosen
);

CALL InsertNewEpisode(
    'S01E02',                             -- Episode Number
    'Grace',                              -- FirstName
    'Dent',                               -- Surname
    'Female',                             -- Gender
    JSON_ARRAY('Food Critic'),            -- Professions
    'Fennel',                             -- SecretIngredient
    'Other',                              -- StillOrSparkling
    'Poppadoms',                          -- PoppadomsOrBread
    'Beef shin ragu tagliatelle',         -- Starter
    'Chips and curry sauce',              -- MainCourse
    'String Beans',                       -- Sides
    'Cupcake with chilled jasmine tea',   -- Dessert
    'Pina Colada',                        -- Drinks
    'Italian',                            -- StarterCuisine
    'British',                            -- MainCourseCuisine
    '',                                   -- SidesCuisine
    '',                                   -- DessertCuisine
    'Taittinger champagne',               -- WaterAdditions
    FALSE,                                -- Ice
    'Tattinger Chapagne instead of water', -- WaterSpecifications
    '',                                   -- BreadType
    'Standard popadom dips',              -- ToppingsOrAccompaniments
    '',                                   -- BreadSpecifications
    JSON_ARRAY('Trulo'),                  -- RestaurantNames
    JSON_ARRAY('UK'),                     -- RestaurantCountries
    JSON_ARRAY('London'),                 -- RestaurantCities
    JSON_ARRAY('Beef shin ragu tagliatelle'), -- DishesMentioned
    FALSE,                                -- Mentioned
    FALSE                                 -- Chosen
);

CALL InsertNewEpisode(
    'S01E03',                            -- Episode Number
    'Richard',                           -- FirstName
    'Osman',                             -- Surname
    'Male',                              -- Gender
    JSON_ARRAY('Presenter', 'Writer', 'Author', 'Producer'), -- Professions
    'Coriander',                         -- SecretIngredient
    'Tap',                               -- StillOrSparkling
    'Bread',                             -- PoppadomsOrBread
    'Ham and cheese toastie',            -- Starter
    'Christmas dinner without vegetables (from the 1970s or 1980s)', -- MainCourse
    'Macaroni Cheese',                   -- Sides
    'Mint Vienetta',                     -- Dessert
    'Coca-Cola Zero Sugar',               -- Drinks
    'British',                                  -- StarterCuisine
    'British',                                  -- MainCourseCuisine
    'American',                                  -- SidesCuisine
    'British',                                  -- DessertCuisine
    '',                                  -- WaterAdditions
    FALSE,                               -- Ice
    '',                                  -- WaterSpecifications
    '',                                  -- BreadType
    'Butter',                            -- ToppingsOrAccompaniments
    'Warm Bread',                        -- BreadSpecifications
    JSON_ARRAY('Berners Tavern'),        -- RestaurantNames
    JSON_ARRAY('UK'),                    -- RestaurantCountries
    JSON_ARRAY('London'),                -- RestaurantCities
    JSON_ARRAY('Macaroni Cheese'),       -- DishesMentioned
    FALSE,                               -- Mentioned
    FALSE                                -- Chosen
);


CALL InsertNewEpisode(
    'S01E04',                            -- Episode Number
    'Nish',                              -- FirstName
    'Kumar',                             -- Surname
    'Male',                              -- Gender
    JSON_ARRAY('Comedian', 'Actor'),     -- Professions
    'Gold Leaf',                              -- SecretIngredient
    'Tap',                               -- StillOrSparkling
    'Poppadoms',                               -- PoppadomsOrBread
    'Lamb seekh kebabs',                                  -- Starter
    'Goose and Coke-soaked ham Christmas dinner',                         -- MainCourse
    'Roast potatoes', -- Sides
    'Peach Cobbler',             -- Dessert
    'Malbec',                    -- Drinks
    'Turkish',                                  -- StarterCuisine
    'British',                                  -- MainCourseCuisine
    'British',                                  -- SidesCuisine
    'American',                                  -- DessertCuisine
    '',                                  -- WaterAdditions
    FALSE,                               -- Ice
    '',                                  -- WaterSpecifications
    '',                                  -- BreadType
    '',                                  -- ToppingsOrAccompaniments
    '',                                  -- BreadSpecifications
    JSON_ARRAY('Owl & Pussycat Pub', 'Jacksn & Rye'),    -- RestaurantNames
    JSON_ARRAY('UK', 'UK'),                    -- RestaurantCountries
    JSON_ARRAY('Leicester', 'London'),             -- RestaurantCities
    JSON_ARRAY('Lamb seekh kebabs','Peach Cobbler'),                        -- DishesMentioned
    FALSE,                               -- Mentioned
    FALSE                                -- Chosen
);

CALL InsertNewEpisode(
    'S01E05',                            -- Episode Number
    'Aisling',                           -- FirstName
    'Bea',                               -- Surname
    'Female',                            -- Gender
    JSON_ARRAY('Comedian', 'Actor'),     -- Professions
    'Cloves',                            -- SecretIngredient
    'Tap',                               -- StillOrSparkling
    'Bread',                                  -- PoppadomsOrBread
    'Breaded Calamari',                             -- Starter
    'Lobster',                         -- MainCourse
    'Mashed Potato',                  -- Sides
    'Hazelnut & pecan Tart',                  -- Dessert
    '"Love me good" cocktail: vermouth, rye, cherry liqueur', -- Drinks
    'Mediterranean',                                  -- StarterCuisine
    '',                                  -- MainCourseCuisine
    'British',                                  -- SidesCuisine
    'American',                                  -- DessertCuisine
    '',                                  -- WaterAdditions
    FALSE,                               -- Ice
    '',                                  -- WaterSpecifications
    'Sourdough',                         -- BreadType
    'Kerrygold Butter',                                  -- ToppingsOrAccompaniments
    '',                                  -- BreadSpecifications
    JSON_ARRAY('Burger & Lobster'),      -- RestaurantNames
    JSON_ARRAY('UK'),                    -- RestaurantCountries
    JSON_ARRAY('Nationwide'),                -- RestaurantCities
    JSON_ARRAY('Lobster'), -- DishesMentioned
    FALSE,                               -- Mentioned
    FALSE                                -- Chosen
);

CALL InsertNewEpisode(
    'S01E06',                                    -- Episode Number
    'Joel',                                      -- FirstName
    'Dommett',                                   -- Surname
    'Male',                                      -- Gender
    JSON_ARRAY('Presenter', 'Actor', 'Comedian'), -- Professions
    'Goji berries',                              -- SecretIngredient
    'Sparkling',                                 -- StillOrSparkling
    'Bread',                                     -- PoppadomsOrBread
    'Nachos with guacamole',                     -- Starter
    'Sausage, chips, and baked beans with cheese on top (from the school canteen at Castle School)', -- MainCourse
    'Sweet potato fries',                        -- Sides
    'Strawberry cheesecake',                     -- Dessert
    'Protein shake',                             -- Drinks
    'Mexican',                                   -- StarterCuisine
    'British',                                   -- MainCourseCuisine
    '',                                          -- SidesCuisine
    '',                                          -- DessertCuisine
    '',                                          -- WaterAdditions
    FALSE,                                       -- Ice
    '',                                          -- WaterSpecifications
    'Peshwari Naan',                             -- BreadType
    '',                                          -- ToppingsOrAccompaniments
    '',                                          -- BreadSpecifications
    JSON_ARRAY(),                                -- RestaurantNames
    JSON_ARRAY(),                                -- RestaurantCountries
    JSON_ARRAY(),                                -- RestaurantCities
    JSON_ARRAY(),                                -- DishesMentioned
    FALSE,                                       -- Mentioned
    FALSE                                        -- Chosen
);

CALL InsertNewEpisode(
    'S01E07',                                                         -- Episode Number
    'Lolly',                                                           -- FirstName
    'Adefope',                                                         -- Surname
    'Female',                                                          -- Gender
    JSON_ARRAY('Comedian', 'Actor'),                                   -- Professions
    'Lemongrass',                                                      -- SecretIngredient
    'Still',                                                           -- StillOrSparkling
    'Bread',                                                           -- PoppadomsOrBread
    'Chinese platter: spring rolls, chicken satay, venison puffs (from Park Chinois, Mayfair)', -- Starter
    'A bowl of Nigerian food: jollof rice and plantain or pounded yam and egusi',                -- MainCourse
    'French fries (from McDonald\'s) with garlic mayonnaise',                                -- Sides
    'A novelty bar of Cadbury Dairy Milk',                            -- Dessert
    'Primitivo',                                                       -- Drinks
    'Chinese',                                                                -- StarterCuisine
    'Nigerian',                                                                -- MainCourseCuisine
    'Fast Food',                                                                -- SidesCuisine
    'Confectionary',                                                                -- DessertCuisine
    '',                                                         					        -- WaterAdditions
    FALSE,                                                        						    -- Ice
    '',                                                            						    -- WaterSpecifications
    '"Nice"',                                                                				-- BreadType
    'Butter, Slightly Melted',                                                              -- ToppingsOrAccompaniments
    '',                                                           							-- BreadSpecifications
    JSON_ARRAY('Park Chinois', 'McDonalds'),                                                -- RestaurantNames
    JSON_ARRAY('UK', 'Worldwide'),                                     				        -- RestaurantCountries
    JSON_ARRAY('London', 'Worldwide'),                                                      -- RestaurantCities
    JSON_ARRAY('Chinese platter'),                                     			            -- DishesMentioned
    FALSE,                                                           						-- Mentioned
    FALSE                                                              						-- Chosen
);

CALL InsertNewEpisode(
    'S01E08',                                                                               -- Episode Number (p_EpisodeNumber)
    'Tom',                                                                                  -- FirstName (p_FirstName)
    'Kerridge',                                                                             -- Surname (p_Surname)
    'Male',                                                                                 -- Gender (p_Gender)
    JSON_ARRAY('Chef', 'Presenter'),                                                        -- Professions (p_Professions)
    'Quinoa',                                                                               -- SecretIngredient (p_SecretIngredient)
    'Other',                                          						                -- StillOrSparkling (p_StillOrSparkling)
    'Bread',                                                                                -- PoppadomsOrBread (p_PoppadomsOrBread)
    'Fresh calamari and mayonnaise',                                                        -- Starter (p_Starter)
    'Fish and chips with mushy peas, gravy and curry sauce',                                -- MainCourse (p_MainCourse)
    'Fried aubergine (from Rat Alley, Singapore)',                               			-- Sides (p_Sides)
    'Knickerbocker glory (from Berni Inn in 1982)',                                         -- Dessert (p_Dessert)
    '24 cans of Stella Artois and a can of diet Lilt',                                      -- Drinks (p_Drinks)
    'Mediterranean',                                                                        -- StarterCuisine (p_StarterCuisine)
    'British',                                                                              -- MainCourseCuisine (p_MainCourseCuisine)
    'Street Food',                                                                          -- SidesCuisine (p_SidesCuisine)
    'British',                                                                              -- DessertCuisine (p_DessertCuisine)
    '',             																		-- WaterAdditions (p_WaterAdditions)
    FALSE,                                                                                  -- Ice (p_Ice)
    'Whatever\'s easiest, is convinced to have half still and half sparkling',              -- WaterSpecifications (p_WaterSpecifications)
    '',                                                                      			    -- BreadType (p_BreadType)
    'Butter - freshly churned from Frantzén, Stockholm',                                    -- ToppingsOrAccompaniments (p_ToppingsOrAccompaniments)
    'Fresh Baked',                                                                          -- BreadSpecifications (p_BreadSpecifications)
    JSON_ARRAY(),                                                                           -- RestaurantNames (p_RestaurantNames)
    JSON_ARRAY(),                                                                           -- RestaurantCountries (p_RestaurantCountries)
    JSON_ARRAY(),                                                                           -- RestaurantCities (p_RestaurantCities)
    JSON_ARRAY(),                                                                           -- DishesMentioned (p_DishesMentioned)
    FALSE,                                                                                  -- Mentioned (p_Mentioned)
    FALSE                                                                                   -- Chosen (p_Chosen)
);

CALL InsertNewEpisode(
    'S01E09',                                                                              -- Episode Number (p_EpisodeNumber)
    'Selasi',                                                                              -- FirstName (p_FirstName)
    'Gbormittah',                                                                          -- Surname (p_Surname)
    'Male',                                                                                -- Gender (p_Gender)
    JSON_ARRAY('Banker', 'Baker'),                                                         -- Professions (p_Professions)
    'Liquorice',                                                                           -- SecretIngredient (p_SecretIngredient)
    'Tap',                                                                                 -- StillOrSparkling (p_StillOrSparkling)
    'Bread',                                                                               -- PoppadomsOrBread (p_PoppadomsOrBread)
    'Prawn and lobster bisque',                                                            -- Starter (p_Starter)
    'Surf and turf: rump steak, calamari, and prawns',    -- MainCourse (p_MainCourse)
    'Fried plantain and roasted peanuts',                                                  -- Sides (p_Sides)
    'Molten chocolate cake with blackberry sauce with black pepper',                       -- Dessert (p_Dessert)
    'Old fashioned (made with Laphroaig)',                                                 -- Drinks (p_Drinks)
    'French',                                                                              -- StarterCuisine (p_StarterCuisine)
    'American',                                                                            -- MainCourseCuisine (p_MainCourseCuisine)
    'Caribbean',                                                                           -- SidesCuisine (p_SidesCuisine)
    '',                                                                  		           -- DessertCuisine (p_DessertCuisine)
    '',                                                                                    -- WaterAdditions (p_WaterAdditions)
    FALSE,                                                                                 -- Ice (p_Ice)
    '',                                                                                    -- WaterSpecifications (p_WaterSpecifications)
    'Peshwari Naan',                                                                       -- BreadType (p_BreadType)
    '',                                                                                    -- ToppingsOrAccompaniments (p_ToppingsOrAccompaniments)
    '',                                                                                    -- BreadSpecifications (p_BreadSpecifications)
    JSON_ARRAY('Blues Kitchen'),                                                           -- RestaurantNames (p_RestaurantNames)
    JSON_ARRAY('UK'),                                                                      -- RestaurantCountries (p_RestaurantCountries)
    JSON_ARRAY('London'),                                                    	           -- RestaurantCities (p_RestaurantCities)
    JSON_ARRAY('Surf and turf'),                                                           -- DishesMentioned (p_DishesMentioned)
    FALSE,                                                                                 -- Mentioned (p_Mentioned)
    FALSE                                                                                  -- Chosen (p_Chosen)
);

CALL InsertNewEpisode(
    'S01E10',                                                                                      -- Episode Number (p_EpisodeNumber)
    'Lou',                                                                                         -- FirstName (p_FirstName)
    'Sanders',                                                                                     -- Surname (p_Surname)
    'Female',                                                                                      -- Gender (p_Gender)
    JSON_ARRAY('Comedian', 'Writer', 'Actor'),                                                     -- Professions (p_Professions)
    'Poppy seeds',                                                                                 -- SecretIngredient (p_SecretIngredient)
    'Still',                                                                                       -- StillOrSparkling (p_StillOrSparkling)
    'Bread',                                                                                       -- PoppadomsOrBread (p_PoppadomsOrBread)
    'Broccoli soufflé',                                                                            -- Starter (p_Starter)
    '5 global tapas dishes: Thai red curry w/ brown rice; Yorkshire pudding w/ mashed potato, roast potato, stuffing & gravy; buffalo cauliflower; cheese, spinach, & mushrooms with cream; fake fish tacos',    -- MainCourse (p_MainCourse)
    'Okra',                                                                                        -- Sides (p_Sides)
    'Mint chocolate chip vegan cornetto',                                                          -- Dessert (p_Dessert)
    'Orange blossom Japanese tea',                                                                 -- Drinks (p_Drinks)
    'French',                                                                                      -- StarterCuisine (p_StarterCuisine)
    'Global',                                                                                      -- MainCourseCuisine (p_MainCourseCuisine)
    '',                                                                                    -- SidesCuisine (p_SidesCuisine)
    'Vegan',                                                                                       -- DessertCuisine (p_DessertCuisine)
    'Lemon',                                                                                       -- WaterAdditions (p_WaterAdditions)
    TRUE,                                                                                          -- Ice (p_Ice)
    'Not much ice',                                                                                -- WaterSpecifications (p_WaterSpecifications)
    'Olive/Tiger bread hybrid',                                                                    -- BreadType (p_BreadType)
    '',                                                                                            -- ToppingsOrAccompaniments (p_ToppingsOrAccompaniments)
    'Warm Bread',                                                                                  -- BreadSpecifications (p_BreadSpecifications)
    JSON_ARRAY('Paradise Palms'),                                                                  -- RestaurantNames (p_RestaurantNames)
    JSON_ARRAY('UK'),                                                                              -- RestaurantCountries (p_RestaurantCountries)
    JSON_ARRAY('Edinburgh'),                                                                       -- RestaurantCities (p_RestaurantCities)
    JSON_ARRAY('Buffalo cauliflower'),                                                             -- DishesMentioned (p_DishesMentioned)
    FALSE,                                                                                         -- Mentioned (p_Mentioned)
    FALSE                                                                                          -- Chosen (p_Chosen)
);



CALL InsertNewEpisode(
    'S01E11',                                                                              -- Episode Number (p_EpisodeNumber)
    'Krishnan',                                                                            -- FirstName (p_FirstName)
    'Guru-Murthy',                                                                         -- Surname (p_Surname)
    'Male',                                                                                -- Gender (p_Gender)
    JSON_ARRAY('Journalist', 'News Reader'),                                               -- Professions (p_Professions)
    'Physalis',                                                                            -- SecretIngredient (p_SecretIngredient)
    'Sparkling',                                                                           -- StillOrSparkling (p_StillOrSparkling)
    'Bread',                                                                               -- PoppadomsOrBread (p_PoppadomsOrBread)
    'Tuna and beef tataki',                                             -- Starter (p_Starter)
    'Tiger prawn curry with basmati rice and homemade yoghurt',                            -- MainCourse (p_MainCourse)
    'Triple-cooked chips',                                                                 -- Sides (p_Sides)
    'Chocolate steamed pudding with chocolate sauce (from E & O, Notting Hill)',           -- Dessert (p_Dessert)
    'Bollinger',                                                                           -- Drinks (p_Drinks)
    'Japanese',                                                                            -- StarterCuisine (p_StarterCuisine)
    'Indian',                                                                              -- MainCourseCuisine (p_MainCourseCuisine)
    'British',                                                                             -- SidesCuisine (p_SidesCuisine)
    'British',                                                                             -- DessertCuisine (p_DessertCuisine)
    '',                                                                                    -- WaterAdditions (p_WaterAdditions)
    FALSE,                                                                                 -- Ice (p_Ice)
    '',                                                                                    -- WaterSpecifications (p_WaterSpecifications)
    'French, Cheesy & Paratha',                                                            -- BreadType (p_BreadType)
    '',                                                                                    -- ToppingsOrAccompaniments (p_ToppingsOrAccompaniments)
    'French bread from Ma Cuisine, Kew & Cheesy bread from Gaucho, London',                -- BreadSpecifications (p_BreadSpecifications)
    JSON_ARRAY('Nobu', 'E&O', 'Ma Cuisine', 'Gaucho'),                                     -- RestaurantNames (p_RestaurantNames)
    JSON_ARRAY('USA', 'UK', 'UK', 'UK'),                                                   -- RestaurantCountries (p_RestaurantCountries)
    JSON_ARRAY('Miami', 'London', 'London', 'London'),                                     -- RestaurantCities (p_RestaurantCities)
    JSON_ARRAY('Tuna and beef tataki', 'Chocolate steamed pudding', 'French Bread', 'Cheesy Bread'), -- DishesMentioned (p_DishesMentioned)
    FALSE,                                                                                 -- Mentioned (p_Mentioned)
    FALSE                                                                                  -- Chosen (p_Chosen)
);

CALL InsertNewEpisode(
    'S01E12',                                                                              -- Episode Number (p_EpisodeNumber)
    'Josie',                                                                               -- FirstName (p_FirstName)
    'Long',                                                                                -- Surname (p_Surname)
    'Female',                                                                              -- Gender (p_Gender)
    JSON_ARRAY('Comedian'),                                                                -- Professions (p_Professions)
    'Bay leaves',                                                                          -- SecretIngredient (p_SecretIngredient)
    'Sparkling',                                                                           -- StillOrSparkling (p_StillOrSparkling)
    'Bread',                                                                               -- PoppadomsOrBread (p_PoppadomsOrBread)
    'A selection of dumplings',                                                            -- Starter (p_Starter)
    'A three bird roast Christmas dinner',                                                 -- MainCourse (p_MainCourse)
    'Devils on horseback',                                                                 -- Sides (p_Sides)
    'Gypsy tart with squirty cream',                                                       -- Dessert (p_Dessert)
    'The barman\'s choice of gin cocktail',                                                -- Drinks (p_Drinks)
    'Chinese',                                                                             -- StarterCuisine (p_StarterCuisine)
    'British',                                                                             -- MainCourseCuisine (p_MainCourseCuisine)
    'British',                                                                             -- SidesCuisine (p_SidesCuisine)
    'British',                                                                             -- DessertCuisine (p_DessertCuisine)
    '',                                                                                    -- WaterAdditions (p_WaterAdditions)
    FALSE,                                                                                 -- Ice (p_Ice)
    '',                                                                                    -- WaterSpecifications (p_WaterSpecifications)
    'Sourdough',                                                                           -- BreadType (p_BreadType)
    'Butter',                                                                              -- ToppingsOrAccompaniments (p_ToppingsOrAccompaniments)
    'From St John, London',                                                                -- BreadSpecifications (p_BreadSpecifications)
    JSON_ARRAY('My Neighbours The Dumplings', 'St John'),                                  -- RestaurantNames (p_RestaurantNames)
    JSON_ARRAY('UK', 'UK'),                                                                -- RestaurantCountries (p_RestaurantCountries)
    JSON_ARRAY('London', 'London'),                                                        -- RestaurantCities (p_RestaurantCities)
    JSON_ARRAY('A selection of dumplings', 'Sourdough'),                                   -- DishesMentioned (p_DishesMentioned)
    FALSE,                                                                                 -- Mentioned (p_Mentioned)
    FALSE                                                                                  -- Chosen (p_Chosen)
);

CALL InsertNewEpisode(
    'S01E13',                                                                              -- Episode Number (p_EpisodeNumber)
    'Phil',                                                                                -- FirstName (p_FirstName)
    'Wang',                                                                                -- Surname (p_Surname)
    'Male',                                                                                -- Gender (p_Gender)
    JSON_ARRAY('Comedian', 'Writer'),                                                      -- Professions (p_Professions)
    'Cardamon pods',                                                                       -- SecretIngredient (p_SecretIngredient)
    'Sparkling',                                                                           -- StillOrSparkling (p_StillOrSparkling)
    'Poppadoms',                                                                           -- PoppadomsOrBread (p_PoppadomsOrBread)
    'Salmon roe with betel nut leaf',                                					   -- Starter (p_Starter)
    'Wat tan hor',                                                                         -- MainCourse (p_MainCourse)
    'Clear Chinese broth',                                                                 -- Sides (p_Sides)
    'Banoffee pie',                                                                        -- Dessert (p_Dessert)
    'Riesling',                                                                            -- Drinks (p_Drinks)
    'Malaysian',                                                                           -- StarterCuisine (p_StarterCuisine)
    'Chinese',                                                                             -- MainCourseCuisine (p_MainCourseCuisine)
    'Chinese',                                                                             -- SidesCuisine (p_SidesCuisine)
    'British',                                                                             -- DessertCuisine (p_DessertCuisine)
    '',                                                                                    -- WaterAdditions (p_WaterAdditions)
    FALSE,                                                                                 -- Ice (p_Ice)
    '',                                                                                    -- WaterSpecifications (p_WaterSpecifications)
    'Poppadoms',                                                                           -- BreadType (p_BreadType)
    'Mango chutney, onion salad, and raita',                                               -- ToppingsOrAccompaniments (p_ToppingsOrAccompaniments)
    '',                                                                                    -- BreadSpecifications (p_BreadSpecifications)
    JSON_ARRAY('Kebaya'),                                                                  -- RestaurantNames (p_RestaurantNames)
    JSON_ARRAY('Malaysia'),                                                                -- RestaurantCountries (p_RestaurantCountries)
    JSON_ARRAY('Penang'),                                                                  -- RestaurantCities (p_RestaurantCities)
    JSON_ARRAY('Salmon roe with betel nut leaf'), 										   -- DishesMentioned (p_DishesMentioned)
    FALSE,                                                                                 -- Mentioned (p_Mentioned)
    FALSE                                                                                  -- Chosen (p_Chosen)
);

CALL InsertNewEpisode(
    'S01E14',                                                                              -- Episode Number (p_EpisodeNumber)
    'Jack',                                                                                -- FirstName (p_FirstName)
    'McBrayer',                                                                            -- Surname (p_Surname)
    'Male',                                                                                -- Gender (p_Gender)
    JSON_ARRAY('Actor', 'Comedian'),                                                       -- Professions (p_Professions)
    'Flaked almonds',                                                                      -- SecretIngredient (p_SecretIngredient)
    'Still',                                                                               -- StillOrSparkling (p_StillOrSparkling)
    'Bread',                                                                               -- PoppadomsOrBread (p_PoppadomsOrBread)
    'Spinach salad',                                                                       -- Starter (p_Starter)
    'Barbecue chicken',                                                                    -- MainCourse (p_MainCourse)
    'Mashed potato, corn on the cob, collard greens',                                      -- Sides (p_Sides)
    'Strawberry shortcake',                                                                -- Dessert (p_Dessert)
    'Sweet tea',                                                                           -- Drinks (p_Drinks)
    '',                                                                                    -- StarterCuisine (p_StarterCuisine)
    'American',                                                                            -- MainCourseCuisine (p_MainCourseCuisine)
    'American',                                                                            -- SidesCuisine (p_SidesCuisine)
    'American',                                                                            -- DessertCuisine (p_DessertCuisine)
    '',                                                                                    -- WaterAdditions (p_WaterAdditions)
    FALSE,                                                                                 -- Ice (p_Ice)
    '',                                                                                    -- WaterSpecifications (p_WaterSpecifications)
    'Portuguese sweet bread beef slider',                                                  -- BreadType (p_BreadType)
    '',                                                                                    -- ToppingsOrAccompaniments (p_ToppingsOrAccompaniments)
    '',                                                                                    -- BreadSpecifications (p_BreadSpecifications)
    JSON_ARRAY(),                                                                          -- RestaurantNames (p_RestaurantNames)
    JSON_ARRAY(),                                                                          -- RestaurantCountries (p_RestaurantCountries)
    JSON_ARRAY(),                                                                          -- RestaurantCities (p_RestaurantCities)
    JSON_ARRAY(),                                                                          -- DishesMentioned (p_DishesMentioned)
    FALSE,                                                                                 -- Mentioned (p_Mentioned)
    FALSE                                                                                  -- Chosen (p_Chosen)
);

-- Sindhu Vee
CALL InsertNewEpisode(
    'S01E15',                                                                              -- Episode Number (p_EpisodeNumber)
    'Sindhu',                                                                               -- FirstName (p_FirstName)
    'Vee',                                                                                  -- Surname (p_Surname)
    'Female',                                                                               -- Gender (p_Gender)
    JSON_ARRAY('Comedian', 'Writer', 'Actor'),                                               -- Professions (p_Professions)
    'Sweet chilli sauce',                                                                   -- SecretIngredient (p_SecretIngredient)
    'Still',                                                                                -- StillOrSparkling (p_StillOrSparkling)
    'Bread',                                                                                     -- PoppadomsOrBread (p_PoppadomsOrBread)
    'Ceviche',                                                                                -- Starter (p_Starter)
    'Arrabiata Capellini',                                                                              -- MainCourse (p_MainCourse)
    'Dauphinoise potatoes ',                                                                  -- Sides (p_Sides)
    'The Godfather Sundae (from Bella Pasta)',                                      -- Dessert (p_Dessert)
    'White Russian (from London Savoy, Covent Garden)',                                                                                     -- Drinks (p_Drinks)
    'Peruvian',                                                                                     -- StarterCuisine (p_StarterCuisine)
    'Italian',                                                                                     -- MainCourseCuisine (p_MainCourseCuisine)
    'French',                                                                                     -- SidesCuisine (p_SidesCuisine)
    'British',                                                                                     -- DessertCuisine (p_DessertCuisine)
    '',                                                                                     -- WaterAdditions (p_WaterAdditions)
    FALSE,                                                                                  -- Ice (p_Ice)
    'Room Temperature',                                                                                     -- WaterSpecifications (p_WaterSpecifications)
    'Sourdough',                                                                                     -- BreadType (p_BreadType)
    '',                                                                 -- ToppingsOrAccompaniments (p_ToppingsOrAccompaniments)
    '',                                                                                     -- BreadSpecifications (p_BreadSpecifications)
    JSON_ARRAY('St Johns', 'La Petite Maison', 'The Savoy', 'Bella Italia'),                                                                           -- RestaurantNames (p_RestaurantNames)
    JSON_ARRAY('UK', 'UK', 'UK', 'UK'),                                                                           -- RestaurantCountries (p_RestaurantCountries)
    JSON_ARRAY('London', 'London', 'London', 'Nationwide'),                                                                           -- RestaurantCities (p_RestaurantCities)
    JSON_ARRAY('Sourdough', 'Dauphinoie Potatoes', 'White Russian', 'The Godfather Sundae'),                                                                           -- DishesMentioned (p_DishesMentioned)
    FALSE,                                                                                  -- Mentioned (p_Mentioned)
    FALSE                                                                                   -- Chosen (p_Chosen)
);


-- Jamie Demetriou
CALL InsertNewEpisode(
    'S01E16',                                                                              -- Episode Number (p_EpisodeNumber)
    'Jamie',                                                                                -- FirstName (p_FirstName)
    'Demetriou',                                                                            -- Surname (p_Surname)
    'Male',                                                                                 -- Gender (p_Gender)
    JSON_ARRAY('Comedian', 'Writer', 'Actor'),                                               -- Professions (p_Professions)
    'Marzipan',                                                                             -- SecretIngredient (p_SecretIngredient)
    'Sparkling',                                                                            -- StillOrSparkling (p_StillOrSparkling)
    'Bread',                                                                                     -- PoppadomsOrBread (p_PoppadomsOrBread)
    'Dill pickles',                                                                                -- Starter (p_Starter)
    'Dandan noodles, beef roll, pork potstickers, and pea shoots',                                            -- MainCourse (p_MainCourse)
    'Salad',                                                                                -- Sides (p_Sides)
    'Tipsy cake (from Dinner by Heston, Knightsbridge',                                         -- Dessert (p_Dessert)
    'Yuzu ginger beer',                                                                                     -- Drinks (p_Drinks)
    '',                                                                                     -- StarterCuisine (p_StarterCuisine)
    '',                                                                                     -- MainCourseCuisine (p_MainCourseCuisine)
    '',                                                                                     -- SidesCuisine (p_SidesCuisine)
    '',                                                                                     -- DessertCuisine (p_DessertCuisine)
    '',                                                                                     -- WaterAdditions (p_WaterAdditions)
    FALSE,                                                                                  -- Ice (p_Ice)
    '',                                                                                     -- WaterSpecifications (p_WaterSpecifications)
    '',                                                                                     -- BreadType (p_BreadType)
    'from Pidgin, Hackney',                                                                -- ToppingsOrAccompaniments (p_ToppingsOrAccompaniments)
    '',                                                                                     -- BreadSpecifications (p_BreadSpecifications)
    JSON_ARRAY('Katz\'s Deli', 'Pine & Crane', 'Jidori', 'Dinner by Heston'),                                                                           -- RestaurantNames (p_RestaurantNames)
    JSON_ARRAY('USA', 'USA', 'UK', 'UK'),                                                                           -- RestaurantCountries (p_RestaurantCountries)
    JSON_ARRAY('New York', 'Los Angeles', 'London', 'London'),                                                                           -- RestaurantCities (p_RestaurantCities)
    JSON_ARRAY('Dill pickles', 'Dandan noodles, beef roll, pork potstickers, pea shoots',  'Tipsey Cake', 'Yuzu ginger beer'),                                         -- DishesMentioned (p_DishesMentioned)
    FALSE,                                                                                  -- Mentioned (p_Mentioned)
    FALSE                                                                                   -- Chosen (p_Chosen)
);


CALL InsertNewEpisode(
    'S01E17',                              -- Episode Number - format S0XE0X - i.e S01E01 - if it gets to season 10 S10E01 etc
    'Victoria',                              -- FirstName
    'Coren-Mitchell',                              -- Surname
    'Female',                              -- Gender: 'Female', 'Male' or 'Non Binary' 
    JSON_ARRAY('Presenter', 'Poker Player'),           -- Professions - Always enter as an array
    'Quails Eggs',                              -- SecretIngredient
    'Tap',                              -- StillOrSparkling - Please choose Still, Sparkling, Mixed, or None. IF NONE, WATER SPECIFICATIONS MUST BE COMPLETED
    'Bread',                              -- PoppadomsOrBread
    'Avocado with vinaigrette',                              -- Starter
    'Ploughman\'s lunch (with cheddar and stilton, no celery)',                              -- MainCourse
    'Cucumber salad',                              -- Sides
    'Rice pudding with cinnamon',                              -- Dessert
    'Salted caramel martini',                              -- Drinks
    '',                              -- StarterCuisine
    'British',                              -- MainCourseCuisine
    'British',                              -- DessertCuisine
    '',                              -- SidesCuisine
    '',                              -- WaterAdditions
    FALSE,                           -- Ice
    '',                              -- WaterSpecifications
    'Wolemeal with raisins',                              -- BreadType
    'Butter',                              -- ToppingsOrAccompaniments
    'Warm',                              -- BreadSpecifications
    JSON_ARRAY(),         		 -- RestaurantNames - if no restaurants mentioned, remove quotations.
    JSON_ARRAY(),         		 -- RestaurantCountry(s)
    JSON_ARRAY(),         		 -- RestaurantCity(s)
    JSON_ARRAY(),         		 -- DishesMentioned
    FALSE,                           -- Is the secret ingredient Mentioned
    FALSE                            -- Is the secret ingredient Chosen (resulting in the guest getting kicked off the pod!!)
);

CALL InsertNewEpisode(
    'S01E18',                              -- Episode Number - format S0XE0X - i.e S01E01 - if it gets to season 10 S10E01 etc
    'Desiree',                              -- FirstName
    'Burch',                              -- Surname
    'Female',                              -- Gender: 'Female', 'Male' or 'Non Binary' 
    JSON_ARRAY('Actor', 'Presenter'),           -- Professions - Always enter as an array
    'Raw Red Onions',                              -- SecretIngredient
    'Still',                              -- StillOrSparkling - Please choose Still, Sparkling, Mixed, or None. IF NONE, WATER SPECIFICATIONS MUST BE COMPLETED
    'Other',                              -- PoppadomsOrBread
    'Oysters',                              -- Starter
    'Goat Tacos',                              -- MainCourse
    'broccoli Rabe',                              -- Sides
    '',                              -- Dessert
    '',                              -- Drinks
    '',                              -- StarterCuisine
    '',                              -- MainCourseCuisine
    '',                              -- DessertCuisine
    '',                              -- SidesCuisine
    'Lemon',                              -- WaterAdditions
    FALSE,                           -- Ice
    '',                              -- WaterSpecifications
    '',                              -- BreadType
    '',                              -- ToppingsOrAccompaniments
    'Tortilla Chips & Slasa instead of bread',                              -- BreadSpecifications
    JSON_ARRAY('Maurepas Food', 'Maurepas Food'),         		 -- RestaurantNames - if no restaurants mentioned, remove quotations.
    JSON_ARRAY('USA', 'USA'),         		 -- RestaurantCountry(s)
    JSON_ARRAY('Los Angeles', 'Los Angeles'),         		 -- RestaurantCity(s)
    JSON_ARRAY('Goat Tacos', '"Jesus H Christ" cocktail'),         		 -- DishesMentioned
    FALSE,                           -- Is the secret ingredient Mentioned
    FALSE                            -- Is the secret ingredient Chosen (resulting in the guest getting kicked off the pod!!)
);

CALL InsertNewEpisode(
    'S01E19',                              -- Episode Number - format S0XE0X - i.e S01E01 - if it gets to season 10 S10E01 etc
    'Gemma',                              -- FirstName
    'Cairney',                              -- Surname
    'Female',                              -- Gender: 'Female', 'Male' or 'Non Binary' 
    JSON_ARRAY('Presenter'),           -- Professions - Always enter as an array
    'Whole Peppercorns',                              -- SecretIngredient
    'Sparkling',                              -- StillOrSparkling - Please choose Still, Sparkling, Mixed, or None. IF NONE, WATER SPECIFICATIONS MUST BE COMPLETED
    'Poppadoms',                              -- PoppadomsOrBread
    'Parwn Cocktail',                              -- Starter
    'Lamb Madreas & Muchroom Rice',                              -- MainCourse
    'Jalapeño poppers',                              -- Sides
    'Mango',                              -- Dessert
    'Tattinger Champagne',                              -- Drinks
    'British',                              -- StarterCuisine
    'Indian',                              -- MainCourseCuisine
    '',                              -- DessertCuisine
    'American',                              -- SidesCuisine
    '',                              -- WaterAdditions
    FALSE,                           -- Ice
    '',                              -- WaterSpecifications
    '',                              -- BreadType
    'Raita & Guacamole',                              -- ToppingsOrAccompaniments
    '',                              -- BreadSpecifications
    JSON_ARRAY('Olby\'s Soul Cafe'),         		 -- RestaurantNames - if no restaurants mentioned, remove quotations.
    JSON_ARRAY('UK'),         		 -- RestaurantCountry(s)
    JSON_ARRAY('Margate'),         		 -- RestaurantCity(s)
    JSON_ARRAY('Jalapeño poppers'),         		 -- DishesMentioned
    FALSE,                           -- Is the secret ingredient Mentioned
    FALSE                            -- Is the secret ingredient Chosen (resulting in the guest getting kicked off the pod!!)
);

CALL InsertNewEpisode(
    'S01E20',                              -- Episode Number - format S0XE0X - i.e S01E01 - if it gets to season 10 S10E01 etc
    'Rose',                              -- FirstName
    'McGowan',                              -- Surname
    'Female',                              -- Gender: 'Female', 'Male' or 'Non Binary' 
    JSON_ARRAY('Actor', 'Activist'),   -- Professions - Always enter as an array
    'Foam',                              -- SecretIngredient
    'Still',                              -- StillOrSparkling - Please choose Still, Sparkling, Mixed, or None. IF NONE, WATER SPECIFICATIONS MUST BE COMPLETED
    'Bread',                              -- PoppadomsOrBread
    'Caprese Salad',                              -- Starter
    'Pasta with tomato, basil & parmesan',                              -- MainCourse
    'Sauteed spinach with garlic',                              -- Sides
    'Red Velvet Cake',                              -- Dessert
    'Opus One',                              -- Drinks
    'Italian',                              -- StarterCuisine
    'Italian',                              -- MainCourseCuisine
    'American',                              -- DessertCuisine
    '',                              -- SidesCuisine
    '',                              -- WaterAdditions
    FALSE,                           -- Ice
    '',                              -- WaterSpecifications
    'Butter Naan',                              -- BreadType
    '',                              -- ToppingsOrAccompaniments
    '',                              -- BreadSpecifications
    JSON_ARRAY(),         		 -- RestaurantNames - if no restaurants mentioned, remove quotations.
    JSON_ARRAY(),         		 -- RestaurantCountry(s)
    JSON_ARRAY(),         		 -- RestaurantCity(s)
    JSON_ARRAY(),         		 -- DishesMentioned
    FALSE,                           -- Is the secret ingredient Mentioned
    FALSE                            -- Is the secret ingredient Chosen (resulting in the guest getting kicked off the pod!!)
);


-- SELECT * FROM fullepisode;
