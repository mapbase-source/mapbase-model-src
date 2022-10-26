// Created by Crowbar 0.56

$modelname "monk_animations.mdl"

$includemodel "monk_animations_original.mdl"
$include "monk_animations_DeclareSequence.qci"

// Must be included
$include "BaseModel.qci"
$include "hl2mp_ported_anims/commonbones.qci"
$include "hl2mp_ported_anims/weaponmacros.qci"
$include "GenericWeightlists.qci"
$include "GenericAnimationMacros.qci"

//$poseparameter "gesture_height" 1 -1 loop 0
//$poseparameter "gesture_width" 1 -1 loop 0
//$poseparameter "move_yaw" -180 180 loop 0

//$definevariable Blend_Idle_Default "Idle_SMG1_Aim"
//$definevariable Blend_Idle_Pistol "Idle_Pistol_Aim"
//$definevariable Blend_Idle_Rifle "Idle_SMG1_Aim"

$definevariable Blend_SMD_Default "monk_animations_anims\Idle_SMG1_Aim.smd"
$definevariable Blend_SMD_Pistol "police_animations_anims\pistolangryidle2.smd"
$definevariable Blend_SMD_Rifle "monk_animations_anims\Idle_SMG1_Aim.smd"

$definevariable Blend_Node_Default "shooting"
$definevariable Blend_Node_Pistol "shooting"
$definevariable Blend_Node_Rifle "shooting"

$include "BaseDI.qci"
$include "AlyxDI.qci"

// ================================================================
// Unique annabelle activity names
// ================================================================
$pushd "monk_animations_anims"
$animation "a_default_idle" "a_default_idle.smd" {
	loop
	ikrule "lfoot" footstep
	ikrule "rfoot" footstep
	ikrule "rhand" release
	ikrule "lhand" release
}

$sequence "Idle_Angry_Shotgun" "a_default_idle" activity "ACT_IDLE_SHOTGUN" 1 node "standing"
$sequence "Idle_Shotgun_Aim" "Idle_SMG1_Aim.smd" activity "ACT_IDLE_ANGRY_SHOTGUN" 1 addlayer "layer_Aim_all" node "shooting" loop cmdlist lockfeetandlefthand

// ----------------------------------------------------------------
// Overwritten shotgun anims
$sequence "gesture_shoot_shotgun" "..\male_shared_anims\shoot_shotgun.smd" { event AE_CL_PLAYSOUND 11 "Weapon_Alyx_Shotgun.Cock" } activity "ACT_GESTURE_RANGE_ATTACK_SHOTGUN" 1 delta subtract "gesture_shoot_shotgun" 0
$GenericShootFromIdle_NoHandIK "shoot_shotgun" "Idle_SMG1_Aim.smd" "ACT_RANGE_ATTACK_SHOTGUN" "layer_Aim_all" "gesture_shoot_shotgun" 45 { event AE_CL_PLAYSOUND 11 "Weapon_Alyx_Shotgun.Cock" }
// ----------------------------------------------------------------
// New annabelle versions
$sequence "shoot_annabelle" "shoot_shotgun.smd" activity "ACT_RANGE_ATTACK_ANNABELLE" 1 addlayer "layer_Aim_all" node "shooting"

$animation "@gesture_shoot_shotgun_corrective_animation" "@gesture_shoot_shotgun_corrective_animation.smd"
$sequence "gesture_shoot_annabelle" "gesture_shoot_shotgun.smd" {
	activity "ACT_GESTURE_RANGE_ATTACK_ANNABELLE" 1
	delta
	// Crowbar writes this subtract option to prevent jigglebone and poseparameter problems when delta sequences are recompiled.
	subtract "@gesture_shoot_shotgun_corrective_animation" 0
	ikrule "lhand" touch "ValveBiped.Bip01_R_Hand"
}
// ----------------------------------------------------------------

$sequence "reload_annabelle" "reload_smg1.smd" {
	activity "ACT_RELOAD_ANNABELLE" 1
	{ event 3015 60 "" }
	blendlayer "layer_Aim_all" 0 0 0 20 spline
	blendlayer "layer_Aim_all" 80 100 119 199 spline
	node "shooting"
}

$makeweapongesturep gesture_reload_annabelle "reload_smg1.smd" 16 100 118 "ACT_GESTURE_RELOAD_ANNABELLE" 1
$append gesture_reload_annabelle { { event 3015 60 "" } }
$popd

// ================================================================
// Unarmed animations
// ================================================================
$pushd "male_shared_anims"
$sequence "idle_subtle" "idle_subtle" activity "ACT_IDLE" 1
$sequence "idle_angry" "idle_subtle" activity "ACT_IDLE_ANGRY" 1
$sequence "Idle01" "idle_subtle" activity "ACT_IDLE" 1
$sequence "Idle02" "idle_subtle" activity "ACT_IDLE" 1
$sequence "Idle03" "idle_subtle" activity "ACT_IDLE" 1
$popd
// ================================================================
