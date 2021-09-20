// Created by Crowbar 0.68

$modelname "props_foliage/tree_pine_02.mdl"

$staticprop

$bodygroup "Body"
{
	studio "tree_pine_02_reference.smd"
}


$surfaceprop "wood_solid"

$contents "solid"

$illumposition 42.244 6.19 193.966

$cdmaterials "models\props_foliage\"

$texturegroup "skinfamilies"
{
	{ "tree_deciduous_01a_trunk"    "tree_pine_01_branches" }
	{ "tree_deciduous_01a_trunk_sway"    "tree_pine_01_branches_sway" }
}

$cbox 0 0 0 0 0 0

$bbox -145.999 -65.907 -0.25 133.62 150.394 387.932

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

// Physics model should be the original model's
