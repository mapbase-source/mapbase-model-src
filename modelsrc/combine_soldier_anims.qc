// Created by Crowbar 0.36.0.0

$ModelName "combine_soldier_anims.mdl"

//$includemodel "player/male_anims.mdl"

// Must be included
$include "BaseModel.qci"
$include "hl2mp_ported_anims/commonbones.qci"

// Used to compile new movement animations since $declareanimation doesn't work
$include "SoldierMoveAnims.qci"

$includemodel "combine_soldier_anims_original.mdl"
$include "combine_soldier_anims_DeclareSequence.qci"

$include "hl2mp_ported_anims/weaponmacros.qci"
$pushd "male_shared_anims"
$include "DefaultHolster.qci"
$popd

$definevariable Blend_Idle_Default "CombatIdle1_SMG1"
$definevariable Blend_Idle_Unarmed "Idle_Unarmed"
$definevariable Blend_Idle_Panicked "Idle_Unarmed"
$definevariable Blend_Idle_Pistol "CombatIdle1_Pistol"
$definevariable Blend_Idle_Rifle "CombatIdle1_SMG1"
$definevariable Blend_Idle_Rifle_Crouched "crouch_aim_sm1"

$definevariable Blend_SMD_Default "combine_soldier_anims_anims\CombatIdle1_SMG1.smd"
$definevariable Blend_SMD_Unarmed "combine_soldier_anims_anims\Idle_Unarmed.smd"
$definevariable Blend_SMD_Panicked "combine_soldier_anims_anims\Idle_Unarmed.smd"
$definevariable Blend_SMD_Pistol "combine_soldier_anims_anims\CombatIdle1_SMG1.smd"
$definevariable Blend_SMD_Rifle "combine_soldier_anims_anims\CombatIdle1_SMG1.smd"
$definevariable Blend_SMD_Rifle_Crouched "combine_soldier_anims_anims\crouch_aim_sm1.smd"

// Soldiers don't use nodes...
$definevariable Blend_Node_Default "shooting"
$definevariable Blend_Node_Pistol "shooting"
$definevariable Blend_Node_Rifle "shooting"

$animation a_AnimMatch_Default "combine_soldier_anims_anims\CombatIdle1_SMG1.smd" frame 0 0
$definevariable AnimMatch_Default a_AnimMatch_Default

$animation a_AnimMatch_Idle "combine_soldier_anims_anims\Idle1.smd" frame 0 0
$definevariable AnimMatch_Idle a_AnimMatch_Idle

// ================================================================
// 
// Pistol Animations
// 
// ================================================================
$include "NewPistolAnimations_Soldier.qci"
$include "NewPistolAnimations_357_Soldier.qci"
// ================================================================

$include "BaseDI.qci"

// DO NOT uncomment unless you have the interaction keyvalues ready for each model!
// Having the interaction sequences without the keyvalues bypasses our fix for the "interaction twinning" bug
// and makes soldiers susceptible to it.
//$include "AlyxDI.qci"

$include "GenericAnimationMacros.qci"
$include "SoldierSignals.qci"

$include "HunterRecvDI.qci"

$include "AlyxBlindfire.qci"

$weightlist "FeetOnly" {
	"ValveBiped.Bip01_L_Foot" 1
	"ValveBiped.Bip01_R_Foot" 1
	"ValveBiped.Bip01_L_Calf" 0
	"ValveBiped.Bip01_R_Calf" 0
}

$MakeManhackDeployLayer "police_animations_anims\deploy.smd" 30
$MakeManhackDeployAnimation $Blend_SMD_Default$ 50 30
$MakeManhackDeployGesture $Blend_SMD_Default$

// ================================================================
// 
// Harass Animations
// 
// Harass animations on soldiers.
// 
// ================================================================
$include "PoliceHarassGestures.qci"

//$sequence "harassfront1" {
//	"police_animations_anims\harassfront2.smd"
//	activity "ACT_POLICE_HARASS1" 1
//	match $AnimMatch_Idle$
//	addlayer harassfront1_layer
//	cmdlist lockfeet
//}
//
//$sequence "harassfront2" {
//	"police_animations_anims\harassfront2.smd"
//	activity "ACT_POLICE_HARASS2" 1
//	match $AnimMatch_Idle$
//	addlayer harassfront2_layer
//	cmdlist lockfeet
//}

$sequence "harassfront1" {
	"combine_soldier_anims_anims\Idle1.smd"
	numframes 50
	activity "ACT_POLICE_HARASS1" 1
	blendlayer "harassfront1_layer" 0 10 25 49 spline // Try harassfront1_gesture too
	ikrule "lfoot" footstep
	ikrule "rfoot" footstep
	ikrule "rhand" release
	ikrule "lhand" release
}

