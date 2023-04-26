-- Inserting a new row into the 'pokemon' table with values for each column
INSERT INTO pokemon (pokedex_number, name, classification, type1, type2, height_m, weight_kg, capture_rate, base_egg_steps, ability, percentage_male, base_happiness, is_legendary, generation)
   ...> VALUES ('1001', 'Huskichu', 'Drill Pokémon ', 'Mascot', 'psychic', 2, 204, 260, 20580, 'ice Body', 90, 80, 1, 3);
sqlite> 

-- Inserting new row into the 'pokemon' table with values for each column
INSERT INTO pokemon (pokedex_number, name, classification, type1, type2, height_m, weight_kg, capture_rate, base_egg_steps, ability, percentage_male, base_happiness, is_legendary, generation)
   ...> VALUES ('1002', 'Cougarite', 'Mole Pokémon', 'Mascot', 'psychic', 1, 6, 3, 4000, 'ice Body', 50, 0, 0, 1);
sqlite> 

-- Creating  table 'trainer' with columns 'first_name' and 'last_name'
CREATE TABLE trainer (
  first_name VARCHAR(80),
  last_name VARCHAR(80)
);

-- Creating table 'pokemon_team' with columns 'trainer_id' and 'pokemon_id'
-- Creating foreign key constraints to reference the 'trainer' and 'pokemon' tables
CREATE TABLE pokemon_team (
  trainer_id INTEGER,
  pokemon_id INTEGER,
  FOREIGN KEY (trainer_id) REFERENCES trainer(trainer_id),
  FOREIGN KEY (pokemon_id) REFERENCES pokemon(pokemon_id)
);

