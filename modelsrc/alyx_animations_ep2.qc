
$modelname "Alyx_animations.mdl"

// Must be included
$include "BaseModel.qci"
$include "hl2mp_ported_anims/commonbones_female.qci"
$include "hl2mp_ported_anims/weaponmacros.qci"

$includemodel "alyx_animations_original.mdl"
$include "alyx_animations_ep2_DeclareSequence.qci"

// ================================================================
// 
// Crouch Animation Fixes
// 
// (need to be adjusted for the new female citizen pistol animations)
// 
// ================================================================
$sequence "Crouch_to_shoot" {
	"alyx_animations_ep2\Crouch_to_shoot.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "layer_Aim_p_all" 8 15 25 25 spline
	transition "crouching" "shooting_pistol" // shooting
	fps 30
	ikrule "rfoot" footstep contact 1 fakeorigin -8.02 -4.58 0 fakerotate 0 0 0 floor 0 height 18 radius 2.5 range 0 1 5 10 target 2
	ikrule "rfoot" footstep contact 12 fakeorigin -3.09 -7.27 0 fakerotate 0 0 0 floor 0 height 18 radius 2.5 range 10 12 24 25 target 2
	ikrule "lfoot" footstep contact 1 fakeorigin 4.85 1.29 0 fakerotate 0 0 0 floor 0 height 18 radius 2.5 range 0 1 14 16 target 3
	ikrule "lfoot" footstep contact 24 fakeorigin 10.81 2.86 0 fakerotate 0 0 0 floor 0 height 18 radius 2.5 range 21 24 24 25 target 3
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 25 25 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 25 25 target 1
}

$sequence "Shoot_to_crouch" {
	"alyx_animations_ep2\Shoot_to_crouch.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "layer_Aim_p_all" 8 15 25 25 spline
	transition "shooting_pistol" "crouching" // shooting
	fps 30
	ikrule "rfoot" footstep contact 6 fakeorigin -8.34 -4.37 0 fakerotate 0 0 0 floor 0 height 18 radius 2.5 range 0 6 24 25 target 2
	ikrule "lfoot" footstep contact 1 fakeorigin 10.81 2.86 0 fakerotate 0 0 0 floor 0 height 18 radius 2.5 range 0 1 7 10 target 3
	ikrule "lfoot" footstep contact 14 fakeorigin 4.85 1.29 0 fakerotate 0 0 0 floor 0 height 18 radius 2.5 range 10 14 24 25 target 3
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 25 25 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 25 25 target 1
}

$sequence "Crouchshoot_to_standshoot" {
	"alyx_animations_ep2\Crouchshoot_to_standshoot.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "layer_Aim_p_all" 8 15 25 25 spline
	transition "crouchShooting" "shooting_pistol" // shooting
	fps 30
	ikrule "rfoot" footstep contact 1 fakeorigin -7.76 -4.75 0 fakerotate 0 0 0 floor 0 height 18 radius 2.5 range 0 1 5 10 target 2
	ikrule "rfoot" footstep contact 12 fakeorigin -3.02 -7.33 0 fakerotate 0 0 0 floor 0 height 18 radius 2.5 range 10 12 24 25 target 2
	ikrule "lfoot" footstep contact 1 fakeorigin 4.85 1.29 0 fakerotate 0 0 0 floor 0 height 18 radius 2.5 range 0 1 14 16 target 3
	ikrule "lfoot" footstep contact 24 fakeorigin 10.81 2.86 0 fakerotate 0 0 0 floor 0 height 18 radius 2.5 range 21 24 24 25 target 3
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 25 25 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 25 25 target 1
}

$sequence "Standshoot_to_crouchshoot" {
	"alyx_animations_ep2\Standshoot_to_crouchshoot.smd"
	activity "ACT_TRANSITION" 1
	fadein 0.2
	fadeout 0.2
	blendlayer "layer_Aim_p_all" 8 15 25 25 spline
	transition "shooting_pistol" "crouchShooting" // shooting
	fps 30
	ikrule "rfoot" footstep contact 6 fakeorigin -7.75 -4.76 0 fakerotate 0 0 0 floor 0 height 18 radius 2.5 range 0 6 24 25 target 2
	ikrule "lfoot" footstep contact 1 fakeorigin 10.81 2.86 0 fakerotate 0 0 0 floor 0 height 18 radius 2.5 range 0 1 7 10 target 3
	ikrule "lfoot" footstep contact 14 fakeorigin 4.85 1.29 0 fakerotate 0 0 0 floor 0 height 18 radius 2.5 range 10 14 24 25 target 3
	ikrule "rhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 25 25 target 0
	ikrule "lhand" release contact 0 fakeorigin 0 0 0 fakerotate 0 0 0 floor 0 height 0 radius 0 range 0 0 25 25 target 1
}
