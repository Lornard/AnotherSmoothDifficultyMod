-- AnotherSmoothDifficulty
-- Author: lornard
-- DateCreated: 6/21/2020 6:20:11 PM
--------------------------------------------------------------

-- Remove all starting units
DELETE FROM MajorStartingUnits WHERE AiOnly=1;

-- add free ranged unit on founding a city and free builder whenever a district is built
INSERT OR IGNORE INTO Modifiers
		(ModifierId, 								ModifierType,												SubjectRequirementSetId,		RunOnce,	Permanent)
VALUES	('JNR_AI_BONUS_DISTRICT_GRANT_BUILDERS',	'MODIFIER_SINGLE_CITY_GRANT_UNIT_IN_CITY',					'PLAYER_IS_HIGH_DIFFICULTY_AI',	1,			1),
		('JNR_AI_BONUS_DISTRICT_GRANT_RANGED',		'MODIFIER_SINGLE_CITY_GRANT_UNIT_BY_CLASS_IN_NEAREST_CITY',	'PLAYER_IS_HIGH_DIFFICULTY_AI',	1,			1);

INSERT OR IGNORE INTO ModifierArguments
		(ModifierId, 								Name,						Value)
VALUES	('JNR_AI_BONUS_DISTRICT_GRANT_BUILDERS',	'UnitType',					'UNIT_BUILDER'),
		('JNR_AI_BONUS_DISTRICT_GRANT_RANGED',		'UnitPromotionClassType',	'PROMOTION_CLASS_RANGED');

INSERT OR IGNORE INTO DistrictModifiers
		(DistrictType,				ModifierId)
SELECT	DistrictType,				'JNR_AI_BONUS_DISTRICT_GRANT_BUILDERS'
FROM	Districts
WHERE	RequiresPopulation=1;


INSERT OR IGNORE INTO DistrictModifiers
		(DistrictType,				ModifierId)
SELECT	DistrictType,				'JNR_AI_BONUS_DISTRICT_GRANT_BUILDERS'
FROM	Districts
WHERE	DistrictType IN ('DISTRICT_CITY_CENTER', 'DISTRICT_THANH');

INSERT OR IGNORE INTO DistrictModifiers
		(DistrictType,				ModifierId)
VALUES	('DISTRICT_CITY_CENTER',	'JNR_AI_BONUS_DISTRICT_GRANT_RANGED');

-- Adding Food Scaling
INSERT INTO Modifiers 
		('ModifierId',						'ModifierType',											'OwnerRequirementSetId')
VALUES	('HIGH_DIFFICULTY_FOOD_SCALING',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'PLAYER_IS_HIGH_DIFFICULTY_AI');

INSERT INTO ModifierArguments 
		('ModifierId',							'Name',			'Type',							'Value',		'Extra',	'SecondExtra')
VALUES	('HIGH_DIFFICULTY_FOOD_SCALING',	'Amount',		'LinearScaleFromDefaultHandicap',	-5,				5,			NULL),
		('HIGH_DIFFICULTY_FOOD_SCALING',	'YieldType',	'ARGTYPE_IDENTITY',					'YIELD_FOOD',	NULL,		NULL);

INSERT INTO TraitModifiers 
VALUES	('TRAIT_LEADER_MAJOR_CIV',	'HIGH_DIFFICULTY_FOOD_SCALING');

UPDATE	ModifierArguments 
SET		Extra=0 
WHERE	ModifierID = 'HIGH_DIFFICULTY_FREE_TECH_BOOSTS' 
	AND Type = 'LinearScaleFromDefaultHandicap';

UPDATE	ModifierArguments 
SET		Extra=0 
WHERE	ModifierID = 'HIGH_DIFFICULTY_FREE_CIVIC_BOOSTS' 
	AND Type = 'LinearScaleFromDefaultHandicap';

-- Up to here the flat scalings per difficult level are:
-- Food 5%; Science 8%; Culture 8%; Production 20%; Gold 20%; Faith 8%; +1 Combat
-- No Tech Boosts, No Civic Boosts, No starting Units
-- These values (base) will be given to low difficult players with the same "delta": King <-> Warlord, Emperor <-> Chieftain, Immortal <-> Settler
-- v2: Downscaled the bonuses to vanilla for the Ancient Era, but to compensate for the lost starting units, it receives doubled the era scaling for gold, science and culture.
-- JNR: add extra economic policy slot at Political Philosophy and wildcard policy slot at Ideology

INSERT OR IGNORE INTO Modifiers
		(ModifierId, 								ModifierType,												SubjectRequirementSetId,		RunOnce,	Permanent)
VALUES	('JNR_AI_BONUS_ECONOMIC_GOVERNMENT_SLOT',	'MODIFIER_PLAYER_CULTURE_ADJUST_GOVERNMENT_SLOTS_MODIFIER',	'PLAYER_IS_HIGH_DIFFICULTY_AI',	0,			0),
		('JNR_AI_BONUS_WILDCARD_GOVERNMENT_SLOT',	'MODIFIER_PLAYER_CULTURE_ADJUST_GOVERNMENT_SLOTS_MODIFIER',	'PLAYER_IS_HIGH_DIFFICULTY_AI',	0,			0);

INSERT OR IGNORE INTO ModifierArguments
		(ModifierId, 								Name,					Value)
VALUES	('JNR_AI_BONUS_ECONOMIC_GOVERNMENT_SLOT',	'GovernmentSlotType',	'SLOT_ECONOMIC'),
		('JNR_AI_BONUS_WILDCARD_GOVERNMENT_SLOT',	'GovernmentSlotType',	'SLOT_WILDCARD');

INSERT OR IGNORE INTO CivicModifiers
		(CivicType,	ModifierId)
VALUES	('CIVIC_POLITICAL_PHILOSOPHY',	'JNR_AI_BONUS_ECONOMIC_GOVERNMENT_SLOT'),
		('CIVIC_IDEOLOGY',				'JNR_AI_BONUS_WILDCARD_GOVERNMENT_SLOT');
		
-- Fixes AI not improving Luxury resources with Monopolies mode active
UPDATE Improvements SET PrereqTech=NULL WHERE ImprovementType='IMPROVEMENT_CORPORATION';