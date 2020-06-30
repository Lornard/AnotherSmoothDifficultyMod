-- AnotherSmoothDifficulty
-- Author: lornard
-- DateCreated: 6/21/2020 6:20:11 PM
--------------------------------------------------------------

-- Remove all starting units
DELETE FROM MajorStartingUnits WHERE AiOnly=1;

-- Adding Food Scaling
INSERT INTO Modifiers 
		('ModifierId',						'ModifierType',											'OwnerRequirementSetId')
VALUES	('HIGH_DIFFICULTY_FOOD_SCALING',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'PLAYER_IS_HIGH_DIFFICULTY_AI');

INSERT INTO ModifierArguments 
		('ModifierId',							'Name',			'Type',							'Value',		'Extra',	'SecondExtra')
VALUES	('HIGH_DIFFICULTY_FOOD_SCALING',	'Amount',		'LinearScaleFromDefaultHandicap',	0,				5,			NULL),
		('HIGH_DIFFICULTY_FOOD_SCALING',	'YieldType',	'ARGTYPE_IDENTITY',					'YIELD_FOOD',	NULL,		NULL);

INSERT INTO TraitModifiers 
VALUES	('TRAIT_LEADER_MAJOR_CIV',	'HIGH_DIFFICULTY_FOOD_SCALING');

-- Changing Initial values to scaling from 8 to 12
UPDATE	ModifierArguments 
SET		Extra=12 
WHERE	ModifierId = 'HIGH_DIFFICULTY_SCIENCE_SCALING' 
	AND Name = 'Amount';

UPDATE	ModifierArguments 
SET		Extra=12 
WHERE	ModifierId = 'HIGH_DIFFICULTY_CULTURE_SCALING' 
	AND Name = 'Amount';

UPDATE	ModifierArguments 
SET		Extra=0 
WHERE	ModifierID = 'HIGH_DIFFICULTY_FREE_TECH_BOOSTS' 
	AND Type = 'LinearScaleFromDefaultHandicap';

UPDATE	ModifierArguments 
SET		Extra=0 
WHERE	ModifierID = 'HIGH_DIFFICULTY_FREE_CIVIC_BOOSTS' 
	AND Type = 'LinearScaleFromDefaultHandicap';

-- Up to here the flat scalings per difficult level are:
-- Food 5%; Science 12%; Culture 12%; Production 20%; Gold 20%; Faith 8%; +1 Combat
-- No Tech Boosts, No Civic Boosts, No starting Units
-- These values (base) will be given to low difficult players with the same "delta": King <-> Warlord, Emperor <-> Chieftain, Immortal <-> Settler