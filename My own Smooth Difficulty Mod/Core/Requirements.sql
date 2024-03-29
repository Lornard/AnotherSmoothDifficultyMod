INSERT INTO Requirements 
		(RequirementId,					RequirementType,							Inverse) 
VALUES
-- Difficulty levels
		('REQUIRES_KING',				'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE',	0),
		('REQUIRES_EMPEROR',			'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE',	0),
		('REQUIRES_IMMORTAL',			'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE',	0),
		('REQUIRES_DEITY',				'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE',	0),

-- Eras
		('GAME_AT_CLASSICAL_ERA',		'REQUIREMENT_GAME_ERA_IS',			0),
		('GAME_AT_MEDIEVAL_ERA',		'REQUIREMENT_GAME_ERA_IS',			0),
		('GAME_AT_RENAISSANCE_ERA',		'REQUIREMENT_GAME_ERA_IS',			0),
		('GAME_AT_INDUSTRIAL_ERA',		'REQUIREMENT_GAME_ERA_IS',			0),
		('GAME_AT_MODERN_ERA',			'REQUIREMENT_GAME_ERA_IS',			0),
		('GAME_AT_ATOMIC_ERA',			'REQUIREMENT_GAME_ERA_IS',			0),
		('GAME_NOT_AT_ATOMIC_ERA',		'REQUIREMENT_GAME_ERA_IS',			1),
		('GAME_AT_INFO_ERA',			'REQUIREMENT_GAME_ERA_IS',			0),
		('GAME_AT_FUTURE_ERA',			'REQUIREMENT_GAME_ERA_IS',			0);

INSERT INTO RequirementArguments 
		(RequirementId,					Name,		Value) 
VALUES
-- Difficulty levels
		('REQUIRES_KING',				'Handicap',	'DIFFICULTY_KING'),
		('REQUIRES_EMPEROR',			'Handicap',	'DIFFICULTY_EMPEROR'),
		('REQUIRES_IMMORTAL',			'Handicap',	'DIFFICULTY_IMMORTAL'),
		('REQUIRES_DEITY',				'Handicap',	'DIFFICULTY_DEITY'),

-- Eras
		('GAME_AT_CLASSICAL_ERA',		'EraType',	'ERA_CLASSICAL'),
		('GAME_AT_MEDIEVAL_ERA',		'EraType',	'ERA_MEDIEVAL'),
		('GAME_AT_RENAISSANCE_ERA',		'EraType',	'ERA_RENAISSANCE'),
		('GAME_AT_INDUSTRIAL_ERA',		'EraType',	'ERA_INDUSTRIAL'),
		('GAME_AT_MODERN_ERA',			'EraType',	'ERA_MODERN'),
		('GAME_AT_ATOMIC_ERA',			'EraType',	'ERA_ATOMIC'),
		('GAME_NOT_AT_ATOMIC_ERA',		'EraType',	'ERA_ATOMIC'),
		('GAME_AT_INFO_ERA',			'EraType',	'ERA_INFORMATION'),
		('GAME_AT_FUTURE_ERA',			'EraType',	'ERA_FUTURE');