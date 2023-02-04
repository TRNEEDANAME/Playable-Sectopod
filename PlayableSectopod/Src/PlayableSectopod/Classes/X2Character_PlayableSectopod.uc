class X2Character_PlayableSectopod extends X2Character config(GameData_CharacterStats);

var config bool ALIENS_APPEAR_IN_BASE;

static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> Templates;
	
	Templates.AddItem(CreateTemplate_Sectopod());

	return Templates;
}

static function X2CharacterTemplate CreateTemplate_Sectopod()
{
	local X2CharacterTemplate CharTemplate;

	`CREATE_X2CHARACTER_TEMPLATE(CharTemplate, 'PA_Sectopod');
	CharTemplate.CharacterGroupName = 'Sectopod';
	CharTemplate.BehaviorClass=class'XGAIBehavior';

	CharTemplate.strPawnArchetypes.AddItem("GameUnit_Sectopod.ARC_GameUnit_Sectopod");

	CharTemplate.strMatineePackages.AddItem("CIN_Sectopod");
	CharTemplate.strTargetingMatineePrefix = "CIN_Sectopod_FF_StartPos";
	CharTemplate.strIntroMatineeSlotPrefix = "Soldier";
	CharTemplate.strLoadingMatineeSlotPrefix = "Soldier";
	CharTemplate.bHasCharacterExclusiveAppearance = true;
	CharTemplate.UnitSize = 2;
	// Traversal Rules
	CharTemplate.bCanUse_eTraversal_Normal = true;
	CharTemplate.bCanUse_eTraversal_ClimbOver = false;
	CharTemplate.bCanUse_eTraversal_ClimbOnto = true;
	CharTemplate.bCanUse_eTraversal_ClimbLadder = false;
	CharTemplate.bCanUse_eTraversal_DropDown = true;
	CharTemplate.bCanUse_eTraversal_Grapple = false;
	CharTemplate.bCanUse_eTraversal_Landing = true;
	CharTemplate.bCanUse_eTraversal_BreakWindow = false;
	CharTemplate.bCanUse_eTraversal_KickDoor = false;
	CharTemplate.bCanUse_eTraversal_JumpUp = false;
	CharTemplate.bCanUse_eTraversal_WallClimb = false;
	CharTemplate.bCanUse_eTraversal_BreakWall = false;
	CharTemplate.bAppearanceDefinesPawn = false;    
	CharTemplate.bCanTakeCover = false;
	CharTemplate.bAppearInBase = default.ALIENS_APPEAR_IN_BASE;

	CharTemplate.bIsAlien = false;
	CharTemplate.bIsAdvent = true;
	CharTemplate.bIsCivilian = false;
	CharTemplate.bIsPsionic = false;
	CharTemplate.bIsRobotic = true;
	CharTemplate.bIsSoldier = true;
	CharTemplate.bWeakAgainstTechLikeRobot = true;

	CharTemplate.bCanBeTerrorist = false;
	CharTemplate.bCanBeCriticallyWounded = false;
	CharTemplate.bIsAfraidOfFire = false;
	CharTemplate.bCanBeCarried = false;	
	CharTemplate.bCanBeRevived = false;
	CharTemplate.bUsePoolSoldiers = false;
	CharTemplate.bStaffingAllowed = false;
	CharTemplate.bAppearInBase = false;
	CharTemplate.bWearArmorInBase = false;
	CharTemplate.bAllowSpawnFromATT = false;
	CharTemplate.bUsesWillSystem = false;
	CharTemplate.bIsTooBigForArmory = true;

	CharTemplate.DefaultSoldierClass = 'SectopodClass';
	CharTemplate.DefaultLoadout = 'PA_SectopodLoadout';
	CharTemplate.RequiredLoadout = 'PA_SectopodLoadout';

	CharTemplate.Abilities.AddItem('Loot');
	CharTemplate.Abilities.AddItem('Interact_PlantBomb');
	CharTemplate.Abilities.AddItem('Interact_TakeVial');
	CharTemplate.Abilities.AddItem('Interact_StasisTube');
	CharTemplate.Abilities.AddItem('Interact_UseElevator');
	CharTemplate.Abilities.AddItem('Interact_MarkSupplyCrate');
	CharTemplate.Abilities.AddItem('Interact_ActivateAscensionGate');
	CharTemplate.Abilities.AddItem('CarryUnit');
	CharTemplate.Abilities.AddItem('PutDownUnit');
	CharTemplate.Abilities.AddItem('Evac');
	CharTemplate.Abilities.AddItem('PlaceEvacZone');
	CharTemplate.Abilities.AddItem('LiftOffAvenger');
	CharTemplate.Abilities.AddItem('Knockout');
	CharTemplate.Abilities.AddItem('KnockoutSelf');
	CharTemplate.Abilities.AddItem('Panicked');
	CharTemplate.Abilities.AddItem('Berserk');
	CharTemplate.Abilities.AddItem('Obsessed');
	CharTemplate.Abilities.AddItem('Shattered');
	//CharTemplate.Abilities.AddItem('HunkerDown');
	CharTemplate.Abilities.AddItem('DisableConsumeAllPoints');
	CharTemplate.Abilities.AddItem('Revive');
	//CharTemplate.Abilities.AddItem('DevastatingPunch');
	CharTemplate.Abilities.AddItem('Interact_UseElevator');
	CharTemplate.Abilities.AddItem('PA_SectopodImmunities');
	CharTemplate.ImmuneTypes.AddItem('Fire');
	CharTemplate.ImmuneTypes.AddItem('Poison');
	CharTemplate.ImmuneTypes.AddItem(class'X2Item_DefaultDamageTypes'.default.ParthenogenicPoisonType);
	CharTemplate.ImmuneTypes.AddItem('Panic');

	CharTemplate.strTargetIconImage = class'UIUtilities_Image'.const.TargetIcon_Alien;
	CharTemplate.strAutoRunNonAIBT = "SoldierAutoRunTree";
	CharTemplate.CharacterGeneratorClass = class'XGCharacterGenerator_Sectopod';

	return CharTemplate;
}