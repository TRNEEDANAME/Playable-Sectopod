class X2Item_PASectopod_Weapons extends X2Item config(GameData_WeaponData);

var config WeaponDamageValue PA_WrathCannon_BaseDamage;
var config array<int> PA_WrathCannon_RangeAccuracy;
var config int PA_WrathCannon_ClipSize;
var config int PA_WrathCannon_SoundRange;
var config int PA_WrathCannon_EnvironmentDamage;
var config int PA_WrathCannon_IdealRange;

static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> Weapons;
	Weapons.AddItem(CreateTemplate_PA_Sectopod_WrathCannon_WPN());
	Weapons.AddItem(CreateTemplate_PA_SectopodGun());

    return Weapons;
}

static function X2DataTemplate CreateTemplate_PA_SectopodGun()
{
	local X2WeaponTemplate Template;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_SectopodGun');

	Template.WeaponPanelImage = "_ConventionalRifle";
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'PA_SectopodGunCat';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.AdventTurret";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer);
	Template.RangeAccuracy = class'X2Item_DefaultWeapons'.default.FLAT_BEAM_RANGE;
	Template.BaseDamage = class'X2Item_DefaultWeapons'.default.SECTOPOD_WPN_BASEDAMAGE;
	Template.iClipSize = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ICLIPSIZE;;
	Template.iSoundRange = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_ISOUNDRANGE;
	Template.iEnvironmentDamage = class'X2Item_DefaultWeapons'.default.ASSAULTRIFLE_MAGNETIC_IENVIRONMENTDAMAGE;
	Template.iIdealRange = class'X2Item_DefaultWeapons'.default.SECTOPOD_IDEALRANGE;

	Template.DamageTypeTemplateName = 'Heavy';

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('Blaster');
	Template.Abilities.AddItem('BlasterDuringCannon');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	Template.GameArchetype = "WP_Sectopod_Turret.WP_Sectopod_Turret";
	Template.iPhysicsImpulse = 5;
	Template.CanBeBuilt = false;
	Template.TradingPostValue = 30;
	Template.bInfiniteItem = true;

	return Template;
}

static function X2DataTemplate CreateTemplate_PA_Sectopod_WrathCannon_WPN()
{
	local X2WeaponTemplate Template;

	`CREATE_X2TEMPLATE(class'X2WeaponTemplate', Template, 'PA_Sectopod_Wrathcannon_WPN');

	Template.WeaponPanelImage = "_BeamCannon";                       // used by the UI. Probably determines iconview of the weapon.
	Template.ItemCat = 'weapon';
	Template.WeaponCat = 'PA_Sectopod_WrathCannonCat';
	Template.WeaponTech = 'magnetic';
	Template.strImage = "img:///UILibrary_Common.AlienWeapons.AdventAssaultRifle";
	Template.RemoveTemplateAvailablility(Template.BITFIELD_GAMEAREA_Multiplayer); //invalidates multiplayer availability

	Template.RangeAccuracy = default.PA_WrathCannon_RangeAccuracy;
	Template.BaseDamage = default.PA_WrathCannon_BaseDamage;
	Template.iClipSize = default.PA_WrathCannon_ClipSize;
	Template.iSoundRange = default.PA_WrathCannon_SoundRange;
	Template.iEnvironmentDamage = default.PA_WrathCannon_EnvironmentDamage;
	Template.iIdealRange = default.PA_WrathCannon_IdealRange;

	Template.DamageTypeTemplateName = 'Heavy';

	Template.InventorySlot = eInvSlot_SecondaryWeapon;
	Template.Abilities.AddItem('PA_WrathCannonStage1');

	// This all the resources; sounds, animations, models, physics, the works.
	Template.GameArchetype = "WP_Sectopod_Turret.WP_Sectopod_WrathCannon";

	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = false;
	Template.TradingPostValue = 30;

	return Template;
}