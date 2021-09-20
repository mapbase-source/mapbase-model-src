// Created by Crowbar 0.68

$modelname "props_foliage/tree_pine_tall_02.mdl"

$staticprop

$bodygroup "Body"
{
	studio "tree_pine_tall_02_reference.smd"
}


$surfaceprop "wood_solid"

$contents "solid"

$illumposition -32.14 -0.349 322.917

$cdmaterials "models\props_foliage\"

$texturegroup "skinfamilies"
{
	{ "tree_deciduous_01a_trunk"    "tree_pine_01_branches" }
	{ "tree_deciduous_01a_trunk_sway"    "tree_pine_01_branches_sway" }
}

$cbox 0 0 0 0 0 0

$bbox -173.855 -197.528 0 174.553 133.247 645.833

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
