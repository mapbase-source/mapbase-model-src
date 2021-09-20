// Created by Crowbar 0.56
// 
// We need to modify the shooting animation and muzzle attachment so it works on NPCs
// 

$modelname "weapons/w_crossbow.mdl"

$bodygroup "studio"
{
	studio "w_crossbow_HL2DM_crossbow_reference.smd"
}

$lod 35
{
	replacemodel "w_crossbow_HL2DM_crossbow_reference.smd" "w_crossbow_HL2DM_crossbow_reference_lod1.smd"
	nofacial
}

$surfaceprop "weapon"
$contents "solid"
$illumposition 2.079 -8.816 2.817
$cdmaterials "models\weapons\v_crossbow\"

// Muzzle
$attachment "muzzle" "ValveBiped.Bip01_R_Hand" 28.00 3.00 -4.00 rotate 0 8 -90

$bbox -10.457 -13.296 -2.968 28.195 17.483 8.601

$cbox 0 0 0 0 0 0

$definebone "ValveBiped" "" 0 0 0 0 0 89.999983 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped" 0 0 0 -80.175534 -4.106389 93.445007 0 0 0 0 0 0
$definebone "ValveBiped.bone" "ValveBiped.Bip01_R_Hand" 1.165489 -1.926164 -0.5236 0.712129 -80.313497 -88.47683 0 0 0 0 0 0

$texturegroup "skinfamilies"
{
	{ "crossbow dirtmap" }
	{ "crossbow dirtmap_nobolt" }
}


$sequence "idle" {
	"w_crossbow_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	numframes 2
	loop
}

$sequence "attack1" {
	"w_crossbow_anims\attack1.smd"
	activity "ACT_RANGE_ATTACK_SMG1" 1
	{ event 3002 0 "" }
	{ event 5003 0 "2" }
	{ event 6001 0 "0" }
	numframes 2
}

$collisionmodel "w_crossbow_physics.smd"
{
	$mass 10
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
}
