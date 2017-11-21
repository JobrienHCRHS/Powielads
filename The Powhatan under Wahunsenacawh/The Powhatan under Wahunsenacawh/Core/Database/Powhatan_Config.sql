--==========================================================================================================================
-- CONFIG DATA
--==========================================================================================================================
-- Players
	
INSERT INTO Players	
		(CivilizationType,				Portrait,							PortraitBackground,					LeaderType,				LeaderName,						 LeaderIcon,					LeaderAbilityName,									LeaderAbilityDescription,								LeaderAbilityIcon,			CivilizationName,					CivilizationIcon,						CivilizationAbilityName,							CivilizationAbilityDescription,								CivilizationAbilityIcon)
VALUES	('CIVILIZATION_SCECRL_POWHATAN',		'LEADER_SCECRL_WAHUNSENACAWH_NEUTRAL.dds',	'LEADER_JOHN_CURTIN_BACKGROUND',	'LEADER_SCECRL_WAHUNSENACAWH',	'LOC_LEADER_SCECRL_WAHUNSENACAWH_NAME',	 'ICON_LEADER_SCECRL_WAHUNSENACAWH',	'LOC_TRAIT_LEADER_SCECRL_MAMANATOWICK_NAME',		'LOC_TRAIT_LEADER_SCECRL_MAMANATOWICK_DESCRIPTION',	'ICON_LEADER_SCECRL_WAHUNSENACAWH',	'LOC_CIVILIZATION_SCECRL_POWHATAN_NAME',	'ICON_CIVILIZATION_SCECRL_POWHATAN_SUNDIATA',	'LOC_TRAIT_CIVILIZATION_SCECRL_TSENACOMMACAH_NAME',	'LOC_TRAIT_CIVILIZATION_SCECRL_TSENACOMMACAH_DESCRIPTION');

-- PlayerItems
	
INSERT INTO PlayerItems	
		(CivilizationType,				LeaderType,				Type,							Icon,									Name,									  Description,									  SortIndex)
VALUES	('CIVILIZATION_SCECRL_POWHATAN',		'LEADER_SCECRL_WAHUNSENACAWH',	'DISTRICT_SCECRL_YEHAKIN',	'ICON_DISTRICT_SCECRL_YEHAKIN',	'LOC_DISTRICT_SCECRL_YEHAKIN_NAME',  'LOC_DISTRICT_SCECRL_YEHAKIN_DESCRIPTION', 20),
		('CIVILIZATION_SCECRL_POWHATAN',		'LEADER_SCECRL_WAHUNSENACAWH',	'UNIT_SCECRL_NEPAMOTAMEN',				'ICON_UNIT_SCECRL_NEPAMOTAMEN',					'LOC_UNIT_SCECRL_NEPAMOTAMEN_NAME',				  'LOC_UNIT_SCECRL_NEPAMOTAMEN_DESCRIPTION',				  10);

-- MapSupportedValues
	
--INSERT INTO MapSupportedValues	
--		(Value,						Domain, Map)
--SELECT	'LEADER_SCECRL_WAHUNSENACAWH',		Domain, Map
--FROM MapSupportedValues WHERE Value= 'LEADER_T_ROOSEVELT';
--==========================================================================================================================
--==========================================================================================================================