// Created by Crowbar 0.68

$modelname "props_foliage/tree_deciduous_03b.mdl"

$staticprop

$bodygroup "Body"
{
	studio "tree_deciduous_03b.smd"
}

$lod 50
{
	replacemodel "tree_deciduous_03b.smd" "tree_deciduous_03b_lod1.smd"
	nofacial
}

$surfaceprop "wood_solid"

$contents "solid"

$illumposition -11.635 15.711 67.907

$cdmaterials "models\props_foliage\"

$texturegroup "skinfamilies"
{
	{ "tree_deciduous_01a_branches"    "tree_deciduous_01a_trunk" }
	{ "tree_deciduous_01a_leaves"    "tree_deciduous_01a_trunk" }
	{ "tree_deciduous_01a_branches_sway"    "tree_deciduous_01a_trunk_sway" }
	{ "tree_deciduous_01a_leaves_sway"    "tree_deciduous_01a_trunk_sway" }
}

$cbox 0 0 0 0 0 0

$bbox -75.111 -83.423 -1.445 43.689 60.153 136.552

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

// Physics model should be the original model's
