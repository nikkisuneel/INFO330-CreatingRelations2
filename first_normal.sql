-- Create new table named "split_abilities" from selecting and trimming data from the "imported_pokemon_data" table
CREATE TABLE split_abilities AS
   ...> SELECT ipd.pokedex_number, trim(json_each.value) AS ability
   ...> FROM imported_pokemon_data ipd
   ...> JOIN json_each('["' || replace(ipd.abilities, ',', '","') || '"]')
   ...> WHERE ability <> '';
sqlite> 

-- Create new table named "pokemon1" from selecting all columns from the "pokemon" table and joining it with the "split_abilities" table
CREATE TABLE pokemon1 AS
   ...> SELECT *
   ...> FROM pokemon
   ...> INNER JOIN split_abilities
   ...> ON pokemon.pokedex_number = split_abilities.pokedex_number
   ...> ;
  
 -- Drop the original "pokemon" table
sqlite> DROP TABLE pokemon;

-- Rename the "pokemon1" table to "pokemon"
ALTER TABLE pokemon1 RENAME TO pokemon;

