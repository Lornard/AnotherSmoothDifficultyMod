-- Remove extra builders and settlers
DELETE FROM MajorStartingUnits WHERE (Unit="UNIT_BUILDER" OR Unit="UNIT_SETTLER") AND AiOnly=1;

-- Current #military: 1,1,1,1,2,3,4,5
-- change to:         1,1,1,1,1,2,2,3,3,4
UPDATE MajorStartingUnits SET MinDifficulty="DIFFICULTY_EMPEROR", DifficultyDelta="0.5" WHERE AiOnly=1 AND MinDifficulty="DIFFICULTY_KING" AND DifficultyDelta=1;