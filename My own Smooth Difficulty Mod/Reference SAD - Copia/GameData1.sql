-- GameData1
-- Author: Kaige Lindberg
-- DateCreated: 3/20/2020 9:38:00 AM
--------------------------------------------------------------
--Changing Higher Difficulties
Delete from MajorStartingUnits where MinDifficulty is not null;
Update ModifierArguments set Extra=12.5 where ModifierID = 'HIGH_DIFFICULTY_SCIENCE_SCALING' and Type = 'LinearScaleFromDefaultHandicap';
Update ModifierArguments set Extra=12.5 where ModifierID = 'HIGH_DIFFICULTY_CULTURE_SCALING' and Type = 'LinearScaleFromDefaultHandicap';
Update ModifierArguments set Extra=12.5 where ModifierID = 'HIGH_DIFFICULTY_FAITH_SCALING' and Type = 'LinearScaleFromDefaultHandicap';
Update ModifierArguments set Extra=25 where ModifierID = 'HIGH_DIFFICULTY_GOLD_SCALING' and Type = 'LinearScaleFromDefaultHandicap';
Update ModifierArguments set Extra=25 where ModifierID = 'HIGH_DIFFICULTY_PRODUCTION_SCALING' and Type = 'LinearScaleFromDefaultHandicap';
Update ModifierArguments set Extra=25 where ModifierID = 'HIGH_DIFFICULTY_UNIT_XP_SCALING' and Type = 'LinearScaleFromDefaultHandicap';
Update ModifierArguments set Extra=0 where ModifierID = 'HIGH_DIFFICULTY_FREE_TECH_BOOSTS' and Type = 'LinearScaleFromDefaultHandicap';
Insert into Modifiers VALUES ('HIGH_DIFFICULTY_FOOD_SCALING', 'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER', 0,0,0,'PLAYER_IS_HIGH_DIFFICULTY_AI', null, null, null);
Insert into ModifierArguments VALUES ('HIGH_DIFFICULTY_FOOD_SCALING', 'Amount', 'LinearScaleFromDefaultHandicap', 0,12.5,null);
Insert into ModifierArguments Values ('HIGH_DIFFICULTY_FOOD_SCALING', 'YieldType', 'ARGTYPE_IDENTITY', 'YIELD_FOOD',null,null);
Insert into TraitModifiers Values ('TRAIT_LEADER_MAJOR_CIV', 'HIGH_DIFFICULTY_FOOD_SCALING');

Update ModifierArguments Set Extra = 0 where ModifierID = 'STANDARD_DIPLOMACY_RANDOM' OR ModifierID = 'BARBARIAN_CAMP_GOLD_SCALING'; --- Old value seems to make the AI hate the player more on higher difficulties.

---Changing Lower Difficulties
UPDATE RequirementArguments SET Value='DIFFICULTY_PRINCE' WHERE RequirementId='REQUIRES_LOW_DIFFICULTY'; --Makes Warlord Difficulty count as low difficulty. Stolen from DoomTurtle's 'Persistent Difficulty'


