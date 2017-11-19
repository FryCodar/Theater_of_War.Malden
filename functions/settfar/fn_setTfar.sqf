if(!hasInterface)exitWith{};
[] spawn{
//private["_settingsSwWest","_settingsLRWest","_settingsSwEast","_settingsLREast","_settingsSwInd","_settingsLRInd"];
//TFAR-Grundeinstellungen
tf_no_auto_long_range_radio = true;
tf_give_personal_radio_to_regular_soldier = true;
TF_give_microdagr_to_soldier = false;
tf_same_sw_frequencies_for_side = true;
tf_same_lr_frequencies_for_side = true;
tf_terrain_interception_coefficient = 6.0;


//radios:
TFAR_DefaultRadio_Personal_West = "tfar_anprc152";
TFAR_DefaultRadio_Personal_East = "tfar_fadak";
TFAR_DefaultRadio_Personal_Independent = "tfar_anprc148jem";
TFAR_DefaultRadio_Rifleman_West = "tfar_anprc152";
TFAR_DefaultRadio_Rifleman_East = "tfar_fadak";
TFAR_DefaultRadio_Rifleman_Independent = "tfar_anprc148jem";
};
