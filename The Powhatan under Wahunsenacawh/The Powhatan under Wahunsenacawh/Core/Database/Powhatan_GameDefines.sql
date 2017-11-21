--==========================================================================================================================
-- DISTRICTS
--==========================================================================================================================
-- Types

INSERT INTO Types	
		(Type,									Kind)
VALUES	('DISTRICT_SCECRL_YEHAKIN',		'KIND_DISTRICT');

-- Districts

INSERT INTO Districts
		(DistrictType,							Name,										Description,									 TraitType,											Cost, 	PrereqTech, Aqueduct, PlunderType, PlunderAmount, AdvisorType, CostProgressionModel, CostProgressionParam1, RequiresPlacement, RequiresPopulation, NoAdjacentCity, InternalOnly, ZOC, CaptureRemovesBuildings, CaptureRemovesCityDefenses, MilitaryDomain, TravelTime, CityStrengthModifier)
SELECT	'DISTRICT_SCECRL_YEHAKIN',			'LOC_DISTRICT_SCECRL_YEHAKIN_NAME',	'LOC_DISTRICT_SCECRL_YEHAKIN_DESCRIPTION',	 'TRAIT_CIVILIZATION_DISTRICT_SCECRL_YEHAKIN',	Cost/2, PrereqTech, Aqueduct, PlunderType, PlunderAmount, AdvisorType, CostProgressionModel, CostProgressionParam1, RequiresPlacement, RequiresPopulation, NoAdjacentCity, InternalOnly, ZOC, CaptureRemovesBuildings, CaptureRemovesCityDefenses, MilitaryDomain, TravelTime, CityStrengthModifier
FROM Districts WHERE DistrictType = 'DISTRICT_NEIGHBORHOOD';

-- DistrictReplaces

INSERT INTO DistrictReplaces
		(CivUniqueDistrictType,					ReplacesDistrictType)
VALUES	('DISTRICT_SCECRL_YEHAKIN',		'DISTRICT_NEIGHBORHOOD');

-- AppealHousingChanges

INSERT INTO AppealHousingChanges
		(DistrictType,						Description,	AppealChange,	MinimumValue)
SELECT 	'DISTRICT_SCECRL_YEHAKIN',			Description,	AppealChange,	MinimumValue
FROM AppealHousingChanges WHERE DistrictType = 'DISTRICT_NEIGHBORHOOD';

-- District_ValidTerrains

INSERT INTO District_ValidTerrains
		(DistrictType,							TerrainType)
SELECT 	'DISTRICT_SCECRL_YEHAKIN',			TerrainType
FROM District_ValidTerrains WHERE DistrictType = 'DISTRICT_NEIGHBORHOOD';

-- District_Adjacencies

INSERT INTO District_Adjacencies
		(DistrictType,							YieldChangeId)
SELECT 	'DISTRICT_SCECRL_YEHAKIN',			YieldChangeId
FROM District_Adjacencies WHERE DistrictType = 'DISTRICT_NEIGHBORHOOD';

INSERT INTO District_Adjacencies			
		(DistrictType,							YieldChangeId)
VALUES	('DISTRICT_SCECRL_YEHAKIN', 		'Yehakin_Food'),
		('DISTRICT_SCECRL_YEHAKIN', 		'Yehakin_Production');

-- Adjacency_YieldChanges

INSERT INTO Adjacency_YieldChanges			
		(ID,						Description,								YieldType,			YieldChange,	TilesRequired,	AdjacentFeature,	AdjacentImprovement)
VALUES	('Yehakin_Food', 			'LOC_DISTRICT_SCECRL_YEHAKIN_FOOD',			'YIELD_FOOD',			1, 				1, 			null,					'IMPROVEMENT_FARM'),
		('Yehakin_Production', 		'LOC_DISTRICT_SCECRL_YEHAKIN_PRODUCTION',	'YIELD_PRODUCTION',		1, 				1, 			'FEATURE_FOREST',		null);

-- District_CitizenYieldChanges

INSERT INTO District_CitizenYieldChanges
		(DistrictType,							YieldType,		YieldChange)
SELECT 	'DISTRICT_SCECRL_YEHAKIN',			YieldType,		YieldChange
FROM District_CitizenYieldChanges WHERE DistrictType = 'DISTRICT_NEIGHBORHOOD';

-- DistrictModifiers

INSERT INTO DistrictModifiers
		(DistrictType,							ModifierId)
SELECT 	'DISTRICT_SCECRL_YEHAKIN',			ModifierId
FROM DistrictModifiers WHERE DistrictType = 'DISTRICT_NEIGHBORHOOD';

INSERT INTO DistrictModifiers			
		(DistrictType,							ModifierId)
VALUES	('DISTRICT_SCECRL_YEHAKIN', 		'HARBOR_TRADE_ROUTE_CAPACITY'),
		('DISTRICT_SCECRL_YEHAKIN', 		'SCECRL_YEHAKIN_FAITH_PURCHASE_MODIFIER');

