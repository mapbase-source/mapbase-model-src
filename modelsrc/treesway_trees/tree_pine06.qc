// Created by Crowbar 0.68

$modelname "props_foliage\Tree_pine06.mdl"

$staticprop

$bodygroup "Body"
{
	studio "Tree_pine06.smd"
}

$lod 150
{
	replacemodel "Tree_pine06.smd" "Tree_pine06_lod1.smd"
	nofacial
}
$lod 200
{
	replacemodel "Tree_pine06.smd" "Tree_pine06_lod2.smd"
	nofacial
}
$lod 250
{
	replacemodel "Tree_pine06.smd" "Tree_pine06_lod3.smd"
	nofacial
}

$surfaceprop "default"

$contents "solid"

$illumposition 6.352 0.849 236.954

$casttextureshadows

$cdmaterials "models\props_foliage\"

$texturegroup "skinfamilies"
{
	{ "arbre01" }
	{ "arbre01_sway" }
}

$cbox 0 0 0 0 0 0

$bbox -123.99 -110.795 -1.184 122.292 123.499 475.093

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

// Physics model should be the original model's
