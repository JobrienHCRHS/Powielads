--==========================================================================================================================
-- GEDEMON YNAEMP
--==========================================================================================================================
-- StartPosition 
-----
CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);
INSERT INTO StartPosition
		(Civilization,				MapName,			X,	Y)
VALUES	('CIVILIZATION_SCECRL_POWHATAN',	'GiantEarth',		9,	40),
		('CIVILIZATION_SCECRL_POWHATAN',	'GreatestEarthMap',	42,	24),
		('CIVILIZATION_SCECRL_POWHATAN',	'LargestEarth',		11,	49),
		('CIVILIZATION_SCECRL_POWHATAN',	'CordiformEarth',	30,	13);
--==========================================================================================================================
-- JFD RULE WITH FAITH
--==========================================================================================================================
-- Leader_Titles 
-----
CREATE TABLE IF NOT EXISTS 
	Leader_Titles (
	LeaderType  											text 		 		default null,
	GovernmentType											text 	 			default null,
	LeaderTitle												text				default null,
	PolicyType  											text 		 		default null,
	UseFeminine												boolean				default 0,
	TitleIsFullName											boolean				default 0);	
	
INSERT INTO Leader_Titles
		(LeaderType, 				GovernmentType, 							PolicyType,				LeaderTitle)
VALUES	('LEADER_SCECRL_WAHUNSENACAWH',		'GOVERNMENT_CHIEFDOM',						null,					'LOC_GOVERNMENT_JFD_CHIEFDOM_LEADER_TITLE_SCECRL_WAHUNSENACAWH'),				--Chiefdom
		('LEADER_SCECRL_WAHUNSENACAWH',		'GOVERNMENT_AUTOCRACY',						null,					'LOC_GOVERNMENT_JFD_AUTOCRACY_LEADER_TITLE_SCECRL_WAHUNSENACAWH'),				--Autocracy
		('LEADER_SCECRL_WAHUNSENACAWH',		'GOVERNMENT_OLIGARCHY',						null,					'LOC_GOVERNMENT_JFD_OLIGARCHY_LEADER_TITLE_SCECRL_WAHUNSENACAWH'),				--Oligarchy
		('LEADER_SCECRL_WAHUNSENACAWH',		'GOVERNMENT_CLASSICAL_REPUBLIC',			null,					'LOC_GOVERNMENT_JFD_CLASSICAL_DEMOCRACY_LEADER_TITLE_SCECRL_WAHUNSENACAWH'),	--Classical Democracy
		('LEADER_SCECRL_WAHUNSENACAWH',		'GOVERNMENT_MERCHANT_REPUBLIC',				null,					'LOC_GOVERNMENT_JFD_MERCHANT_REPUBLIC_LEADER_TITLE_SCECRL_WAHUNSENACAWH'),		--Merchant Republic
		('LEADER_SCECRL_WAHUNSENACAWH',		'GOVERNMENT_MONARCHY',						null,					'LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_SCECRL_WAHUNSENACAWH'),				--Feudal Monarchy
		('LEADER_SCECRL_WAHUNSENACAWH',		'GOVERNMENT_JFD_ABSOLUTE_MONARCHY',			null,					'LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_SCECRL_WAHUNSENACAWH'),				--Absolute Monarchy
		('LEADER_SCECRL_WAHUNSENACAWH',		'GOVERNMENT_JFD_CONSTITUTIONAL_MONARCHY',	null,					'LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_SCECRL_WAHUNSENACAWH'),				--Constitutional Monarchy
		('LEADER_SCECRL_WAHUNSENACAWH',		'GOVERNMENT_JFD_NOBLE_REPUBLIC',			null,					'LOC_GOVERNMENT_JFD_NOBLE_REPUBLIC_LEADER_TITLE_SCECRL_WAHUNSENACAWH'),			--Noble Republic
		('LEADER_SCECRL_WAHUNSENACAWH',		'GOVERNMENT_DEMOCRACY',						null,					'LOC_GOVERNMENT_JFD_LIBERAL_DEMOCRACY_LEADER_TITLE_SCECRL_WAHUNSENACAWH'),		--People's Republic
		('LEADER_SCECRL_WAHUNSENACAWH',		'GOVERNMENT_COMMUNISM',						null,					'LOC_GOVERNMENT_JFD_PEOPLES_REPUBLIC_LEADER_TITLE_SCECRL_WAHUNSENACAWH'),		--People's Republic
		('LEADER_SCECRL_WAHUNSENACAWH',		'GOVERNMENT_FASCISM',						null,					'LOC_GOVERNMENT_JFD_MILITARY_GUARDIANSHIP_LEADER_TITLE_SCECRL_WAHUNSENACAWH'),	--Military Guardianship
		('LEADER_SCECRL_WAHUNSENACAWH',		null,										'POLICY_JFD_EMPIRE',	'LOC_GOVERNMENT_JFD_EMPIRE_LEADER_TITLE_SCECRL_WAHUNSENACAWH');					--Empire

DELETE FROM Leader_Titles 
WHERE LeaderType IN ('LEADER_SCECRL_WAHUNSENACAWH', 'LEADER_SCECRL_WAHUNSENACAWH') AND GovernmentType IS NOT null
AND GovernmentType NOT IN (SELECT GovernmentType FROM Governments);

DELETE FROM Leader_Titles 
WHERE LeaderType IN ('LEADER_SCECRL_WAHUNSENACAWH', 'LEADER_SCECRL_WAHUNSENACAWH') AND PolicyType IS NOT null
AND PolicyType NOT IN (SELECT PolicyType FROM Policies);
--==========================================================================================================================
--==========================================================================================================================