// Created by Crowbar 0.68

$modelname "props_foliage/tree_pine_03.mdl"

$staticprop

$bodygroup "Body"
{
	studio "tree_pine_03_reference.smd"
}


$surfaceprop "wood_solid"

$contents "solid"

$illumposition 3.883 -8.32 91.432

$cdmaterials "models\props_foliage\"

$texturegroup "skinfamilies"
{
	{ "tree_deciduous_01a_trunk"    "tree_pine_01_branches" }
	{ "tree_deciduous_01a_trunk_sway"    "tree_pine_01_branches_sway" }
}

$cbox 0 0 0 0 0 0

$bbox -94.352 -98.216 -11.276 110.991 105.982 194.141

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

// Physics model should be the original model's
