// Created by Crowbar 0.56

$modelname "Humans\male_shared.mdl"

//$includemodel "player/male_anims.mdl"

// Must be included
$include "BaseModel.qci"
$include "hl2mp_ported_anims/commonbones.qci"
$include "hl2mp_ported_anims/weaponmacros.qci"
$include "hl2mp_ported_anims/player_macros.qci"
$include "GenericWeightlists.qci"
$include "GenericAnimationMacros.qci"

// Used to compile new movement animations since $declareanimation doesn't work
// (TODO: Is there a possible IK issue in here?)
$include "MaleCitizenMoveAnims.qci"

$includemodel "humans/male_shared_original.mdl"
$include "male_shared_DeclareSequence.qci"

$sequence reference "male_shared_anims\ragdoll"

$pushd "male_shared_anims"
$include "CitizenActivityFixes.qci"
$include "CitizenNewWeaponActivities.qci"
$popd


// ================================================================
// 
// Pistol Animations
// 
// ================================================================
$include "NewPistolAnimations_MaleCitizen.qci"
$include "NewPistolAnimations_357_MaleCitizen.qci"
// ================================================================


$sequence "MeleeAttack01_Act" {
	"male_shared_anims\MeleeAttack01.smd"
	activity "ACT_MELEE_ATTACK1" 1
	{ event 3 13 "" }
	ikrule rhand touch "ValveBiped.Bip01_R_Hand" usesource
	cmdlist lockfeet
}

$pushd "male_shared_anims"
$include "DefaultHolster.qci"
$popd

$definevariable Blend_Idle_Default "Idle_SMG1_Aim"
$definevariable Blend_Idle_Unarmed "idle_subtle"
$definevariable Blend_Idle_Panicked "crouchIdle_panicked4"
$definevariable Blend_Idle_Pistol "Idle_Pistol_Aim"
$definevariable Blend_Idle_Rifle "Idle_SMG1_Aim"
$definevariable Blend_Idle_Rifle_Crouched "crouch_aim_smg1"

$definevariable Blend_SMD_Default "male_shared_anims\Idle_SMG1_Aim.smd"
$definevariable Blend_SMD_Unarmed "male_shared_anims\idle_subtle.smd"
$definevariable Blend_SMD_Panicked "male_shared_anims\crouchIdle_panicked4.smd"
$definevariable Blend_SMD_Pistol "male_shared_anims\custom\Idle_Pistol_Aim.smd"
$definevariable Blend_SMD_Rifle "male_shared_anims\Idle_SMG1_Aim.smd"
$definevariable Blend_SMD_Rifle_Crouched "male_shared_anims\crouch_aim_smg1.smd"
$definevariable Blend_SMD_Annabelle "male_shared_anims\shoot_shotgun_idle_hack.smd" // TODO?
$definevariable Blend_SMD_Annabelle_Crouch "male_shared_anims\crouch_aim_smg1.smd" // TODO?

$definevariable Blend_Node_Default "shooting"
$definevariable Blend_Node_Pistol "shooting"
$definevariable Blend_Node_Rifle "shooting"

$definevariable Blend_Aim_Rifle "soldier_Aim_9_directions"

$animation a_AnimMatch_Default "male_shared_anims\Idle_SMG1_Aim.smd" frame 0 0
$definevariable AnimMatch_Default a_AnimMatch_Default

$include "BaseDI.qci"
$include "AlyxDI.qci"
$include "AntlionRecvDI.qci"

// Needs to use response criteria now
$include "HunterRecvDI.qci"

$include "OnFirePolice.qci"

$include "AlyxBlindfire.qci"

$include "Rappel.qci"
$include "SoldierSignals.qci"

// Soldiers' original signals had a FPS of 48
$definevariable SignalFPS 36 //32
$DefaultSignalGestures $SignalFPS$
$DefaultSignalSequences "male_shared_anims\Idle_SMG1_Aim.smd" $SignalFPS$

$weightlist "GrenadeCorrectionWeights" {
	"ValveBiped.Bip01_Pelvis" 1
	"ValveBiped.Bip01_L_Thigh" 0.25
	"ValveBiped.Bip01_L_Calf" 0.15
	"ValveBiped.Bip01_L_Foot" 0
}

$SoldierGrenadeAnimation $Blend_SMD_Default$
$append "grenThrow_layer" {
	weightlist "GrenadeCorrectionWeights"
}

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

// Not good enough at/m
//$SoldierGrenadeDropAnimation $Blend_SMD_Default$
//$append "grenDrop_layer" {
//	weightlist "GrenadeCorrectionWeights"
//}
//$SoldierGrenadePlaceAnimation $Blend_SMD_Default$
//$append "grenPlace_layer" {
//	weightlist "GrenadeCorrectionWeights"
//}