-- Modifiers

INSERT INTO Modifiers	
		(ModifierId,											ModifierType,										SubjectRequirementSetId)
VALUES	('SCECRL_YEHAKIN_FAITH_PURCHASE_MODIFIER',			'MODIFIER_CITY_ENABLE_BUILDING_FAITH_PURCHASE',		null);

-- ModifierArguments

INSERT INTO ModifierArguments
		(ModifierId,											Name,				Value)
VALUES	('SCECRL_YEHAKIN_FAITH_PURCHASE_MODIFIER',			'DistrictType',		'DISTRICT_NEIGHBORHOOD');
--==========================================================================================================================
-- DISTRICTS: TRAITS
--==========================================================================================================================
-- Types			

INSERT INTO Types	
		(Type,													Kind)
VALUES	('TRAIT_CIVILIZATION_DISTRICT_SCECRL_YEHAKIN',		'KIND_TRAIT');
	
-- Traits			
			
INSERT INTO Traits				
		(TraitType,												Name,															Description)
VALUES	('TRAIT_CIVILIZATION_DISTRICT_SCECRL_YEHAKIN',		'LOC_TRAIT_CIVILIZATION_DISTRICT_SCECRL_YEHAKIN_NAME',		null);
--==========================================================================================================================
-- UNITS
--==========================================================================================================================
-- Types

INSERT INTO Types	
		(Type,					Kind)
VALUES	('UNIT_SCECRL_NEPAMOTAMEN',		'KIND_UNIT');	

-- Units

INSERT INTO Units	
		(UnitType,				BaseMoves, 	 Cost, 	  AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, Name,								Description,					 		MandatoryObsoleteTech, PurchaseYield, PromotionClass, Maintenance, Combat,   PrereqTech, TraitType)
SELECT  'UNIT_SCECRL_NEPAMOTAMEN',		BaseMoves, 	 Cost-30, AdvisorType, BaseSightRange, ZoneOfControl, Domain, FormationClass, 'LOC_UNIT_SCECRL_NEPAMOTAMEN_NAME',			'LOC_UNIT_SCECRL_NEPAMOTAMEN_DESCRIPTION', 		MandatoryObsoleteTech, PurchaseYield, PromotionClass, Maintenance, Combat-3, PrereqTech, 'TRAIT_CIVILIZATION_UNIT_SCECRL_NEPAMOTAMEN'		
FROM Units WHERE UnitType = 'UNIT_ARCHER';

-- UnitReplaces

INSERT INTO UnitReplaces	
		(CivUniqueUnitType,		ReplacesUnitType)
VALUES	('UNIT_SCECRL_NEPAMOTAMEN',		'UNIT_ARCHER');	

-- UnitUpgrades

INSERT INTO UnitUpgrades	
		(Unit,					UpgradeUnit)
SELECT  'UNIT_SCECRL_NEPAMOTAMEN',		UpgradeUnit
FROM UnitUpgrades WHERE Unit = 'UNIT_ARCHER'; 	

-- UnitAIInfos

INSERT INTO UnitAIInfos	
		(UnitType,				AiType)
SELECT  'UNIT_SCECRL_NEPAMOTAMEN',		AiType
FROM UnitAIInfos WHERE UnitType = 'UNIT_ARCHER'; 

-- Tags

INSERT INTO Tags	
		(Tag,										Vocabulary)
VALUES	('CLASS_SCECRL_NEPAMOTAMEN',				'ABILITY_CLASS'),
		('CLASS_SCECRL_KING_OF_CHIEFS_FOREST',		'ABILITY_CLASS');	

-- TypeTags

INSERT INTO TypeTags	
		(Type,					Tag)
SELECT  'UNIT_SCECRL_NEPAMOTAMEN',		Tag
FROM TypeTags WHERE Type = 'UNIT_ARCHER';

INSERT INTO TypeTags	
		(Type,					Tag)
VALUES	('UNIT_SCECRL_NEPAMOTAMEN',		'CLASS_SCECRL_NEPAMOTAMEN');	
--==========================================================================================================================
-- UNITS: ABILITIES
--==========================================================================================================================
-- Types
	
INSERT INTO Types	
		(Type,											Kind)
VALUES	('ABILITY_SCECRL_KING_OF_CHIEFS',				'KIND_ABILITY'),
		('ABILITY_SCECRL_NEPAMOTAMEN',					'KIND_ABILITY');	

-- TypeTags

INSERT INTO TypeTags	
		(Type,											Tag)
VALUES	('ABILITY_SCECRL_KING_OF_CHIEFS',				'CLASS_SCECRL_KING_OF_CHIEFS_FOREST'),
		('ABILITY_SCECRL_NEPAMOTAMEN',					'CLASS_SCECRL_NEPAMOTAMEN');	

