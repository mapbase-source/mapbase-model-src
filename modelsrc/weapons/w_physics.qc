// Created by Crowbar 0.74

$modelname "weapons/W_physics.mdl"

$bodygroup "studio"
{
	studio "HL2DM_gravgun_reference.smd"
}

$lod 35
{
	replacemodel "HL2DM_gravgun_reference.smd" "HL2DM_gravgun_reference_lod1.smd"
	replacebone "ValveBiped.Core" "ValveBiped.bone"
	nofacial
}

$surfaceprop "weapon"

$contents "solid"

$illumposition 3.227 -13.156 2.965

$mostlyopaque

$cdmaterials "models\weapons\w_physics\"

$texturegroup "skinfamilies"
{
	{ "w_physics_sheet"  }
	{ "w_physics_sheet2" }
}

$attachment "core" "ValveBiped.Core" 0 0 0 rotate -90 -90 0
$attachment "fork1m" "ValveBiped.Prong1" 0 2.2 5.3 rotate -90 -90 0
$attachment "fork1t" "ValveBiped.Prong1" 0 -1.5 7.8 rotate -90 -90 0
$attachment "fork2m" "ValveBiped.Prong2" 0 -2.9 5.5 rotate -90 -90 0
$attachment "fork2t" "ValveBiped.Prong2" 0.1 1.2 7.7 rotate -90 -90 0
$attachment "fork3m" "ValveBiped.Prong3" 0 -2.2 5.8 rotate -90 -90 0
$attachment "fork3t" "ValveBiped.Prong3" 0.1 2 7.4 rotate -90 -90 0

$cbox 0 0 0 0 0 0

$bbox -2.826 -6.042 -2.777 28.689 12.496 7.941

$sequence "idle" {
	"HL2DM_gravgun_reference.smd"
	activity "ACT_VM_IDLE" 1
	loop
}

$sequence "attack1" {
	"HL2DM_gravgun_reference.smd"
}

$sequence "upgrade" {
	"HL2DM_gravgun_reference.smd"
	activity "ACT_PHYSCANNON_UPGRADE" 1
}

$collisionmodel "w_physics_physics.smd"
{
	$mass 10
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