Update ModifierArguments set Value=0 where ModifierID = 'HIGH_DIFFICULTY_COMBAT_SCALING';
Update ModifierARguments Set Extra = -25 where ModifierID = 'LOW_DIFFICULTY_UNIT_XP_SCALING';
Insert into Modifiers Values ('LOW_DIFFICULTY_SCIENCE_SCALING','MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',0,0,0,'PLAYER_IS_LOW_DIFFICULTY_HUMAN',null,null,null);
Insert into Modifiers Values ('LOW_DIFFICULTY_CULTURE_SCALING','MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',0,0,0,'PLAYER_IS_LOW_DIFFICULTY_HUMAN',null,null,null);
Insert into Modifiers Values ('LOW_DIFFICULTY_FAITH_SCALING','MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',0,0,0,'PLAYER_IS_LOW_DIFFICULTY_HUMAN',null,null,null);
Insert into Modifiers Values ('LOW_DIFFICULTY_GOLD_SCALING','MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',0,0,0,'PLAYER_IS_LOW_DIFFICULTY_HUMAN',null,null,null);
Insert into Modifiers Values ('LOW_DIFFICULTY_PRODUCTION_SCALING','MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',0,0,0,'PLAYER_IS_LOW_DIFFICULTY_HUMAN',null,null,null);
Insert into Modifiers Values ('LOW_DIFFICULTY_FOOD_SCALING','MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',0,0,0,'PLAYER_IS_LOW_DIFFICULTY_HUMAN',null,null,null);
Insert into ModifierArguments Values ('LOW_DIFFICULTY_SCIENCE_SCALING', 'Amount', 'LinearScaleFromDefaultHandicap',0,-12.5,'DIFFICULTY_PRINCE');
Insert into ModifierArguments Values ('LOW_DIFFICULTY_SCIENCE_SCALING', 'YieldType', 'ARGTYPE_IDENTITY','YIELD_SCIENCE',null,null);
Insert into ModifierArguments Values ('LOW_DIFFICULTY_CULTURE_SCALING', 'Amount', 'LinearScaleFromDefaultHandicap',0,-12.5,'DIFFICULTY_PRINCE');
Insert into ModifierArguments Values ('LOW_DIFFICULTY_CULTURE_SCALING', 'YieldType', 'ARGTYPE_IDENTITY','YIELD_CULTURE',null,null);
Insert into ModifierArguments Values ('LOW_DIFFICULTY_FAITH_SCALING', 'Amount', 'LinearScaleFromDefaultHandicap',0,-12.5,'DIFFICULTY_PRINCE');
Insert into ModifierArguments Values ('LOW_DIFFICULTY_FAITH_SCALING', 'YieldType', 'ARGTYPE_IDENTITY','YIELD_FAITH',null,null);
Insert into ModifierArguments Values ('LOW_DIFFICULTY_GOLD_SCALING', 'Amount', 'LinearScaleFromDefaultHandicap',0,-25,'DIFFICULTY_PRINCE');
Insert into ModifierArguments Values ('LOW_DIFFICULTY_GOLD_SCALING', 'YieldType', 'ARGTYPE_IDENTITY','YIELD_GOLD',null,null);
Insert into ModifierArguments Values ('LOW_DIFFICULTY_PRODUCTION_SCALING', 'Amount', 'LinearScaleFromDefaultHandicap',0,-25,'DIFFICULTY_PRINCE');
Insert into ModifierArguments Values ('LOW_DIFFICULTY_PRODUCTION_SCALING', 'YieldType', 'ARGTYPE_IDENTITY','YIELD_PRODUCTION',null,null);
Insert into ModifierArguments Values ('LOW_DIFFICULTY_FOOD_SCALING', 'Amount', 'LinearScaleFromDefaultHandicap',0,-12.5,'DIFFICULTY_PRINCE');
Insert into ModifierArguments Values ('LOW_DIFFICULTY_FOOD_SCALING', 'YieldType', 'ARGTYPE_IDENTITY','YIELD_FOOD',null,null);
Insert into TraitModifiers Values ('TRAIT_LEADER_MAJOR_CIV', 'LOW_DIFFICULTY_SCIENCE_SCALING');
Insert into TraitModifiers Values ('TRAIT_LEADER_MAJOR_CIV', 'LOW_DIFFICULTY_CULTURE_SCALING');
Insert into TraitModifiers Values ('TRAIT_LEADER_MAJOR_CIV', 'LOW_DIFFICULTY_FAITH_SCALING');
Insert into TraitModifiers Values ('TRAIT_LEADER_MAJOR_CIV', 'LOW_DIFFICULTY_GOLD_SCALING');
Insert into TraitModifiers Values ('TRAIT_LEADER_MAJOR_CIV', 'LOW_DIFFICULTY_PRODUCTION_SCALING');
Insert into TraitModifiers Values ('TRAIT_LEADER_MAJOR_CIV', 'LOW_DIFFICULTY_FOOD_SCALING');