-- UnitAbilities

INSERT INTO UnitAbilities	
		(UnitAbilityType,								Name,											Inactive,	Description)
VALUES	('ABILITY_SCECRL_KING_OF_CHIEFS',				'LOC_ABILITY_SCECRL_KING_OF_CHIEFS_NAME',		1,			'LOC_ABILITY_SCECRL_KING_OF_CHIEFS_DESCRIPTION'),
		('ABILITY_SCECRL_NEPAMOTAMEN',					'LOC_ABILITY_SCECRL_NEPAMOTAMEN_NAME',			0,			'LOC_ABILITY_SCECRL_NEPAMOTAMEN_DESCRIPTION');	

-- UnitAbilityModifiers

INSERT INTO UnitAbilityModifiers	
		(UnitAbilityType,								ModifierId)
VALUES		

-- Modifiers

INSERT INTO Modifiers	
		(ModifierId,									ModifierType,													SubjectRequirementSetId)
VALUES	

-- ModifierStrings

INSERT INTO ModifierStrings
		(ModifierId,									Context,					Text)
VALUES	

-- ModifierArguments		

INSERT INTO ModifierArguments		
		(ModifierId,									Name,						Value)
VALUES	
--==========================================================================================================================
-- UNITS: TRAITS
--==========================================================================================================================	
-- Types			
	
INSERT INTO Types	
		(Type,									Kind)
VALUES	('TRAIT_CIVILIZATION_UNIT_SCECRL_NEPAMOTAMEN',	'KIND_TRAIT');

-- Traits			
				
INSERT INTO Traits				
		(TraitType,								Name,											Description)
VALUES	('TRAIT_CIVILIZATION_UNIT_SCECRL_NEPAMOTAMEN',	'LOC_TRAIT_CIVILIZATION_UNIT_SCECRL_NEPAMOTAMEN_NAME',	null);	
		
-- TraitModifiers		
			
-- INSERT INTO TraitModifiers			
		-- (TraitType,								ModifierId)
-- VALUES		

-- Modifiers

-- INSERT INTO Modifiers	
		-- (ModifierId,							ModifierType,											SubjectRequirementSetId)
-- VALUES	

-- ModifierArguments

-- INSERT INTO ModifierArguments
		-- (ModifierId,							Name,				Value)
-- VALUES	

-- Requirements
	
-- INSERT INTO Requirements 			
		-- (RequirementId,							RequirementType)
-- VALUES	

-- RequirementArguments

-- INSERT INTO RequirementArguments
		-- (RequirementId,							Name,				Value)
-- VALUES	

-- RequirementSets

-- INSERT INTO RequirementSets
		-- (RequirementSetId,						RequirementSetType)
-- VALUES	

-- RequirementSetRequirements

-- INSERT INTO RequirementSetRequirements
		-- (RequirementSetId,						RequirementId)
-- VALUES	
--==========================================================================================================================
-- LEADERS
--==========================================================================================================================
-- Types
	
INSERT INTO Types	
		(Type,					Kind)
VALUES	('LEADER_SCECRL_WAHUNSENACAWH',		'KIND_LEADER');	

-- Leaders
	
INSERT INTO Leaders	
		(LeaderType,			Name,							InheritFrom,		SceneLayers)
VALUES	('LEADER_SCECRL_WAHUNSENACAWH',		'LOC_LEADER_SCECRL_WAHUNSENACAWH_NAME',		'LEADER_DEFAULT',	4);	

-- LeaderQuotes
	
INSERT INTO LeaderQuotes	
		(LeaderType,			Quote)
VALUES	('LEADER_SCECRL_WAHUNSENACAWH',		'LOC_PEDIA_LEADERS_PAGE_LEADER_SCECRL_WAHUNSENACAWH_QUOTE');	

-- HistoricalAgendas
	
INSERT INTO HistoricalAgendas	
		(LeaderType,			AgendaType)
VALUES	('LEADER_SCECRL_WAHUNSENACAWH',		'AGENDA_SCECRL_MAMANATOWICK');	

-- LeaderTraits
	
INSERT INTO LeaderTraits	
		(LeaderType,			TraitType)
VALUES	('LEADER_SCECRL_WAHUNSENACAWH',		'TRAIT_LEADER_SCECRL_KING_OF_CHIEFS'));	

-- FavoredReligions
	
INSERT OR REPLACE INTO FavoredReligions	
		(LeaderType,			ReligionType)
VALUES	('LEADER_SCECRL_WAHUNSENACAWH',		'RELIGION_CHRISTIANITY');	
--==========================================================================================================================
-- LEADERS: AI
--==========================================================================================================================
-- AiListTypes
	
INSERT INTO AiListTypes	
		(ListType)
