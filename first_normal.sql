CREATE TABLE split_abilities AS
   ...> SELECT ipd.pokedex_number, trim(json_each.value) AS ability
   ...> FROM imported_pokemon_data ipd
   ...> JOIN json_each('["' || replace(ipd.abilities, ',', '","') || '"]')
   ...> WHERE ability <> '';
sqlite> 

