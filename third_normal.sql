-- Create new table named "stats" with columns for many Pokémon stats
CREATE TABLE stats (pokedex_number INTEGER PRIMARY KEY, name TEXT, attack INTEGER, speed INTEGER, hp INTEGER, sp_attack INTEGER, sp_defense INTEGER, defense INTEGER, experience_growth INTEGER);

-- Populate the "stats" table w/ data from the "imported_pokemon_data" table
INSERT INTO stats (pokedex_number, name, attack, speed, hp, sp_attack, sp_defense, defense, experience_growth)
   ...> SELECT attack, speed, hp, sp_attack, sp_defense, defense, experience_growth
   ...> FROM imported_pokemon_data;

-- Add foreign key constraint to the "stats" table that references the "pokemon" table using the "pokedex_number" column
ALTER TABLE stats ADD CONSTRAINT fk_pokemon_stats FOREIGN KEY (pokedex_number) REFERENCES pokemon(pokedex_number);