$sequence "harassfront2" {
	"combine_soldier_anims_anims\Idle1.smd"
	numframes 50
	activity "ACT_POLICE_HARASS2" 1
	blendlayer "harassfront2_layer" 0 10 40 49 spline // Try harassfront2_gesture too
	ikrule "lfoot" footstep
	ikrule "rfoot" footstep
	ikrule "rhand" release
	ikrule "lhand" release
}

// ================================================================
// ================================================================

//$sequence deploy_layer $AnimMatch_Default$ weightlist "FeetOnly" hidden
//$sequence "deploy" {
//	"police_animations_anims\deploy.smd"
//	activity "ACT_METROPOLICE_DEPLOY_MANHACK" 1
//	{ event AE_METROPOLICE_START_DEPLOY 10 "" }
//	{ event AE_METROPOLICE_DEPLOY_MANHACK 33 "" }
//	match $AnimMatch_Default$
//	addlayer deploy_layer
//	cmdlist lockfeet
//}

//$sequence "pickup_weird" {
//	"male_shared_anims\pickup.smd"
//	activity "ACT_METROPOLICE_DEPLOY_MANHACK" 1
//	{ event 2040 13 "" }
//	match $AnimMatch_Default$
//	cmdlist lockfeet
//}

// Use our DI blending techniques
$sequence pickup_unarmed_layer "combine_soldier_anims_anims\Idle_Unarmed.smd" numframes 2 hidden

$MakeAdjustedAnimation pickup "male_shared_anims\pickup.smd" $Blend_SMD_Default$ 8 24 43
$append pickup {
	activity "ACT_PICKUP_GROUND" 1
	{ event 2040 13 "" }
	blendlayer pickup_unarmed_layer 0 0 0 13
}

$MakeAdjustedAnimation gunrack "male_shared_anims\gunrack.smd" $Blend_SMD_Default$ 12 16 40
$append gunrack {
	activity "ACT_PICKUP_RACK" 1
	{ event 2040 15 "" }
	blendlayer pickup_unarmed_layer 0 0 0 13
}

// ================================================================

// 
// Combine animation gestures
// 
$makeweapongesturep grenThrow_gesture "combine_soldier_anims_anims\grenThrow.smd" 10 35 50
$append grenThrow_gesture {
	fps 45
	activity "ACT_GESTURE_COMBINE_THROW_GRENADE" 1
	{ event 7 30 "" }
}

$makeweapongesturep grenDrop_gesture "combine_soldier_anims_anims\grenDrop.smd" 12 32 43
$append grenDrop_gesture {
	fps 35
	activity "ACT_GESTURE_SPECIAL_ATTACK1" 1
	{ event 7 26 "" }
}

$makeweapongesturep grenPlace_gesture "combine_soldier_anims_anims\grenPlace.smd" 12 35 45
$append grenPlace_gesture {
	fps 35
	activity "ACT_GESTURE_SPECIAL_ATTACK2" 1
	{ event 9 25 "" }
}

$makeweapongesturep shootAR2alt_gesture "combine_soldier_anims_anims\shootAR2alt.smd" 12 24 36
$append shootAR2alt_gesture {
	activity "ACT_GESTURE_COMBINE_AR2_ALTFIRE" 1
	{ event COMBINE_AE_BEGIN_ALTFIRE 0 "" }
	{ event COMBINE_AE_ALTFIRE 16 "" }
}

$DefaultSignalGestures 36

//$Attachment "eyes" "ValveBiped.Bip01_Head1" 4.5 -5 0 rotate 0 -90 -90
//$include "body_poses_lean.qci"

// ================================================================
// 
// Misc.
// 
// ================================================================

$pushd "male_shared_anims"
$include "ArrestAnims.qci"

$include "CitizenPackage_Soldier.qci"
$include "CitizenSuitcase_Soldier.qci"
$popd

$include "CitizenRPG.qci"
$include "PoliceMelee_Soldier.qci"

// ================================================================
$include "ProtectedRun.qci"

$sequence "run_protected_all" {
	"a_SoldierRunS"
	"a_SoldierRunSE"
	"a_SoldierRunE"
	"a_SoldierRunNE"
	"a_SoldierRunN"
	"a_SoldierRunNW"
	"a_SoldierRunW"
	"a_SoldierRunSW"
	"a_SoldierRunS"
	activity "ACT_RUN_PROTECTED" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 6 "NPC_CombineS" }
	{ event 6005 15 "NPC_CombineS" }
	fadein 0.2
	fadeout 0.2
	blendlayer "layer_run_protected" 0 0 0 0 local
	node "running"
}
// ================================================================

// Use our DI blending techniques to add a heal animation
$MakeAdjustedAnimation Heal "male_shared_anims\Heal.smd" $Blend_SMD_Default$ 12 32 50
//$MakeAdjustedDelta Heal "male_shared_anims\Heal.smd" $Blend_SMD_Default$ 50 30
$append Heal {
	activity "ACT_CIT_HEAL" 1
	{ event AE_CITIZEN_HEAL 31 "" }
}
