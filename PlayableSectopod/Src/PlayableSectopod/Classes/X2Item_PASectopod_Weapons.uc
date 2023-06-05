class X2Item_PASectopod_Weapons extends X2Item config(GameData_WeaponData);


var config WeaponDamageValue SECTOPOD_LIGHTINGFIELD_BASEDAMAGE;

// Wrath cannon
var config WeaponDamageValue PA_WrathCannon_BaseDamage;

var config array<int> PA_WrathCannon_RangeAccuracy;

var config int PA_WrathCannon_ClipSize;
var config int PA_WrathCannon_SoundRange;
var config int PA_WrathCannon_EnvironmentDamage;
var config int PA_WrathCannon_IdealRange;


var config WeaponDamageValue PA_SectopodGun_BaseDamage;

var config array<int> PA_SectopodGun_RangeAccuracy;

var config int PA_SectopodGun_ClipSize;
var config int PA_SectopodGun_SoundRange;
var config int PA_SectopodGun_EnvironmentDamage;
var config int PA_SectopodGun_IdealRange;

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
	Template.RangeAccuracy = default.PA_SectopodGun_RangeAccuracy;
	Template.BaseDamage = default.PA_SectopodGun_BaseDamage;
	Template.iClipSize = default.PA_SectopodGun_ClipSize;
	Template.iSoundRange = default.PA_SectopodGun_SoundRange;
	Template.iEnvironmentDamage = default.PA_SectopodGun_EnvironmentDamage;
	Template.iIdealRange = default.PA_SectopodGun_IdealRange;

	Template.DamageTypeTemplateName = 'Heavy';

	Template.InventorySlot = eInvSlot_PrimaryWeapon;
	Template.Abilities.AddItem('PA_Blaster');
	Template.Abilities.AddItem('PA_BlasterDuringCannon');
	Template.Abilities.AddItem('Overwatch');
	Template.Abilities.AddItem('OverwatchShot');
	Template.Abilities.AddItem('Reload');
	Template.Abilities.AddItem('HotLoadAmmo');
	Template.GameArchetype = "WP_Sectopod_Turret.WP_Sectopod_Turret";
	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = false;
	Template.StartingItem = true;
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

	// This all the resources; sounds, animations, models, physics, the works.
	Template.GameArchetype = "WP_Sectopod_Turret.WP_Sectopod_WrathCannon";

	Template.iPhysicsImpulse = 5;

	Template.CanBeBuilt = false;
	Template.StartingItem = true;

	return Template;
}