// Created by Crowbar 0.68

$modelname "extras/info_scene.mdl"

$scale 1.25

$bodygroup "Body"
{
	studio "info_scene_reference.smd"
}


$surfaceprop "combine_metal"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "models\extras\"

$texturegroup "skinfamilies"
{
	{ "scene_info"      }
	{ "scene_info_used" }
}

$cbox 0 0 0 0 0 0

$bbox -16 -16 -16 16 16 16

$hboxset "default"
$hbox 0 "cube" -16 -16 -16 16 16 16

$definebone "cube" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0
$definebone "circle" "cube" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"info_speech_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 12
	loop
}

$collisionmodel "info_scene_physics.smd" //"info_speech_physics.smd"
{
	$mass 1000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