VALUES	('SCECRL_WAHUNSENACAWHBeliefs'),
		('SCECRL_WAHUNSENACAWHBuildings'),
		('SCECRL_WAHUNSENACAWHCivics'),
		('SCECRL_WAHUNSENACAWHDistricts'),
		('SCECRL_WAHUNSENACAWHPseudoYields'),
		('SCECRL_WAHUNSENACAWHTechs'),
		('SCECRL_WAHUNSENACAWHUnits');

-- AiLists
	
INSERT INTO AiLists	
		(ListType,											LeaderType,								System)
VALUES	('SCECRL_WAHUNSENACAWHBeliefs',								'TRAIT_LEADER_SCECRL_MAMANATOWICK',	'Beliefs'),
		('SCECRL_WAHUNSENACAWHBuildings',							'TRAIT_LEADER_SCECRL_MAMANATOWICK',	'Buildings'),
		('SCECRL_WAHUNSENACAWHCivics',								'TRAIT_LEADER_SCECRL_MAMANATOWICK',	'Civics'),
		('SCECRL_WAHUNSENACAWHDistricts',							'TRAIT_LEADER_SCECRL_MAMANATOWICK',	'Districts'),
		('SCECRL_WAHUNSENACAWHPseudoYields',						'TRAIT_LEADER_SCECRL_MAMANATOWICK',	'PseudoYields'),
		('SCECRL_WAHUNSENACAWHTechs',								'TRAIT_LEADER_SCECRL_MAMANATOWICK',	'Technologies'),
		('SCECRL_WAHUNSENACAWHTechs',								'TRAIT_LEADER_SCECRL_MAMANATOWICK',	'Technologies'),
		('SCECRL_WAHUNSENACAWHUnits',								'TRAIT_LEADER_SCECRL_MAMANATOWICK',	'Units');
		
-- AiFavoredItems
	
INSERT INTO AiFavoredItems		
		(ListType,						Favored,	Value,		Item)
VALUES	('SCECRL_WAHUNSENACAWHBeliefs',			1,			-1,			'BELIEF_JESUIT_EDUCATION'),
		('SCECRL_WAHUNSENACAWHBuildings',		1,			0,			'BUILDING_AMPHITHEATER'), 
		('SCECRL_WAHUNSENACAWHBuildings',		1,			0,			'BUILDING_GREAT_ZIMBABWE'), 
		('SCECRL_WAHUNSENACAWHBuildings',		1,			0,			'BUILDING_APADANA'), 
		('SCECRL_WAHUNSENACAWHCivics',			1,			0,			'CIVIC_DRAMA_POETRY'), 
		('SCECRL_WAHUNSENACAWHCivics',			1,			0,			'CIVIC_FOREIGN_TRADE'), 
		('SCECRL_WAHUNSENACAWHCivics',			1,			0,			'CIVIC_MERCANTILISM'), 
		('SCECRL_WAHUNSENACAWHDistricts',		1,			1,			'DISTRICT_SCECRL_YEHAKIN'), 
		('SCECRL_WAHUNSENACAWHDistricts',		1,			1,			'DISTRICT_THEATER'), 
		('SCECRL_WAHUNSENACAWHPseudoYields',	1,			1,			'PSEUDOYIELD_GPP_GENERAL'),
		('SCECRL_WAHUNSENACAWHPseudoYields',	1,			1,			'PSEUDOYIELD_GPP_WRITER'),
		('SCECRL_WAHUNSENACAWHPseudoYields',	1,			1,			'PSEUDOYIELD_UNIT_COMBAT'),
		('SCECRL_WAHUNSENACAWHTechs',			1,			0,			'TECH_CURRENCY'),
		('SCECRL_WAHUNSENACAWHTechs',			1,			0,			'TECH_EDUCATION'),
		('SCECRL_WAHUNSENACAWHTechs',			1,			0,			'TECH_MILITARY_TACTICS'),
		('SCECRL_WAHUNSENACAWHTechs',			1,			0,			'TECH_STIRRUPS'),
		('SCECRL_WAHUNSENACAWHUnits',			1,			0,			'UNIT_ENIGMA_YAAKW'),
		('SCECRL_WAHUNSENACAWHUnits',			1,			0,			'UNIT_SCECRL_NEPAMOTAMEN');
--==========================================================================================================================
-- LEADERS: AGENDAS
--==========================================================================================================================
-- Types
	
INSERT INTO Types	
		(Type,									Kind)
VALUES	('TRAIT_AGENDA_SCECRL_MAMANATOWICK',		'KIND_TRAIT');	
			
-- Agendas			
				
INSERT INTO Agendas				
		(AgendaType,							Name,									Description)
VALUES	('AGENDA_SCECRL_MAMANATOWICK',			'LOC_AGENDA_SCECRL_MAMANATOWICK_NAME',	'LOC_AGENDA_SCECRL_MAMANATOWICK_DESCRIPTION');	
			
-- Traits			
				
INSERT INTO Traits				
		(TraitType,								Name,									Description)
