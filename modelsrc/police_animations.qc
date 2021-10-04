// Created by Crowbar 0.56

$include "hl2mp_ported_anims/weaponmacros.qci"

$modelname "Police_animations.mdl"

//$includemodel "player/male_anims.mdl"

// Must be included
$include "BaseModel.qci"
$include "hl2mp_ported_anims/commonbones.qci"

// Used to compile new movement animations since $declareanimation doesn't work
$include "PoliceMoveAnims.qci"

$includemodel "police_animations_original.mdl"
$include "police_animations_DeclareSequence.qci"

$weightlist "HolsterWeightlist" {
	"ValveBiped.Bip01_Pelvis" 0
	"ValveBiped.Bip01_R_Clavicle" 1
	"ValveBiped.Bip01_Spine" 0.35
	"ValveBiped.Bip01_Spine2" 0.75
	"ValveBiped.Bip01_Spine2" 1
	"ValveBiped.Bip01_L_Clavicle" 0.35
	"ValveBiped.Bip01_Neck1" 0.2
}

//$makeweapongesturep weapon_draw_gesture "police_animations_anims\weapon_draw_gesture.smd" 10 20 35
//$append weapon_draw_gesture {
//	fps 30
//	activity "ACT_ARM" 1
//	{ event AE_NPC_DRAW 11 "" }
//}
//$append weapon_draw_gesturearms {
//	// This is needed for some reason
//	//rotateto -90
//}
//
//$makeweapongesturep weapon_holster_gesture "police_animations_anims\weapon_holster_gesture.smd" 15 25 40
//$append weapon_holster_gesture {
//	fps 30
//	activity "ACT_DISARM" 1
//	{ event AE_NPC_HOLSTER 24 "" }
//}
//$append weapon_holster_gesturearms {
//	// This is needed for some reason
//	//rotateto -90
//}

$sequence "weapon_draw_layer" hidden {
	"police_animations_anims\weapon_draw_gesture.smd"
	fps 30
	weightlist "HolsterWeightlist"
}
$sequence "weapon_draw_gesture" {
	"police_animations_anims\weapon_draw_gesture.smd"
	activity "ACT_ARM" 1
	noanimation numframes 40 // 35
	blendlayer weapon_draw_layer 0 15 20 40 spline
	{ event AE_NPC_DRAW 11 "" }
	ikrule lhand attachment L_hand radius 10
	ikrule rhand attachment R_hand radius 10
}

$sequence "weapon_holster_layer" hidden {
	"police_animations_anims\weapon_holster_gesture.smd"
	fps 30
	weightlist "HolsterWeightlist"
}
$sequence "weapon_holster_gesture" {
	"police_animations_anims\weapon_holster_gesture.smd"
	activity "ACT_DISARM" 1
	noanimation numframes 40 // 35
	blendlayer weapon_holster_layer 0 15 20 40 spline
	{ event AE_NPC_HOLSTER 24 "" }
	ikrule lhand attachment L_hand radius 10
	ikrule rhand attachment R_hand radius 10
}


// ================================================================
// 
// Harass Gestures
// 
// I've always wanted these and I'm sure I'm not the only one.
// 
// ================================================================
$include "PoliceHarassGestures.qci"

// ================================================================
// ================================================================
$weightlist "NoHeadMovement" {
	"ValveBiped.Bip01_Head1" 0
	"ValveBiped.Bip01_Neck1" 0.25
	"ValveBiped.Bip01_Pelvis" 1
}

$sequence "gesture_shoot_shotgun" {
	"combine_soldier_anims_anims\a_shootShotgun"
	activity "ACT_GESTURE_RANGE_ATTACK_SHOTGUN" 1
	weightlist "NoHeadMovement"
	delta
}

$sequence "shoot_shotgun" {
	"police_animations_anims\smg1angryidle1.smd"
	{ event AE_CL_PLAYSOUND 11 "Weapon_Alyx_Shotgun.Cock" }
	numframes 45
	activity "ACT_RANGE_ATTACK_SHOTGUN" 1
	addlayer "gesture_shoot_shotgun"
	addlayer "SMG1_Aim_all"
	node "shooting_smg"
}

$makeweapongesture "gesture_reload_shotgun" "male_shared_anims\reload_shotgun1.smd" 10 60 75
$append "gesture_reload_shotgun" {
	activity "ACT_GESTURE_RELOAD_SHOTGUN" 1
	{ event 3015 29 "" }
	{ event AE_CL_PLAYSOUND 57 "Weapon_Shotgun.Special1" }
}

$sequence "reload_shotgun1_legs" "male_shared_anims\reload_shotgun1.smd" subtract "shoot_shotgun" 0 delta weightlist "weapongesture_legsonly" hidden
$sequence "reload_shotgun1" {
	"police_animations_anims\smg1angryidle1.smd"
	numframes 75
	activity "ACT_RELOAD_SHOTGUN" 1
	{ event 3015 29 "" }
	{ event AE_CL_PLAYSOUND 57 "Weapon_Shotgun.Special1" }
	addlayer "gesture_reload_shotgun"
	addlayer "reload_shotgun1_legs"
	//blendlayer "Idle_Angry_Shotgun" 59 75 75 75 spline
	node "standing_smg"
	ikrule "lfoot" footstep
	ikrule "rfoot" footstep
	ikrule "rhand" release
	ikrule "lhand" release
}
// ================================================================
// ================================================================
// 
// AR2 Alt-Fire Gesture
// 
// Programming not included
// 
$weightlist "AR2AltFireWeightlistDelta" {
	"ValveBiped.Bip01_Pelvis" 1
	"ValveBiped.Bip01_L_Clavicle" 0
	"ValveBiped.Bip01_Spine" 1
	"ValveBiped.Bip01_R_Clavicle" 0
	"ValveBiped.Bip01_Neck1" 0
}