$MakeManhackDeployLayer "police_animations_anims\deploy.smd" 30
$MakeManhackDeployAnimation $Blend_SMD_Default$ 50 30
$MakeManhackDeployGesture $Blend_SMD_Default$

// Funny bit
//$weightlist "FunnyTorsoWeightlist" { "ValveBiped.Bip01_Pelvis" 0 "ValveBiped.Bip01_R_Clavicle" 1 "ValveBiped.Bip01_L_Clavicle" 1 }
//$animation "a_Idle_Angry_Shotgun" "female_shared_anims\shoot_shotgun.smd" frame 0 0
//$sequence "funny01" a_Idle_Angry_Shotgun {
//	numframes 30
//	addlayer "shotgun_layer"
//	weightlist "FunnyTorsoWeightlist"
//}

$include "PoliceFlinches.qci"

// ================================================================
// 
// Harass Animations
// 
// Harass animations on citizens.
// 
// ================================================================
$include "PoliceHarassGestures.qci"

$sequence "harassfront1" {
	"male_shared_anims\Idle_SMG1_Relaxed.smd"
	numframes 50
	activity "ACT_POLICE_HARASS1" 1
	blendlayer "harassfront1_layer" 0 10 25 49 spline // Try harassfront1_gesture too
	ikrule "lfoot" footstep
	ikrule "rfoot" footstep
	ikrule "rhand" release
	ikrule "lhand" release
}

$sequence "harassfront2" {
	"male_shared_anims\Idle_SMG1_Relaxed.smd"
	numframes 50
	activity "ACT_POLICE_HARASS2" 1
	blendlayer "harassfront2_layer" 0 10 40 49 spline // Try harassfront2_gesture too
	ikrule "lfoot" footstep
	ikrule "rfoot" footstep
	ikrule "rhand" release
	ikrule "lhand" release
}

// ================================================================
// 
// Misc.
// 
// ================================================================
$include "SoldierEP1Rappel.qci"

$pushd "male_shared_anims"
$include "ArrestAnims.qci"

$include "CitizenPackageRun_Male.qci"

$definevariable PistolIdleLayer "Idle_Pistol_Layer4"
$definevariable PistolIdleLowLayer "Idle_Pistol_Layer4"
$definevariable PistolCrouchAimLayer "Crouch_Pistol_Layer"
$definevariable PistolAimLayer "pistol_Aim_all"
$include "CitizenWallCover.qci"

$include "CitizenCrouchMovement.qci"
$popd

$include "l4d1_ported_anims\L4D1_LadderClimb_Male.qci"
$include "l4d1_ported_anims\L4D1_PistolAnims.qci"

$include "NPCDoorAnims.qci"

$include "AnnabelleAnimations.qci"

$weightlist "weights_layer_luggage_run" {
	 "ValveBiped.Bip01_Pelvis" 0
	 "ValveBiped.Bip01_Spine" 0.2
	 "ValveBiped.Bip01_Neck1" 0.4
	 "ValveBiped.Bip01_Head1" 0.4
	 "ValveBiped.Bip01_R_Clavicle" 0.4
	 "ValveBiped.Bip01_R_UpperArm" 0.6
	 "ValveBiped.Bip01_R_Forearm" 0.8
	 "ValveBiped.Bip01_R_Hand" 1
	 "ValveBiped.Bip01_L_Clavicle" 0
	 "ValveBiped.Bip01_L_UpperArm" 0
	 "ValveBiped.Bip01_L_Forearm" 0
	 "ValveBiped.Bip01_L_Hand" 0
}

$sequence "layer_luggage_run" {
	"male_shared_anims\layer_luggage_walk.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 30 30 target 1
	weightlist "weights_layer_luggage_run"
}

$sequence "luggage_run_all" {
	"a_CitizenRunS"
	"a_CitizenRunSE"
	"a_CitizenRunE"
	"a_CitizenRunNE"
	"a_CitizenRunN" // a_luggage_walk
	"a_CitizenRunNW"
	"a_CitizenRunW"
	"a_CitizenRunSW"
	"a_CitizenRunS"
	activity "ACT_RUN_SUITCASE" 1
	blend "move_yaw" -180 180
	blendwidth 9
	{ event 6004 6 "NPC_Citizen" }
	{ event 6005 15 "NPC_Citizen" }
	fadein 0.2
	fadeout 0.2
	addlayer "layer_luggage_run"
	node "running"
}

$KeyValues
{
	dynamic_interactions 
	{
		$DIKV_Alyx
	}
}
