CREATE TABLE stats (pokedex_number INTEGER PRIMARY KEY, name TEXT, attack INTEGER, speed INTEGER, hp INTEGER, sp_attack INTEGER, sp_defense INTEGER, defense INTEGER, experience_growth INTEGER);

INSERT INTO stats (pokedex_number, name, attack, speed, hp, sp_attack, sp_defense, defense, experience_growth)
   ...> SELECT attack, speed, hp, sp_attack, sp_defense, defense, experience_growth
   ...> FROM imported_pokemon_data;


ALTER TABLE pokemon ADD CONSTRAINT fk_stats_pokemon FOREIGN KEY (pokedex_number) REFERENCES stats(pokedex_number);
