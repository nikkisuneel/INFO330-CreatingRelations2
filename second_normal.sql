
CREATING/INSERTING INTO TABLES

CREATE TABLE pokemon (pokedex_number INTEGER PRIMARY KEY, name TEXT, classification TEXT, type1 TEXT, type2 TEXT, height_m FLOAT, weight_kg FLOAT, base_happiness INTEGER, capture_rate INTEGER, base_egg_steps INTEGER, abilities TEXT, percentage_male FLOAT, generation INTEGER, is_legendary INTEGER);
CREATE TABLE stats (pokedex_number INTEGER PRIMARY KEY, name TEXT, attack INTEGER, speed INTEGER, hp INTEGER, sp_attack INTEGER, sp_defense INTEGER, defense INTEGER, experience_growth INTEGER);
CREATE TABLE against (pokedex_number INTEGER PRIMARY KEY, name TEXT, against_bug NUMERIC, against_dark NUMERIC, against_dragon NUMERIC, against_electric NUMERIC, against_fairy NUMERIC, against_fight NUMERIC, against_fire NUMERIC, against_flying NUMERIC, against_ghost NUMERIC, against_grass NUMERIC, against_ground NUMERIC, against_ice NUMERIC, against_normal NUMERIC, against_poison NUMERIC, against_psychic NUMERIC, against_rock NUMERIC, against_steel NUMERIC, against_water NUMERIC);

INSERT INTO pokemon (pokedex_number, name, classification, type1, type2, height_m, weight_kg, capture_rate, base_egg_steps, abilities, percentage_male, base_happiness, is_legendary, generation)
   ...> SELECT pokedex_number, name, classfication, type1, type2, height_m, weight_kg, capture_rate, base_egg_steps, abilities, percentage_male, base_happiness, is_legendary, generation
   ...> FROM imported_pokemon_data;
   
INSERT INTO stats (pokedex_number, name, attack, speed, hp, sp_attack, sp_defense, defense, experience_growth)
   ...> SELECT attack, speed, hp, sp_attack, sp_defense, defense, experience_growth
   ...> FROM imported_pokemon_data;
 
INSERT INTO against (pokedex_number, name, against_bug, against_dark, against_dragon, against_electric, against_fairy, against_fight, against_fire, against_flying, against_ghost, against_grass, against_ground, against_ice, against_normal, against_poison, against_psychic, against_rock, against_steel, against_water)
   ...> SELECT against_bug, against_dark, against_dragon, against_electric, against_fairy, against_fight, against_fire, against_flying, against_ghost, against_grass, against_ground, against_ice, against_normal, against_poison, against_psychic, against_rock, against_steel, against_water
   ...> FROM imported_pokemon_data;