VALUES	('TRAIT_AGENDA_SCECRL_MAMANATOWICK',		'LOC_PLACEHOLDER',						'LOC_PLACEHOLDER');	
			
-- AgendaTraits			
				
INSERT INTO AgendaTraits				
		(AgendaType,							TraitType)
VALUES	('AGENDA_SCECRL_MAMANATOWICK',			'TRAIT_AGENDA_SCECRL_MAMANATOWICK');
		
-- ExclusiveAgendas			
			
INSERT INTO ExclusiveAgendas				
		(AgendaOne,								AgendaTwo)
VALUES	('AGENDA_SCECRL_MAMANATOWICK',			'AGENDA_STANDING_ARMY');		
		
-- TraitModifiers		
			
INSERT INTO TraitModifiers			
		(TraitType,								ModifierId)
VALUES		

-- Modifiers

INSERT INTO Modifiers	
		(ModifierId,							ModifierType,										SubjectRequirementSetId)
VALUES	

-- ModifierArguments

INSERT INTO ModifierArguments
		(ModifierId,							Name,							Value)
VALUES	

-- Requirements
	
INSERT INTO Requirements 			
		(RequirementId,											RequirementType)
VALUES	

-- RequirementArguments

INSERT INTO RequirementArguments
		(RequirementId,											Name,				Value)
VALUES	

-- RequirementSets

INSERT INTO RequirementSets
		(RequirementSetId,										RequirementSetType)
VALUES	

-- RequirementSetRequirements

INSERT INTO RequirementSetRequirements
		(RequirementSetId,										RequirementId)
VALUES	
--==========================================================================================================================
-- LEADERS: COLOURS
--==========================================================================================================================
-- PlayerColors
	
INSERT INTO PlayerColors	
		(Type,							Usage,			PrimaryColor, 								SecondaryColor,									TextColor)
VALUES	('LEADER_SCECRL_WAHUNSENACAWH',		'Unique',		'COLOR_PLAYER_SCECRL_POWHATAN_PRIMARY',	'COLOR_PLAYER_SCECRL_POWHATAN_SECONDARY', 	'COLOR_PLAYER_WHITE_TEXT');	

INSERT INTO Colors 
		(Type, 												Red, 	Green, 	Blue, 	Alpha)
VALUES	('COLOR_PLAYER_SCECRL_POWHATAN_PRIMARY', 		0.691,	0.398,	0.277,	1),
		('COLOR_PLAYER_SCECRL_POWHATAN_SECONDARY',		0.293,	0.000,	0.000,	1);		
--==========================================================================================================================
-- LEADERS: LOADING INFO
--==========================================================================================================================
-- LoadingInfo
	
INSERT INTO LoadingInfo	
		(LeaderType,				BackgroundImage,					ForegroundImage,				PlayDawnOfManAudio)
VALUES	('LEADER_SCECRL_WAHUNSENACAWH',	'LEADER_MONTEZUMA_BACKGROUND',	'LEADER_SCECRL_WAHUNSENACAWH_NEUTRAL',	0);	
--==========================================================================================================================
-- LEADERS: TRAITS
--==========================================================================================================================
-- Types
	
INSERT INTO Types	
		(Type,														Kind)
VALUES	('TRAIT_LEADER_SCECRL_MAMANATOWICK',						'KIND_TRAIT');	
			
-- Traits			
				
INSERT INTO Traits				
		(TraitType,													Name,													Description)
VALUES	('TRAIT_LEADER_SCECRL_MAMANATOWICK',						'LOC_TRAIT_LEADER_SCECRL_MAMANATOWICK_NAME',			'LOC_TRAIT_LEADER_SCECRL_MAMANATOWICK_DESCRIPTION');		
		
-- TraitModifiers		
			
INSERT INTO TraitModifiers			
		(TraitType,													ModifierId)
VALUES				

-- Modifiers

INSERT INTO Modifiers	
		(ModifierId,												ModifierType,											Permanent,	SubjectRequirementSetId)
VALUES	

-- ModifierArguments

INSERT INTO ModifierArguments
		(ModifierId,												Name,													Value)
VALUES	
--==========================================================================================================================
-- CIVILIZATIONS
--==========================================================================================================================
-- Types
	
INSERT INTO Types	
		(Type,						Kind)
VALUES	('CIVILIZATION_SCECRL_POWHATAN',	'KIND_CIVILIZATION');

-- Civilizations
	
INSERT INTO Civilizations	
		(CivilizationType,			Name,								Description,								Adjective,								StartingCivilizationLevelType,	RandomCityNameDepth,	Ethnicity)
VALUES	('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CIVILIZATION_SCECRL_POWHATAN_NAME',	'LOC_CIVILIZATION_SCECRL_POWHATAN_DESCRIPTION',	'LOC_CIVILIZATION_SCECRL_POWHATAN_ADJECTIVE',	'CIVILIZATION_LEVEL_FULL_CIV',	10,						'ETHNICITY_AFRICAN');	
			
