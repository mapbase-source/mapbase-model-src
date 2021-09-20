// Created by Crowbar 0.68

$modelname "props_foliage/tree_deciduous_03a.mdl"

$staticprop

$bodygroup "Body"
{
	studio "tree_deciduous_03a.smd"
}

$lod 100
{
	replacemodel "tree_deciduous_03a.smd" "tree_deciduous_03a_lod1.smd"
	nofacial
}

$surfaceprop "wood_solid"

$contents "solid"

$illumposition 25.881 -4.463 124.2

$cdmaterials "models\props_foliage\"

$texturegroup "skinfamilies"
{
	{ "tree_deciduous_01a_branches"    "tree_deciduous_01a_trunk" }
	{ "tree_deciduous_01a_leaves"    "tree_deciduous_01a_trunk" }
	{ "tree_deciduous_01a_branches_sway"    "tree_deciduous_01a_trunk_sway" }
	{ "tree_deciduous_01a_leaves_sway"    "tree_deciduous_01a_trunk_sway" }
}

$cbox 0 0 0 0 0 0

$bbox -74.761 -74.669 -2.591 83.687 126.431 249.745

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

// Physics model should be the original model's
