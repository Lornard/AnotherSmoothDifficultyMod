-- Based on RushSecond's Smoother Difficulty 1.4, updated by schwarzpol.
-- High Difficult AI gains progressive bonuses to Yields per era:
-- +1 per difficulty to Science, Culture and Gold. +2 per difficulty to Food
-- Future (8 eras from beggining) Deity (4 Deltas from Prince) gets a total of 80% Science/Culture: 48% (12 base * 4 delta) + 32% (1 base * 8 eras * 4 delta) 
-- +84% Food: 20% (5 base * 4 delta) + 64% (2 base * 8 eras * 4 delta); +112% Gold: 80% (20 base * 4 delta) + 32% (1 base * 8 eras * 4 delta) 
-- +80% Production (stable through the game)
INSERT INTO Modifiers 
		(ModifierId,						ModifierType,											OwnerRequirementSetId) 
VALUES	('SCIENCE_SCALING_CLASSICAL',		'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'HIGH_DIFFICULTY_AI_CLASSICAL'),
		('SCIENCE_SCALING_MEDIEVAL',		'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'HIGH_DIFFICULTY_AI_MEDIEVAL'),
		('SCIENCE_SCALING_RENAISSANCE',		'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'HIGH_DIFFICULTY_AI_RENAISSANCE'),
		('SCIENCE_SCALING_INDUSTRIAL',		'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'HIGH_DIFFICULTY_AI_INDUSTRIAL'),
		('SCIENCE_SCALING_MODERN',			'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'HIGH_DIFFICULTY_AI_MODERN'),
		('SCIENCE_SCALING_ATOMIC',			'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'HIGH_DIFFICULTY_AI_ATOMIC'),
		('SCIENCE_SCALING_INFO',			'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'HIGH_DIFFICULTY_AI_INFO'),
		('SCIENCE_SCALING_FUTURE',			'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'HIGH_DIFFICULTY_AI_FUTURE'),
		('CULTURE_SCALING_CLASSICAL',		'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'HIGH_DIFFICULTY_AI_CLASSICAL'),
		('CULTURE_SCALING_MEDIEVAL',		'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'HIGH_DIFFICULTY_AI_MEDIEVAL'),
		('CULTURE_SCALING_RENAISSANCE',		'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'HIGH_DIFFICULTY_AI_RENAISSANCE'),
		('CULTURE_SCALING_INDUSTRIAL',		'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'HIGH_DIFFICULTY_AI_INDUSTRIAL'),
		('CULTURE_SCALING_MODERN',			'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'HIGH_DIFFICULTY_AI_MODERN'),
		('CULTURE_SCALING_ATOMIC',			'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'HIGH_DIFFICULTY_AI_ATOMIC'),
		('CULTURE_SCALING_INFO',			'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'HIGH_DIFFICULTY_AI_INFO'),
		('CULTURE_SCALING_FUTURE',			'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'HIGH_DIFFICULTY_AI_FUTURE'),
		('GOLD_SCALING_CLASSICAL',			'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'HIGH_DIFFICULTY_AI_CLASSICAL'),
		('GOLD_SCALING_MEDIEVAL',			'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'HIGH_DIFFICULTY_AI_MEDIEVAL'),
		('GOLD_SCALING_RENAISSANCE',		'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'HIGH_DIFFICULTY_AI_RENAISSANCE'),
		('GOLD_SCALING_INDUSTRIAL',			'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'HIGH_DIFFICULTY_AI_INDUSTRIAL'),
		('GOLD_SCALING_MODERN',				'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'HIGH_DIFFICULTY_AI_MODERN'),
		('GOLD_SCALING_ATOMIC',				'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'HIGH_DIFFICULTY_AI_ATOMIC'),
		('GOLD_SCALING_INFO',				'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'HIGH_DIFFICULTY_AI_INFO'),
		('GOLD_SCALING_FUTURE',				'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'HIGH_DIFFICULTY_AI_FUTURE'),
		('FOOD_SCALING_CLASSICAL',			'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'HIGH_DIFFICULTY_AI_CLASSICAL'),
		('FOOD_SCALING_MEDIEVAL',			'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'HIGH_DIFFICULTY_AI_MEDIEVAL'),
		('FOOD_SCALING_RENAISSANCE',		'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'HIGH_DIFFICULTY_AI_RENAISSANCE'),
		('FOOD_SCALING_INDUSTRIAL',			'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'HIGH_DIFFICULTY_AI_INDUSTRIAL'),
		('FOOD_SCALING_MODERN',				'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'HIGH_DIFFICULTY_AI_MODERN'),
		('FOOD_SCALING_ATOMIC',				'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'HIGH_DIFFICULTY_AI_ATOMIC'),
		('FOOD_SCALING_INFO',				'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'HIGH_DIFFICULTY_AI_INFO'),
		('FOOD_SCALING_FUTURE',				'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER',	'HIGH_DIFFICULTY_AI_FUTURE');

INSERT INTO TraitModifiers 
		(TraitType,						ModifierId) 
VALUES	('TRAIT_LEADER_MAJOR_CIV',		'SCIENCE_SCALING_CLASSICAL'),
		('TRAIT_LEADER_MAJOR_CIV',		'SCIENCE_SCALING_MEDIEVAL'),
		('TRAIT_LEADER_MAJOR_CIV',		'SCIENCE_SCALING_RENAISSANCE'),
		('TRAIT_LEADER_MAJOR_CIV',		'SCIENCE_SCALING_INDUSTRIAL'),
		('TRAIT_LEADER_MAJOR_CIV',		'SCIENCE_SCALING_MODERN'),
		('TRAIT_LEADER_MAJOR_CIV',		'SCIENCE_SCALING_ATOMIC'),
		('TRAIT_LEADER_MAJOR_CIV',		'SCIENCE_SCALING_INFO'),
		('TRAIT_LEADER_MAJOR_CIV',		'SCIENCE_SCALING_FUTURE'),
		('TRAIT_LEADER_MAJOR_CIV',		'CULTURE_SCALING_CLASSICAL'),
		('TRAIT_LEADER_MAJOR_CIV',		'CULTURE_SCALING_MEDIEVAL'),
		('TRAIT_LEADER_MAJOR_CIV',		'CULTURE_SCALING_RENAISSANCE'),
		('TRAIT_LEADER_MAJOR_CIV',		'CULTURE_SCALING_INDUSTRIAL'),
		('TRAIT_LEADER_MAJOR_CIV',		'CULTURE_SCALING_MODERN'),
		('TRAIT_LEADER_MAJOR_CIV',		'CULTURE_SCALING_ATOMIC'),
		('TRAIT_LEADER_MAJOR_CIV',		'CULTURE_SCALING_INFO'),
		('TRAIT_LEADER_MAJOR_CIV',		'CULTURE_SCALING_FUTURE'),
		('TRAIT_LEADER_MAJOR_CIV',		'GOLD_SCALING_CLASSICAL'),
		('TRAIT_LEADER_MAJOR_CIV',		'GOLD_SCALING_MEDIEVAL'),
		('TRAIT_LEADER_MAJOR_CIV',		'GOLD_SCALING_RENAISSANCE'),
		('TRAIT_LEADER_MAJOR_CIV',		'GOLD_SCALING_INDUSTRIAL'),
		('TRAIT_LEADER_MAJOR_CIV',		'GOLD_SCALING_MODERN'),
		('TRAIT_LEADER_MAJOR_CIV',		'GOLD_SCALING_ATOMIC'),
		('TRAIT_LEADER_MAJOR_CIV',		'GOLD_SCALING_INFO'),
		('TRAIT_LEADER_MAJOR_CIV',		'GOLD_SCALING_FUTURE'),
		('TRAIT_LEADER_MAJOR_CIV',		'FOOD_SCALING_CLASSICAL'),
		('TRAIT_LEADER_MAJOR_CIV',		'FOOD_SCALING_MEDIEVAL'),
		('TRAIT_LEADER_MAJOR_CIV',		'FOOD_SCALING_RENAISSANCE'),
		('TRAIT_LEADER_MAJOR_CIV',		'FOOD_SCALING_INDUSTRIAL'),
		('TRAIT_LEADER_MAJOR_CIV',		'FOOD_SCALING_MODERN'),
		('TRAIT_LEADER_MAJOR_CIV',		'FOOD_SCALING_ATOMIC'),
		('TRAIT_LEADER_MAJOR_CIV',		'FOOD_SCALING_INFO'),
		('TRAIT_LEADER_MAJOR_CIV',		'FOOD_SCALING_FUTURE');

INSERT INTO ModifierArguments 
		(ModifierId,						Name,			Value) 
VALUES	('SCIENCE_SCALING_CLASSICAL',		'YieldType',	'YIELD_SCIENCE'),
		('SCIENCE_SCALING_MEDIEVAL',		'YieldType',	'YIELD_SCIENCE'),
		('SCIENCE_SCALING_RENAISSANCE',		'YieldType',	'YIELD_SCIENCE'),
		('SCIENCE_SCALING_INDUSTRIAL',		'YieldType',	'YIELD_SCIENCE'),
		('SCIENCE_SCALING_MODERN',			'YieldType',	'YIELD_SCIENCE'),
		('SCIENCE_SCALING_ATOMIC',			'YieldType',	'YIELD_SCIENCE'),
		('SCIENCE_SCALING_INFO',			'YieldType',	'YIELD_SCIENCE'),
		('SCIENCE_SCALING_FUTURE',			'YieldType',	'YIELD_SCIENCE'),
		('CULTURE_SCALING_CLASSICAL',		'YieldType',	'YIELD_CULTURE'),
		('CULTURE_SCALING_MEDIEVAL',		'YieldType',	'YIELD_CULTURE'),
		('CULTURE_SCALING_RENAISSANCE',		'YieldType',	'YIELD_CULTURE'),
		('CULTURE_SCALING_INDUSTRIAL',		'YieldType',	'YIELD_CULTURE'),
		('CULTURE_SCALING_MODERN',			'YieldType',	'YIELD_CULTURE'),
		('CULTURE_SCALING_ATOMIC',			'YieldType',	'YIELD_CULTURE'),
		('CULTURE_SCALING_INFO',			'YieldType',	'YIELD_CULTURE'),
		('CULTURE_SCALING_FUTURE',			'YieldType',	'YIELD_CULTURE'),
		('GOLD_SCALING_CLASSICAL',			'YieldType',	'YIELD_GOLD'),
		('GOLD_SCALING_MEDIEVAL',			'YieldType',	'YIELD_GOLD'),
		('GOLD_SCALING_RENAISSANCE',		'YieldType',	'YIELD_GOLD'),
		('GOLD_SCALING_INDUSTRIAL',			'YieldType',	'YIELD_GOLD'),
		('GOLD_SCALING_MODERN',				'YieldType',	'YIELD_GOLD'),
		('GOLD_SCALING_ATOMIC',				'YieldType',	'YIELD_GOLD'),
		('GOLD_SCALING_INFO',				'YieldType',	'YIELD_GOLD'),
		('GOLD_SCALING_FUTURE',				'YieldType',	'YIELD_GOLD'),
		('FOOD_SCALING_CLASSICAL',			'YieldType',	'YIELD_FOOD'),
		('FOOD_SCALING_MEDIEVAL',			'YieldType',	'YIELD_FOOD'),
		('FOOD_SCALING_RENAISSANCE',		'YieldType',	'YIELD_FOOD'),
		('FOOD_SCALING_INDUSTRIAL',			'YieldType',	'YIELD_FOOD'),
		('FOOD_SCALING_MODERN',				'YieldType',	'YIELD_FOOD'),
		('FOOD_SCALING_ATOMIC',				'YieldType',	'YIELD_FOOD'),
		('FOOD_SCALING_INFO',				'YieldType',	'YIELD_FOOD'),
		('FOOD_SCALING_FUTURE',				'YieldType',	'YIELD_FOOD');


INSERT INTO ModifierArguments 
		(ModifierId,						Name,		Type,								Value,	Extra) 
VALUES	('SCIENCE_SCALING_CLASSICAL',		'Amount',	'LinearScaleFromDefaultHandicap',	0,		1),
		('SCIENCE_SCALING_MEDIEVAL',		'Amount',	'LinearScaleFromDefaultHandicap',	0,		1),
		('SCIENCE_SCALING_RENAISSANCE',		'Amount',	'LinearScaleFromDefaultHandicap',	0,		1),
		('SCIENCE_SCALING_INDUSTRIAL',		'Amount',	'LinearScaleFromDefaultHandicap',	0,		1),
		('SCIENCE_SCALING_MODERN',			'Amount',	'LinearScaleFromDefaultHandicap',	0,		1),
		('SCIENCE_SCALING_ATOMIC',			'Amount',	'LinearScaleFromDefaultHandicap',	0,		1),
		('SCIENCE_SCALING_INFO',			'Amount',	'LinearScaleFromDefaultHandicap',	0,		1),
		('SCIENCE_SCALING_FUTURE',			'Amount',	'LinearScaleFromDefaultHandicap',	0,		1),
		('CULTURE_SCALING_CLASSICAL',		'Amount',	'LinearScaleFromDefaultHandicap',	0,		1),
		('CULTURE_SCALING_MEDIEVAL',		'Amount',	'LinearScaleFromDefaultHandicap',	0,		1),
		('CULTURE_SCALING_RENAISSANCE',		'Amount',	'LinearScaleFromDefaultHandicap',	0,		1),
		('CULTURE_SCALING_INDUSTRIAL',		'Amount',	'LinearScaleFromDefaultHandicap',	0,		1),
		('CULTURE_SCALING_MODERN',			'Amount',	'LinearScaleFromDefaultHandicap',	0,		1),
		('CULTURE_SCALING_ATOMIC',			'Amount',	'LinearScaleFromDefaultHandicap',	0,		1),
		('CULTURE_SCALING_INFO',			'Amount',	'LinearScaleFromDefaultHandicap',	0,		1),
		('CULTURE_SCALING_FUTURE',			'Amount',	'LinearScaleFromDefaultHandicap',	0,		1),
		('GOLD_SCALING_CLASSICAL',			'Amount',	'LinearScaleFromDefaultHandicap',	0,		1),
		('GOLD_SCALING_MEDIEVAL',			'Amount',	'LinearScaleFromDefaultHandicap',	0,		1),
		('GOLD_SCALING_RENAISSANCE',		'Amount',	'LinearScaleFromDefaultHandicap',	0,		1),
		('GOLD_SCALING_INDUSTRIAL',			'Amount',	'LinearScaleFromDefaultHandicap',	0,		1),
		('GOLD_SCALING_MODERN',				'Amount',	'LinearScaleFromDefaultHandicap',	0,		1),
		('GOLD_SCALING_ATOMIC',				'Amount',	'LinearScaleFromDefaultHandicap',	0,		1),
		('GOLD_SCALING_INFO',				'Amount',	'LinearScaleFromDefaultHandicap',	0,		1),
		('GOLD_SCALING_FUTURE',				'Amount',	'LinearScaleFromDefaultHandicap',	0,		1),
		('FOOD_SCALING_CLASSICAL',			'Amount',	'LinearScaleFromDefaultHandicap',	0,		2),
		('FOOD_SCALING_MEDIEVAL',			'Amount',	'LinearScaleFromDefaultHandicap',	0,		2),
		('FOOD_SCALING_RENAISSANCE',		'Amount',	'LinearScaleFromDefaultHandicap',	0,		2),
		('FOOD_SCALING_INDUSTRIAL',			'Amount',	'LinearScaleFromDefaultHandicap',	0,		2),
		('FOOD_SCALING_MODERN',				'Amount',	'LinearScaleFromDefaultHandicap',	0,		2),
		('FOOD_SCALING_ATOMIC',				'Amount',	'LinearScaleFromDefaultHandicap',	0,		2),
		('FOOD_SCALING_INFO',				'Amount',	'LinearScaleFromDefaultHandicap',	0,		2),
		('FOOD_SCALING_FUTURE',				'Amount',	'LinearScaleFromDefaultHandicap',	0,		2);

--Requirement Sets
INSERT INTO RequirementSets 
		(RequirementSetId,					RequirementSetType) 
VALUES	('HIGH_DIFFICULTY_AI_CLASSICAL',	'REQUIREMENTSET_TEST_ALL'),
		('HIGH_DIFFICULTY_AI_MEDIEVAL',		'REQUIREMENTSET_TEST_ALL'),
		('HIGH_DIFFICULTY_AI_RENAISSANCE',	'REQUIREMENTSET_TEST_ALL'),
		('HIGH_DIFFICULTY_AI_INDUSTRIAL',	'REQUIREMENTSET_TEST_ALL'),
		('HIGH_DIFFICULTY_AI_MODERN',		'REQUIREMENTSET_TEST_ALL'),
		('HIGH_DIFFICULTY_AI_ATOMIC',		'REQUIREMENTSET_TEST_ALL'),
		('HIGH_DIFFICULTY_AI_INFO',			'REQUIREMENTSET_TEST_ALL'),
		('HIGH_DIFFICULTY_AI_FUTURE',		'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements 
		(RequirementSetId,					RequirementId) 
VALUES	('HIGH_DIFFICULTY_AI_CLASSICAL',	'REQUIRES_PLAYER_IS_AI'),
		('HIGH_DIFFICULTY_AI_CLASSICAL',	'REQUIRES_HIGH_DIFFICULTY'),
		('HIGH_DIFFICULTY_AI_CLASSICAL',	'PLAYER_AT_CLASSICAL_ERA'),
		('HIGH_DIFFICULTY_AI_MEDIEVAL',		'REQUIRES_PLAYER_IS_AI'),
		('HIGH_DIFFICULTY_AI_MEDIEVAL',		'REQUIRES_HIGH_DIFFICULTY'),
		('HIGH_DIFFICULTY_AI_MEDIEVAL',		'PLAYER_AT_MEDIEVAL_ERA'),
		('HIGH_DIFFICULTY_AI_RENAISSANCE',	'REQUIRES_PLAYER_IS_AI'),
		('HIGH_DIFFICULTY_AI_RENAISSANCE',	'REQUIRES_HIGH_DIFFICULTY'),
		('HIGH_DIFFICULTY_AI_RENAISSANCE',	'PLAYER_AT_RENAISSANCE_ERA'),
		('HIGH_DIFFICULTY_AI_INDUSTRIAL',	'REQUIRES_PLAYER_IS_AI'),
		('HIGH_DIFFICULTY_AI_INDUSTRIAL',	'REQUIRES_HIGH_DIFFICULTY'),
		('HIGH_DIFFICULTY_AI_INDUSTRIAL',	'PLAYER_AT_INDUSTRIAL_ERA'),
		('HIGH_DIFFICULTY_AI_MODERN',		'REQUIRES_PLAYER_IS_AI'),
		('HIGH_DIFFICULTY_AI_MODERN',		'REQUIRES_HIGH_DIFFICULTY'),
		('HIGH_DIFFICULTY_AI_MODERN',		'PLAYER_AT_MODERN_ERA'),
		('HIGH_DIFFICULTY_AI_ATOMIC',		'REQUIRES_PLAYER_IS_AI'),
		('HIGH_DIFFICULTY_AI_ATOMIC',		'REQUIRES_HIGH_DIFFICULTY'),
		('HIGH_DIFFICULTY_AI_ATOMIC',		'PLAYER_AT_ATOMIC_ERA'),
		('HIGH_DIFFICULTY_AI_INFO',			'REQUIRES_PLAYER_IS_AI'),
		('HIGH_DIFFICULTY_AI_INFO',			'REQUIRES_HIGH_DIFFICULTY'),
		('HIGH_DIFFICULTY_AI_INFO',			'PLAYER_AT_INFO_ERA'),
		('HIGH_DIFFICULTY_AI_FUTURE',		'REQUIRES_PLAYER_IS_AI'),
		('HIGH_DIFFICULTY_AI_FUTURE',		'REQUIRES_HIGH_DIFFICULTY'),
		('HIGH_DIFFICULTY_AI_FUTURE',		'PLAYER_AT_FUTURE_ERA');