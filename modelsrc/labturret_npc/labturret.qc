// Created by Crowbar 0.56

$modelname "props_Lab/LabTurret_npc.mdl"

$bodygroup "studio"
{
	studio "LabTurret_reference.smd"
}

$lod 30
{
	replacemodel "LabTurret_reference.smd" "LabTurret_reference_lod1.smd"
	nofacial
}

$surfaceprop "metal"

$contents "solid"

$illumposition -0.229 -0.023 8.664

$cdmaterials "models\props_lab\\"

$attachment "eyes" "LabTurret.turret_Bone5" 12.7 -0.06 1.5 rotate 0 0 -180
$attachment "light" "LabTurret.turret_Bone5" 12.7 -0.06 -2.29 rotate 0 0 90

$cbox 0 0 0 0 0 0

//$bbox -6.801 -23.035 0 6.848 22.576 17.328
//$bbox -8 -4 -24 8 36 8

// Needed for collision bounds stuff, aligns with ceiling_turret.mdl
$origin -16 0 16

$definebone "LabTurret.Base_bone" "" -18.00901 -1.198067 0 0 0 89.999983 0 0 0 0 0 0
$definebone "LabTurret.turret_Bone1" "LabTurret.Base_bone" 0 8.179261 0 0 0 0 0 0 0 0 0 0
$definebone "LabTurret.turret_Bone2" "LabTurret.turret_Bone1" 37.80381 5.858789 -0.162804 0 0 0 0 0 0 0 0 0
$definebone "LabTurret.turret_Bone3" "LabTurret.turret_Bone2" 0.76816 -5.150839 0.112131 0 0 0 0 0 0 0 0 0
$definebone "LabTurret.turret_Bone4" "LabTurret.turret_Bone3" -4.710664 0 -0.26895 0 0 0 0 0 0 0 0 0
$definebone "LabTurret.turret_Bone5" "LabTurret.turret_Bone4" -16.981789 0 0 0 0 0 0 0 0 0 0 0

$weightlist "NoBase" { "LabTurret.Base_bone" 0 "LabTurret.turret_Bone1" 1 }

$poseparameter "aim_yaw" 180 -180 loop 360
$poseparameter "aim_pitch" 180 -180 loop 360
$poseparameter "move_yaw" 180 -180 loop 360

$sequence idle "labturret_anims\idle.smd" activity "ACT_CEILING_TURRET_CLOSED_IDLE" 1 loop
$sequence idlealert "labturret_anims\idlealert.smd" activity "ACT_CEILING_TURRET_OPEN_IDLE" 1 loop
$sequence deploy "labturret_anims\deploy.smd" activity "ACT_CEILING_TURRET_OPEN" 1
$sequence retract "labturret_anims\retract.smd" activity "ACT_CEILING_TURRET_CLOSE" 1

// A special blend sequence that's supposed to correct a backwards bone on mirror animations that's incompatible with the other animations.
$sequence mirror_correction "labturret_anims\mirror_correction.smd" weightlist "NoBase" delta hidden

$sequence idle_mirror "labturret_anims\idle_mirror.smd" activity "ACT_CEILING_TURRET_MIRROR_CLOSED_IDLE" 1 loop
$sequence deploy_mirror "labturret_anims\deploy_mirror.smd" activity "ACT_CEILING_TURRET_MIRROR_OPEN" 1 blendlayer mirror_correction 20 40 60 60 spline
$sequence retract_mirror "labturret_anims\retract_mirror.smd" activity "ACT_CEILING_TURRET_MIRROR_CLOSE" 1 blendlayer mirror_correction 0 0 20 40 spline

$sequence "fire" {
	"labturret_anims\fire.smd"
	activity "ACT_CEILING_TURRET_FIRE" 1
	{ event AE_NPC_MUZZLEFLASH 0 "SMG1 EYES" }
	fps 7.5
}

$sequence "dryfire" {
	"labturret_anims\fire.smd"
	activity "ACT_CEILING_TURRET_DRYFIRE" 1
	fps 7.5
}

$animation "aim_neutral" "labturret_anims\idlealert.smd" subtract aim_neutral 0 weightlist "NoBase"

$animation "aim_up" "labturret_anims\aim_up.smd" weightlist "NoBase"
$animation "aim_down" "labturret_anims\aim_down.smd" weightlist "NoBase"
$animation "aim_backwards" "labturret_anims\aim_backwards.smd" weightlist "NoBase"

$animation "aim_right" "labturret_anims\aim_right.smd" weightlist "NoBase"
$animation "aim_left" "labturret_anims\aim_left.smd" weightlist "NoBase"
$animation "aim_south" "labturret_anims\aim_south.smd" weightlist "NoBase"

$animation "aim_arm_right" "labturret_anims\aim_arm_right.smd" weightlist "NoBase"
$animation "aim_arm_left" "labturret_anims\aim_arm_left.smd" weightlist "NoBase"
$animation "aim_arm_south" "labturret_anims\aim_arm_south.smd" weightlist "NoBase"

$sequence "auto_leftright" {
	"aim_south"
	"aim_right"
	"aim_neutral"
	"aim_left"
	"aim_south"
	autoplay
	blend "aim_yaw" -180 180
	blendwidth 5
	delta
}

$sequence "auto_updown" {
	"aim_backwards"
	"aim_up"
	"aim_neutral"
	"aim_down"
	"aim_backwards"
	autoplay
	blend "aim_pitch" -180 180
	blendwidth 5
	delta
}

$sequence "auto_arm_leftright" {
	"aim_arm_south"
	"aim_arm_right"
	"aim_neutral"
	"aim_arm_left"
	"aim_arm_south"
	autoplay
	blend "move_yaw" -180 180
	blendwidth 5
	delta
}

$collisionjoints "labturret_physics.smd"
{
	$mass 15.02168
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1


	$jointconstrain "LabTurret.turret_Bone1" x limit 0 0 0
	$jointconstrain "LabTurret.turret_Bone1" y limit 0 0 0
	$jointconstrain "LabTurret.turret_Bone1" z limit 0 0 0

	$jointconstrain "LabTurret.turret_Bone2" x limit 0 0 0
	$jointconstrain "LabTurret.turret_Bone2" y limit 0 0 0
	$jointconstrain "LabTurret.turret_Bone2" z limit 0 0 0

	$jointconstrain "LabTurret.turret_Bone4" x limit 0 0 0
	$jointconstrain "LabTurret.turret_Bone4" y limit 0 0 0
	$jointconstrain "LabTurret.turret_Bone4" z limit 0 0 0

	$jointconstrain "LabTurret.turret_Bone5" x limit 0 0 0
	$jointconstrain "LabTurret.turret_Bone5" y limit 0 0 0
	$jointconstrain "LabTurret.turret_Bone5" z limit 0 0 0
}

$keyvalues
{
	bone_followers 
	{
		"bone"		"LabTurret.turret_Bone1"
		"bone"		"LabTurret.turret_Bone2"
		"bone"		"LabTurret.turret_Bone3"
		"bone"		"LabTurret.turret_Bone4"
		"bone"		"LabTurret.turret_Bone5"
	}
}
