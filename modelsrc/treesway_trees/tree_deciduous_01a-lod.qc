// Created by Crowbar 0.68

$modelname "props_foliage/tree_deciduous_01a-lod.mdl"

$staticprop

$bodygroup "Body"
{
	studio "tree_deciduous_01a-lod_reference.smd"
}

$lod 200
{
	replacemodel "tree_deciduous_01a-lod_reference.smd" "tree_deciduous_01a-lod_reference_lod1.smd"
	nofacial
}

$surfaceprop "wood_solid"

$contents "solid"

$illumposition -9.269 7.864 204.582

$mostlyopaque

$cdmaterials "models\props_foliage\"

$texturegroup "skinfamilies"
{
	{ "tree_deciduous_01a_lod"    "tree_deciduous_01a_trunk" }
	{ "tree_deciduous_01a_lod-leaves"    "tree_deciduous_01a_trunk" }
	{ "tree_deciduous_01a_lod_sway"    "tree_deciduous_01a_trunk_sway" }
	{ "tree_deciduous_01a_lod-leaves_sway"    "tree_deciduous_01a_trunk_sway" }
}

$cbox 0 0 0 0 0 0

$bbox -196.434 -206.638 -0.467 180.706 188.099 409.631

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

// Physics model should be the original model's
