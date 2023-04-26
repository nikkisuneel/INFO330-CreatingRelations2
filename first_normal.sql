CREATE TABLE split_abilities AS
   ...> SELECT ipd.pokedex_number, trim(json_each.value) AS ability
   ...> FROM imported_pokemon_data ipd
   ...> JOIN json_each('["' || replace(ipd.abilities, ',', '","') || '"]')
   ...> WHERE ability <> '';
sqlite> 

CREATE TABLE pokemon1 AS
   ...> SELECT *
   ...> FROM pokemon
   ...> INNER JOIN split_abilities
   ...> ON pokemon.pokedex_number = split_abilities.pokedex_number
   ...> ;
sqlite> DROP TABLE pokemon;
ALTER TABLE pokemon1 RENAME TO pokemon;