-- CityNames			
	
INSERT INTO CityNames	
			(CivilizationType,								CityName)	
VALUES		('CIVILIZATION_SCECRL_POWHATAN',			'LOC_CITY_NAME_POWHATAN_WEROWOCOMOCO'),	
			('CIVILIZATION_SCECRL_POWHATAN',			'LOC_CITY_NAME_POWHATAN_PAQWACHOWNG_'),	
			('CIVILIZATION_SCECRL_POWHATAN',			'LOC_CITY_NAME_POWHATAN_OROPAKES'),	
			('CIVILIZATION_SCECRL_POWHATAN',			'LOC_CITY_NAME_POWHATAN_MATCHUT'),	
			('CIVILIZATION_SCECRL_POWHATAN',			'LOC_CITY_NAME_POWHATAN_YOUGHTANUND'),	
			('CIVILIZATION_SCECRL_POWHATAN',			'LOC_CITY_NAME_POWHATAN_TOPPAHANNOCK'),	
			('CIVILIZATION_SCECRL_POWHATAN',			'LOC_CITY_NAME_POWHATAN_WICOCOMICO'),	
			('CIVILIZATION_SCECRL_POWHATAN',			'LOC_CITY_NAME_POWHATAN_ARROHATTOC'),	
			('CIVILIZATION_SCECRL_POWHATAN',			'LOC_CITY_NAME_POWHATAN_APPOMATTOC'),	
			('CIVILIZATION_SCECRL_POWHATAN',			'LOC_CITY_NAME_POWHATAN_PASPAHEGH'),	
			('CIVILIZATION_SCECRL_POWHATAN',			'LOC_CITY_NAME_POWHATAN_KECOUGHTAN'),	
			('CIVILIZATION_SCECRL_POWHATAN',			'LOC_CITY_NAME_POWHATAN_NANSEMOND'),	
			('CIVILIZATION_SCECRL_POWHATAN',			'LOC_CITY_NAME_POWHATAN_ACCOMAC'),	
			('CIVILIZATION_SCECRL_POWHATAN',			'LOC_CITY_NAME_POWHATAN_MATTAPONI'),	
			('CIVILIZATION_SCECRL_POWHATAN',			'LOC_CITY_NAME_POWHATAN_PAMUNKEY'),	
			('CIVILIZATION_SCECRL_POWHATAN',			'LOC_CITY_NAME_POWHATAN_CHICKAHOMINY'),	
			('CIVILIZATION_SCECRL_POWHATAN',			'LOC_CITY_NAME_POWHATAN_ACCOHANNOCK'),	
			('CIVILIZATION_SCECRL_POWHATAN',			'LOC_CITY_NAME_POWHATAN_KISKIACK'),	
			('CIVILIZATION_SCECRL_POWHATAN',			'LOC_CITY_NAME_POWHATAN_RAPPAHANNOCK'),	
			('CIVILIZATION_SCECRL_POWHATAN',			'LOC_CITY_NAME_POWHATAN_MANSKIN'),	
			('CIVILIZATION_SCECRL_POWHATAN',			'LOC_CITY_NAME_POWHATAN_WEYANOKE'),	
			('CIVILIZATION_SCECRL_POWHATAN',			'LOC_CITY_NAME_POWHATAN_SEKAKAWON'),	
			('CIVILIZATION_SCECRL_POWHATAN',			'LOC_CITY_NAME_POWHATAN_NANZATICO'),	
			('CIVILIZATION_SCECRL_POWHATAN',			'LOC_CITY_NAME_POWHATAN_ONAWMANIENT'),	
			('CIVILIZATION_SCECRL_POWHATAN',			'LOC_CITY_NAME_POWHATAN_POWHITE'),	
			('CIVILIZATION_SCECRL_POWHATAN',			'LOC_CITY_NAME_POWHATAN_MORRATICO'),	
			('CIVILIZATION_SCECRL_POWHATAN',			'LOC_CITY_NAME_POWHATAN_PATAWOMECK'),	
			('CIVILIZATION_SCECRL_POWHATAN',			'LOC_CITY_NAME_POWHATAN_TAUXENENT');	
