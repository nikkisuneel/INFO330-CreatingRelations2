ALTER TABLE pokemon ADD COLUMN ability_1 TEXT;
sqlite> ALTER TABLE pokemon ADD COLUMN ability_2 TEXT;
sqlite> ALTER TABLE pokemon ADD COLUMN hidden_ability TEXT;

UPDATE pokemon 
SET ability_1 = SUBSTR(abilities, 1, INSTR(abilities, ',')-1), 
    ability_2 = CASE 
                  WHEN INSTR(abilities, ',') = 0 THEN NULL 
                  ELSE SUBSTR(abilities, INSTR(abilities, ',')+1, 
                               INSTR(SUBSTR(abilities, INSTR(abilities, ',')+1), ',')-1) 
                END, 
    hidden_ability = CASE 
                       WHEN INSTR(abilities, ',') = 0 THEN NULL 
                       ELSE SUBSTR(abilities, INSTR(SUBSTR(abilities, INSTR(abilities, ',')+1), ',')+1) END;
                       
ALTER TABLE pokemon
   ...> DROP COLUMN abilities;
