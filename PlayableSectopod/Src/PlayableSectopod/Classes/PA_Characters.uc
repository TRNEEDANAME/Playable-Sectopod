class PA_Characters extends X2Character config(GameData_CharacterStats);

static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> Templates;
	Templates.AddItem(CreateTemplate_PA_Sectopod());
	return Templates;
}

static function X2CharacterTemplate CreateTemplate_PA_Sectopod()
{
	local X2CharacterTemplate CharTemplate;

	`CREATE_X2CHARACTER_TEMPLATE(CharTemplate, 'PA_Sectopod');
	CharTemplate.CharacterGroupName = 'Sectopod';
	CharTemplate.DefaultLoadout='PA_SectopodLoadout';
	CharTemplate.BehaviorClass=class'XGAIBehavior';
	
	CharTemplate.strPawnArchetypes.Length = 0;
	CharTemplate.strPawnArchetypes.AddItem("GameUnit_Sectopod.ARC_GameUnit_Sectopod");
	
	
	CharTemplate.strMatineePackages.AddItem("CIN_Sectopod");
	CharTemplate.strTargetingMatineePrefix = "CIN_Sectopod_FF_StartPos";
	
	CharTemplate.UnitSize = 2;
	CharTemplate.UnitHeight = 4;
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
	CharTemplate.bCanUse_eTraversal_BreakWall = true;
	CharTemplate.bAppearanceDefinesPawn = false;
	CharTemplate.bCanTakeCover = false;
	CharTemplate.bSkipDefaultAbilities = true;

	CharTemplate.bIsAlien = false;
	CharTemplate.bIsAdvent = false;
	CharTemplate.bIsCivilian = false;
	CharTemplate.bIsPsionic = false;
	CharTemplate.bIsRobotic = true;
	CharTemplate.bIsSoldier = true;
	CharTemplate.bAllowRushCam = false;
	CharTemplate.bWeakAgainstTechLikeRobot = true;

	CharTemplate.bCanBeTerrorist = false;
	CharTemplate.bCanBeCriticallyWounded = false;
	CharTemplate.bIsAfraidOfFire = false;

	CharTemplate.bAllowSpawnFromATT = false;
	
	CharTemplate.ImmuneTypes.AddItem('Fire');
	CharTemplate.ImmuneTypes.AddItem('Poison');

	CharTemplate.Abilities.AddItem('StandardMove');
	CharTemplate.Abilities.AddItem('PA_SectopodHigh');
	CharTemplate.Abilities.AddItem('PA_SectopodLow');
	CharTemplate.Abilities.AddItem('DeathExplosion');
	CharTemplate.Abilities.AddItem('PA_SectopodInitialState');
	CharTemplate.Abilities.AddItem('PA_SectopodImmunities');

	
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

	CharTemplate.strTargetIconImage = class'UIUtilities_Image'.const.TargetIcon_Alien;

	return CharTemplate;
}