----------------------------------------------------------------------------------	
----------------------------------------------------------------------------------	
INSERT OR REPLACE INTO LocalizedText (Tag,	Language,	Text)	
--------------------------------------------------------------------	
-- Cities	
--------------------------------------------------------------------	
VALUES		("LOC_CITY_NAME_POWHATAN_WEROWOCOMOCO",	"en_US",
			"Werowocomoco"),	
			("LOC_CITY_NAME_POWHATAN_PAQWACHOWNG_",	"en_US",
			"Paqwachowng "),	
			("LOC_CITY_NAME_POWHATAN_OROPAKES",	"en_US",
			"Oropakes"),	
			("LOC_CITY_NAME_POWHATAN_MATCHUT",	"en_US",
			"Matchut"),	
			("LOC_CITY_NAME_POWHATAN_YOUGHTANUND",	"en_US",
			"Youghtanund"),	
			("LOC_CITY_NAME_POWHATAN_TOPPAHANNOCK",	"en_US",
			"Toppahannock"),	
			("LOC_CITY_NAME_POWHATAN_WICOCOMICO",	"en_US",
			"Wicocomico"),	
			("LOC_CITY_NAME_POWHATAN_ARROHATTOC",	"en_US",
			"Arrohattoc"),	
			("LOC_CITY_NAME_POWHATAN_APPOMATTOC",	"en_US",
			"Appomattoc"),	
			("LOC_CITY_NAME_POWHATAN_PASPAHEGH",	"en_US",
			"Paspahegh"),	
			("LOC_CITY_NAME_POWHATAN_KECOUGHTAN",	"en_US",
			"Kecoughtan"),	
			("LOC_CITY_NAME_POWHATAN_NANSEMOND",	"en_US",
			"Nansemond"),	
			("LOC_CITY_NAME_POWHATAN_ACCOMAC",	"en_US",
			"Accomac"),	
			("LOC_CITY_NAME_POWHATAN_MATTAPONI",	"en_US",
			"Mattaponi"),	
			("LOC_CITY_NAME_POWHATAN_PAMUNKEY",	"en_US",
			"Pamunkey"),	
			("LOC_CITY_NAME_POWHATAN_CHICKAHOMINY",	"en_US",
			"Chickahominy"),	
			("LOC_CITY_NAME_POWHATAN_ACCOHANNOCK",	"en_US",
			"Accohannock"),	
			("LOC_CITY_NAME_POWHATAN_KISKIACK",	"en_US",
			"Kiskiack"),	
			("LOC_CITY_NAME_POWHATAN_RAPPAHANNOCK",	"en_US",
			"Rappahannock"),	
			("LOC_CITY_NAME_POWHATAN_MANSKIN",	"en_US",
			"Manskin"),	
			("LOC_CITY_NAME_POWHATAN_WEYANOKE",	"en_US",
			"Weyanoke"),	
			("LOC_CITY_NAME_POWHATAN_SEKAKAWON",	"en_US",
			"Sekakawon"),	
			("LOC_CITY_NAME_POWHATAN_NANZATICO",	"en_US",
			"Nanzatico"),	
			("LOC_CITY_NAME_POWHATAN_ONAWMANIENT",	"en_US",
			"Onawmanient"),	
			("LOC_CITY_NAME_POWHATAN_POWHITE",	"en_US",
			"Powhite"),	
			("LOC_CITY_NAME_POWHATAN_MORRATICO",	"en_US",
			"Morratico"),	
			("LOC_CITY_NAME_POWHATAN_PATAWOMECK",	"en_US",
			"Patawomeck"),	
			("LOC_CITY_NAME_POWHATAN_TAUXENENT",	"en_US",
			"Tauxenent");	

-- CivilizationCitizenNames
	
INSERT INTO CivilizationCitizenNames	
		(CivilizationType,			CitizenName,								Female,		Modern)
VALUES	('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_MALE_1',				0,			0),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_MALE_2',				0,			0),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_MALE_3',				0,			0),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_MALE_4',				0,			0),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_MALE_5',				0,			0),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_MALE_6',				0,			0),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_MALE_7',				0,			0),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_MALE_8',				0,			0),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_MALE_9',				0,			0),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_MALE_10',				0,			0),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_FEMALE_1',				1,			0),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_FEMALE_2',				1,			0),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_FEMALE_3',				1,			0),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_FEMALE_4',				1,			0),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_FEMALE_5',				1,			0),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_FEMALE_6',				1,			0),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_FEMALE_7',				1,			0),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_FEMALE_8',				1,			0),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_FEMALE_9',				1,			0),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_FEMALE_10',			1,			0),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_MODERN_MALE_1',		0,			1),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_MODERN_MALE_2',		0,			1),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_MODERN_MALE_3',		0,			1),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_MODERN_MALE_4',		0,			1),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_MODERN_MALE_5',		0,			1),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_MODERN_MALE_6',		0,			1),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_MODERN_MALE_7',		0,			1),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_MODERN_MALE_8',		0,			1),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_MODERN_MALE_9',		0,			1),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_MODERN_MALE_10',		0,			1),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_MODERN_FEMALE_1',		1,			1),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_MODERN_FEMALE_2',		1,			1),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_MODERN_FEMALE_3',		1,			1),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_MODERN_FEMALE_4',		1,			1),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_MODERN_FEMALE_5',		1,			1),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_MODERN_FEMALE_6',		1,			1),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_MODERN_FEMALE_7',		1,			1),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_MODERN_FEMALE_8',		1,			1),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_MODERN_FEMALE_9',		1,			1),
		('CIVILIZATION_SCECRL_POWHATAN',	'LOC_CITIZEN_SCECRL_POWHATAN_MODERN_FEMALE_10',		1,			1);	
			