$weightlist "AR2AltFireWeightlist" {
	"ValveBiped.Bip01_Pelvis" 0
	"ValveBiped.Bip01_Spine" 0
	"ValveBiped.Bip01_L_Clavicle" 1
	"ValveBiped.Bip01_R_Clavicle" 1
	"ValveBiped.Bip01_L_Thigh" 0
	"ValveBiped.Bip01_R_Thigh" 0
	"ValveBiped.Bip01_Neck1" 1
}

$sequence "shootAR2alt_gesture_delta" {
	"combine_soldier_anims_anims\shootAR2alt.smd"
	subtract "shootAR2alt_gesture_delta" 0
	delta
	hidden
	weightlist "AR2AltFireWeightlistDelta"
}

$sequence "shootAR2alt_gesture" {
	"combine_soldier_anims_anims\shootAR2alt.smd"
	weightlist "AR2AltFireWeightlist"
	addlayer "shootAR2alt_gesture_delta"
	addlayer "SMG1_Aim_all"
	activity "ACT_GESTURE_AR2_ALTFIRE" 1
	{ event COMBINE_AE_BEGIN_ALTFIRE 0 "" }
	{ event COMBINE_AE_ALTFIRE 16 "" }
}

$sequence "shootAR2alt_delta" {
	"combine_soldier_anims_anims\shootAR2alt.smd"
	subtract "shootAR2alt_delta" 0
	delta
	hidden
}

$sequence "shootAR2alt" {
	"police_animations_anims\smg1angryidle1.smd"
	numframes 36
	activity "ACT_COMBINE_AR2_ALTFIRE" 1
 	{ event COMBINE_AE_BEGIN_ALTFIRE 0 "" }
 	{ event COMBINE_AE_ALTFIRE 16 "" }
	addlayer "shootAR2alt_delta"
	addlayer "SMG1_Aim_all"
	node "standing_smg"
	ikrule "lfoot" footstep
	ikrule "rfoot" footstep
	ikrule "rhand" release
	ikrule "lhand" release
}

// ================================================================
// ================================================================

$definevariable Blend_Idle_Default "pistolangryidle2"
$definevariable Blend_Idle_Unarmed "batonidle1"
$definevariable Blend_Idle_Panicked "batonidle1"
$definevariable Blend_Idle_Pistol "pistolangryidle2"
$definevariable Blend_Idle_Rifle "smg1angryidle1"
$definevariable Blend_Idle_Rifle_Crouched "lowcover_aim_pistol"

$definevariable Blend_SMD_Default "police_animations_anims\pistolangryidle2.smd"
$definevariable Blend_SMD_Unarmed "police_animations_anims\batonidle1.smd"
$definevariable Blend_SMD_Panicked "police_animations_anims\batonidle1.smd"
$definevariable Blend_SMD_Pistol "police_animations_anims\pistolangryidle2.smd"
$definevariable Blend_SMD_Rifle "police_animations_anims\smg1angryidle1.smd"
$definevariable Blend_SMD_Rifle_Crouched "police_animations_anims\lowcover_aim_pistol.smd"

$definevariable Blend_Node_Default "shooting_pistol"
$definevariable Blend_Node_Pistol "shooting_pistol"
$definevariable Blend_Node_Rifle "shooting_smg"

$include "BaseDI.qci"
$include "AlyxDI.qci"
$include "AntlionRecvDI.qci"

$include "HunterRecvDI.qci"

$include "AlyxBlindfire.qci"

$include "GenericAnimationMacros.qci"
$include "SoldierSignals.qci"

// Soldiers' original signals had a FPS of 48
$definevariable SignalFPS 36 //32
$DefaultSignalGestures $SignalFPS$
$DefaultSignalSequences "police_animations_anims\pistolangryidle2.smd" $SignalFPS$

// Not good enough at/m
//$SoldierGrenadeDropAnimation $Blend_SMD_Rifle$
//$SoldierGrenadePlaceAnimation $Blend_SMD_Rifle$

// Gesture version of manhack deploy
$MakeManhackDeployLayer "police_animations_anims\deploy.smd" 30
$MakeManhackDeployGesture "police_animations_anims\smg1angryidle1.smd"

// ================================================================
// 
// Misc.
// 
// ================================================================
$include "SoldierEP1Rappel.qci"

// Add a heal animation
$MakeAdjustedAnimation Heal "male_shared_anims\Heal.smd" $Blend_SMD_Rifle$ 12 32 50
$append Heal {
	activity "ACT_CIT_HEAL" 1
	{ event AE_CITIZEN_HEAL 31 "" }
}

$KeyValues
{
	dynamic_interactions 
	{
		$DIKV_Alyx
	}
}
