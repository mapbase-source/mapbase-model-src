// Created by Crowbar 0.68

$modelname "props_foliage/tree_cliff_01a.mdl"

$staticprop

$bodygroup "Body"
{
	studio "tree_cliff_01a.smd"
}

$lod 150
{
	replacemodel "tree_cliff_01a.smd" "tree_cliff_01a_lod1.smd"
	nofacial
}

$surfaceprop "wood"

$contents "solid"

$illumposition -37.518 -76.201 224.475

$cdmaterials "models\props_foliage\"

$texturegroup "skinfamilies"
{
	{ "tree_deciduous_01a_branches"    "tree_deciduous_01a_trunk" }
	{ "tree_deciduous_01a_leaves"    "tree_deciduous_01a_trunk" }
	{ "tree_deciduous_01a_branches_sway"    "tree_deciduous_01a_trunk_sway" }
	{ "tree_deciduous_01a_leaves_sway"    "tree_deciduous_01a_trunk_sway" }
}

$cbox 0 0 0 0 0 0

$bbox -142.527 -253.074 -142.461 294.93 178.038 591.412

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

// Physics model should be the original model's