-- CivilizationInfo			
		
INSERT INTO CivilizationInfo	
		(CivilizationType,				Header,						Caption,								SortIndex)	
VALUES	('CIVILIZATION_SCECRL_POWHATAN',		'LOC_CIVINFO_LOCATION',		'LOC_CIVINFO_SCECRL_POWHATAN_LOCATION',			10),	
		('CIVILIZATION_SCECRL_POWHATAN',		'LOC_CIVINFO_SIZE',			'LOC_CIVINFO_SCECRL_POWHATAN_SIZE',				20),	
		('CIVILIZATION_SCECRL_POWHATAN',		'LOC_CIVINFO_POPULATION',	'LOC_CIVINFO_SCECRL_POWHATAN_POPULATION',		30),	
		('CIVILIZATION_SCECRL_POWHATAN',		'LOC_CIVINFO_CAPITAL', 		'LOC_CIVINFO_SCECRL_POWHATAN_CAPITAL',			40);

-- CivilizationLeaders
	
INSERT INTO CivilizationLeaders	
		(CivilizationType,				LeaderType,					CapitalName)
VALUES	('CIVILIZATION_SCECRL_POWHATAN',		'LEADER_SCECRL_WAHUNSENACAWH',		'LOC_CITY_NAME_SCECRL_POWHATAN_WEROWOCOMOCO');

-- CivilizationTraits
	
INSERT INTO CivilizationTraits	
		(TraitType,													CivilizationType)
VALUES	('TRAIT_CIVILIZATION_SCECRL_TSENACOMMACAH',					'CIVILIZATION_SCECRL_POWHATAN'),
		('TRAIT_CIVILIZATION_DISTRICT_SCECRL_YEHAKIN',				'CIVILIZATION_SCECRL_POWHATAN'),
		('TRAIT_CIVILIZATION_UNIT_SCECRL_NEPAMOTAMEN',				'CIVILIZATION_SCECRL_POWHATAN');
			
-- StartBiasResources			
	
INSERT INTO StartBiasResources	
		(CivilizationType,				ResourceType,				Tier)
VALUES	('CIVILIZATION_SCECRL_POWHATAN',		'RESOURCE_FURS',			1),
		('CIVILIZATION_SCECRL_POWHATAN',		'RESOURCE_TEA',				1),
		('CIVILIZATION_SCECRL_POWHATAN',		'RESOURCE_TOBACCO',			1);		
			
-- StartBiasTerrains
	
INSERT INTO StartBiasTerrains	
		(CivilizationType,				TerrainType,				Tier)
VALUES	('CIVILIZATION_SCECRL_POWHATAN',		'TERRAIN_GRASS_HILLS',		1),
		('CIVILIZATION_SCECRL_POWHATAN',		'TERRAIN_GRASS',			2);

-- StartBiasFeatures

INSERT INTO StartBiasFeatures
		('CivilizationType,				FeatureType,				Tier)
VALUES	('CIVILIZATION_SCECRL_POWHATAN',		'FEATURE_FOREST',			1);
--==========================================================================================================================
-- CIVILIZATIONS: TRAITS
--==========================================================================================================================
-- Types
	
INSERT INTO Types	
		(Type,												Kind)
VALUES	('TRAIT_CIVILIZATION_SCECRL_TSENACOMMACAH',			'KIND_TRAIT');	
			
-- Traits			
				
INSERT INTO Traits				
		(TraitType,											Name,													Description)
VALUES	('TRAIT_CIVILIZATION_SCECRL_TSENACOMMACAH',			'LOC_TRAIT_CIVILIZATION_SCECRL_TSENACOMMACAH_NAME',		'LOC_TRAIT_CIVILIZATION_SCECRL_TSENACOMMACAH_DESCRIPTION');	
		
-- TraitModifiers		
			
INSERT INTO TraitModifiers			
		(TraitType,											ModifierId)
VALUES									

-- Modifiers

INSERT INTO Modifiers	
		(ModifierId,										ModifierType,													SubjectRequirementSetId)
VALUES	

-- ModifierArguments

INSERT INTO ModifierArguments
		(ModifierId,											Name,				Value)
VALUES	

-- Requirements
	
INSERT INTO Requirements 			
		(RequirementId,											RequirementType)
VALUES	

-- RequirementArguments

INSERT INTO RequirementArguments
		(RequirementId,											Name,				Value)
VALUES	

-- RequirementSets

INSERT INTO RequirementSets
		(RequirementSetId,										RequirementSetType)
VALUES	

-- RequirementSetRequirements

INSERT INTO RequirementSetRequirements
		(RequirementSetId,										RequirementId)
VALUES	
--==========================================================================================================================
--==========================================================================================================================