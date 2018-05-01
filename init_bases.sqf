If(isMultiplayer)then{If(!isServer)exitWith{};};

private _objects_list = [];
private _spec_object = [];

params ["_obj_idx"];

switch(_obj_idx)do
{
  case 1:{
            //kleines Zeltcamp
            _objects_list = [
                              ["Land_Pillow_F",[1.0918,-1.49023,-0.0274272],343.95,1,0,[0.00506384,-0.00224119],"","",true,false],
                              ["Land_Pillow_old_F",[-1.57422,-1.39844,-0.0275323],217.045,1,0,[0.00467753,-0.000955018],"","",true,false],
                              ["Land_WaterBottle_01_compressed_F",[0.650391,-2.13086,-1.14441e-005],359.998,1,0,[-0.014266,-0.00529475],"","",true,false],
                              ["Land_Sleeping_bag_blue_F",[1.21094,-1.62891,0],305.538,1,0,[0,0],"","",true,false],
                              ["Land_BottlePlastic_V2_F",[-1.32422,-2.26367,6.4373e-006],359.525,1,0,[-0.73415,0.0735227],"","",true,false],
                              ["Land_Sleeping_bag_brown_F",[-1.64063,-1.51563,0],38.9115,1,0,[0,0],"","",true,false],
                              ["Land_Ground_sheet_folded_khaki_F",[-1.91992,-2.12305,-0.0269263],328.153,1,0,[-0.0262697,0.00024753],"","",true,false],
                              ["Land_TentDome_F",[3.03516,1.70117,0],302.073,1,0,[0,0],"","",true,false],
                              ["Land_TentDome_F",[-2.91016,2.01172,0],242.293,1,0,[0,0],"","",true,false],
                              ["Land_Camping_Light_F",[3.42383,-0.740234,-0.00121641],359.984,1,0,[-0.00104808,0.0190014],"","",true,false],
                              ["Campfire_burning_F",[-0.273438,-3.59961,0.0299993],0,1,0,[0,0],"","",true,false],
                              ["Land_Camping_Light_F",[-3.63477,0.0878906,-0.00121641],359.984,1,0,[-0.00104808,0.0190014],"","",true,false],
                              ["Land_WoodPile_F",[2.15039,-4.42383,0],225,1,0,[0,0],"","",true,false]
                            ];



          };
   case 2:{
             //kleine Basis -SatellitenAntenne und Telefon
             _objects_list = [
             	                  ["Land_CampingChair_V1_F",[1.49023,-0.0273438,0.00308943],338.096,1,0,[-0.000607427,0.000875329],"","",true,false],
             	                  ["Land_IRMaskingCover_01_F",[0.347656,0.0214844,0],90,1,0,[0,-0],"","",true,false],
             	                  ["Land_Sleeping_bag_brown_folded_F",[-1.94727,1.13867,-0.00176573],147.497,1,0,[-8.47012,0.175964],"","",true,false],
             	                  ["Land_CampingChair_V1_F",[1.48438,-1.7832,0.00309181],236.124,1,0,[0.000183452,0.000502678],"","",true,false],
             	                  ["Land_Sun_chair_green_F",[-2.07422,-1.69727,0.0199769],0.00282935,1,0,[0.0133363,0.00211077],"","",true,false],
             	                  ["Land_CampingTable_F",[2.51563,-0.986328,-0.00259256],89.9977,1,0,[-0.000699783,1.9231e-005],"","",true,false],
             	                  ["Land_Sun_chair_green_F",[-2.01563,1.9082,0.0199599],0.00247357,1,0,[0.0111741,-0.000232901],"","",true,false],
             	                  ["MapBoard_altis_F",[2.52539,1.51563,-0.00223589],53.2132,1,0,[-0.327599,0.000344597],"","",true,false],
             	                  ["Land_Ground_sheet_folded_khaki_F",[-2.08203,-2.70508,-0.00123763],35.2378,1,0,[-35.6074,0.256424],"","",true,false],
             	                  ["Land_CampingTable_small_F",[2.51367,-2.55078,0.00260258],89.9987,1,0,[9.12584e-005,5.33982e-005],"","",true,false],
             	                  ["Land_BagFence_01_long_green_F",[-4.15625,-0.171875,-0.000999928],90,1,0,[0,-0],"","",true,false],
             	                  ["Land_BagFence_01_long_green_F",[4.4707,-0.0332031,-0.000999928],90,1,0,[0,-0],"","",true,false],
             	                  ["Land_BagFence_01_long_green_F",[-4.15234,2.80859,-0.000999928],90,1,0,[0,-0],"","",true,false],
             	                  ["Land_BagFence_01_long_green_F",[-4.08594,-3.12695,-0.000999928],90,1,0,[0,-0],"","",true,false],
             	                  ["Land_BagFence_01_long_green_F",[4.47461,2.94727,-0.000999928],90,1,0,[0,-0],"","",true,false],
             	                  ["Land_BagFence_01_long_green_F",[4.54102,-2.98828,-0.000999928],90,1,0,[0,-0],"","",true,false],
             	                  ["Land_SatelliteAntenna_01_F",[6.17969,0.464844,3.33786e-006],89.9971,1,0,[0.0156915,0.0054773],"","",true,false],
             	                  ["Land_BagFence_01_long_green_F",[-4.14258,5.80859,-0.000999928],90,1,0,[0,-0],"","",true,false],
             	                  ["Land_BagFence_01_long_green_F",[-4.07031,-6.09375,-0.000999928],90,1,0,[0,-0],"","",true,false],
             	                  ["Land_BagFence_01_long_green_F",[4.48438,5.94727,-0.000999928],90,1,0,[0,-0],"","",true,false],
             	                  ["Land_BagFence_01_long_green_F",[4.55664,-5.95508,-0.000999928],90,1,0,[0,-0],"","",true,false],
             	                  ["Land_Portable_generator_F",[3.31445,-7.1875,-0.000808001],0.0801092,1,0,[-0.000316667,0.222794],"","",true,false],
             	                  ["Land_BagFence_01_long_green_F",[-1.98242,8.25781,-0.000999928],0,1,0,[0,0],"","",true,false],
             	                  ["Land_BagFence_01_long_green_F",[2.42383,-8.26758,-0.000999928],0,1,0,[0,0],"","",true,false],
             	                  ["Land_BagFence_01_corner_green_F",[-3.7168,-7.86328,-0.000999928],180,1,0,[0,0],"","",true,false],
             	                  ["Land_BagFence_01_corner_green_F",[-3.87891,7.87109,-0.000999928],270,1,0,[0,0],"","",true,false],
             	                  ["Land_BagFence_01_corner_green_F",[4.09375,7.86523,-0.000999928],0,1,0,[0,0],"","",true,false],
             	                  ["Land_BagFence_01_corner_green_F",[4.18359,-7.93555,-0.000999928],90,1,0,[0,-0],"","",true,false]
                            ];

               _spec_object = ["Land_CampingTable_small_F"];
          };
   case 3:{   //RebellenCamp
              _objects_list = [
              	                 ["CamoNet_BLUFOR_F",[1.08984,1.19531,0],0,1,0,[0,0],"","",true,false],
              	                 ["Land_TentA_F",[-2.78906,-0.308594,0],270,1,0,[0,0],"","",true,false],
              	                 ["Land_TentA_F",[-2.78906,1.76758,0],270,1,0,[0,0],"","",true,false],
              	                 ["Land_BagFence_01_long_green_F",[-0.0976563,3.53125,-0.000999928],0,1,0,[0,0],"","",true,false],
              	                 ["Land_BagFence_01_long_green_F",[2.92188,-2.61328,-0.000999928],0,1,0,[0,0],"","",true,false],
              	                 ["Land_BagFence_01_round_green_F",[-1.4043,-3.81445,-0.00130129],47.6299,1,0,[0,0],"","",true,false],
                  	             ["Land_BagFence_01_long_green_F",[2.85547,-2.62305,0.824222],0,1,0,[0,0],"","",true,false],
                  	             ["Land_BagFence_01_long_green_F",[-3.16602,-2.61328,-0.000999928],0,1,0,[0,0],"","",true,false],
                  	             ["Land_BagFence_01_round_green_F",[-1.42773,-3.7168,0.779086],47.6299,1,0,[0,0],"","",true,false],
                  	             ["Land_BagFence_01_long_green_F",[1.52734,-4.18945,-0.000999928],90,1,0,[0,-0],"","",true,false],
                  	             ["Land_BagFence_01_long_green_F",[2.74414,3.57227,-0.000999928],0,1,0,[0,0],"","",true,false],
                  	             ["Land_BagFence_01_long_green_F",[1.50586,-4.11719,0.799308],90,1,0,[0,-0],"","",true,false],
                  	             ["Land_BagFence_01_long_green_F",[-2.93164,3.50391,-0.000999928],0,1,0,[0,0],"","",true,false],
              	                 ["Land_BagFence_01_long_green_F",[2.69336,3.54492,0.845675],0,1,0,[0,0],"","",true,false],
              	                 ["Land_BagFence_01_long_green_F",[-3.00391,3.47852,0.832914],0,1,0,[0,0],"","",true,false],
              	                 ["Box_FIA_Wps_F",[4.23828,1.8418,-3.33786e-006],41.6327,1,0,[-0.000391365,0.000182673],"","",true,false],
              	                 ["Land_BagFence_01_round_green_F",[5.39844,-1.93164,-0.00130129],309.169,1,0,[0,0],"","",true,false],
              	                 ["Land_BagFence_01_round_green_F",[-5.68555,-1.90039,-0.00130129],47.6299,1,0,[0,0],"","",true,false],
              	                 ["Land_BagFence_01_long_green_F",[5.98828,0.501953,-0.000999928],90,1,0,[0,-0],"","",true,false],
              	                 ["Land_BagFence_01_round_green_F",[5.22656,3.00391,-0.00130129],217.236,1,0,[0,0],"","",true,false],
              	                 ["Land_BagFence_01_round_green_F",[-5.69531,-1.83594,0.794619],47.6299,1,0,[0,0],"","",true,false],
              	                 ["Land_BagFence_01_long_green_F",[5.9668,0.574219,0.799308],90,1,0,[0,-0],"","",true,false],
              	                 ["Land_BagFence_01_round_green_F",[5.18555,3.04688,0.813211],217.236,1,0,[0,0],"","",true,false],
              	                 ["Land_BagFence_01_long_green_F",[-6.19922,0.414063,-0.000999928],90,1,0,[0,-0],"","",true,false],
              	                 ["Land_BagFence_01_round_green_F",[-5.54688,2.88281,-0.00130129],137.353,1,0,[0,-0],"","",true,false],
              	                 ["Land_BagFence_01_round_green_F",[-5.5625,2.89648,0.838773],137.353,1,0,[0,-0],"","",true,false]
                             ];

              _spec_object = ["Box_FIA_Wps_F"];
          };
   case 4:{   //Bunkeranlage
              _objects_list = [
                                  ["Land_PillboxWall_01_6m_F",[-0.0449219,-2.44922,0.499993],0,1,0,[0,0],"","",true,false],
                                  ["Land_PillboxWall_01_6m_F",[-0.0351563,2.75,0.499993],180,1,0,[0,0],"","",true,false],
                                  ["Land_PillboxWall_01_3m_F",[2.36133,-3.61914,0.499993],120,1,0,[0,-0],"","",true,false],
                                  ["Land_PillboxWall_01_3m_F",[2.34375,3.90625,0.499993],60,1,0,[0,0],"","",true,false],
                                  ["Land_PillboxBunker_01_hex_F",[1.3457,-7.66602,4.76837e-007],239.954,1,0,[0,0],"","",true,false],
                                  ["Land_PillboxBunker_01_hex_F",[1.31055,7.94141,4.76837e-007],120,1,0,[0,-0],"","",true,false],
                                  ["Land_PillboxWall_01_3m_F",[6.84766,0.00390625,0.499993],90,1,0,[0,-0],"","",true,false],
                                  ["Land_PillboxWall_01_6m_F",[6.88086,-3.32422,0.499993],90,1,0,[0,-0],"","",true,false],
                                  ["Land_PillboxWall_01_6m_round_F",[-4.12695,-6.52539,0.5],179.962,1,0,[0,-0],"","",true,false],
                                  ["Land_PillboxWall_01_6m_F",[-6.65039,-3.60938,0.5],90,1,0,[0,-0],"","",true,false],
                                  ["Land_PillboxWall_01_6m_round_F",[-4.16016,6.8418,0.5],0,1,0,[0,0],"","",true,false],
                                  ["Land_PillboxWall_01_6m_F",[-6.65625,4.04102,0.5],90,1,0,[0,-0],"","",true,false],
                                  ["Land_PillboxWall_01_3m_F",[8.07617,3.82227,0.5],180,1,0,[0,0],"","",true,false],
                                  ["Land_PillboxWall_01_6m_F",[6.78125,-6.42773,0.499993],180,1,0,[0,0],"","",true,false],
                                  ["Land_PillboxWall_01_6m_F",[6.6582,6.69922,0.5],0,1,0,[0,0],"","",true,false],
                                  ["Land_PillboxWall_01_6m_F",[9.60742,1.10742,0.499993],90,1,0,[0,-0],"","",true,false],
                                  ["Land_ConcreteWall_01_m_gate_F",[9.86914,-1.52148,2.38419e-007],270,1,0,[0,0],"","",true,false],
                                  ["Land_PillboxBunker_01_hex_F",[-9.59961,-7.63867,4.76837e-007],299.953,1,0,[0,0],"","",true,false],
                                  ["Land_PillboxBunker_01_hex_F",[-9.64063,7.97656,4.76837e-007],60,1,0,[0,0],"","",true,false],
                                  ["Box_FIA_Wps_F",[-10.7656,0.103516,-3.33786e-006],264.545,1,0,[-0.00040309,0.000121024],"","",true,false],
                                  ["Land_PillboxBunker_01_hex_F",[11.9434,5.49219,4.76837e-007],180,1,0,[0,0],"","",true,false],
                                  ["Land_PillboxWall_01_6m_F",[-11.334,-2.33203,0.499993],240.121,1,0,[0,0],"","",true,false],
                                  ["Land_PillboxWall_01_6m_F",[-11.3301,2.59961,0.5],300,1,0,[0,0],"","",true,false]
                              ];
              _spec_object = ["Box_FIA_Wps_F"];
          };
   case 5:{
              //Strassensperre
              _objects_list = [
                                ["Land_HBarrier_5_F",[6.54688,2.10547,0],90,1,0,[0,-0],"","",true,false],
                                ["Land_HBarrier_5_F",[-6.75977,2.36523,0],90,1,0,[0,-0],"","",true,false],
                                ["Land_Razorwire_F",[-7.14648,9.75781,-2.86102e-006],0,1,0,[0,0],"","",true,false],
                                ["Land_Razorwire_F",[3.65625,-10.7637,-2.86102e-006],0,1,0,[0,0],"","",true,false],
                                ["Land_CzechHedgehog_01_F",[-2.33203,12.0488,0],0,1,0,[0,0],"","",true,false],
                                ["Land_CzechHedgehog_01_F",[1.36328,-12.8105,0],0,1,0,[0,0],"","",true,false],
                                ["Land_CzechHedgehog_01_F",[-5.55664,11.8359,0],0,1,0,[0,0],"","",true,false],
                                ["RoadBarrier_small_F",[-0.568359,13.834,0.0708292],359.983,1,0,[-0.00156564,0.00347669],"","",true,false],
                                ["Land_CzechHedgehog_01_F",[4.94141,-12.9883,0],0,1,0,[0,0],"","",true,false],
                                ["Land_BagBunker_01_small_green_F",[9.28125,10.7676,0],153.671,1,0,[0,-0],"","",true,false],
                                ["Land_HBarrier_5_F",[12.2988,9.54492,0],90,1,0,[0,-0],"","",true,false],
                                ["Land_HBarrier_5_F",[-12.209,-5.33789,0],90,1,0,[0,-0],"","",true,false],
                                ["Land_BagBunker_01_small_green_F",[-9.32813,-11.4453,0],342.366,1,0,[0,0],"","",true,false],
                                ["RoadBarrier_small_F",[0.228516,-14.75,0.0708125],359.975,1,0,[0.00157945,-0.000316649],"","",true,false],
                                ["Land_CzechHedgehog_01_F",[-9.13477,12.0137,0],0,1,0,[0,0],"","",true,false],
                                ["Land_CzechHedgehog_01_F",[8.16602,-12.7754,0],0,1,0,[0,0],"","",true,false],
                                ["Land_Concrete_SmallWall_8m_F",[6.86133,15.541,0],270,1,0,[0,0],"","",true,false],
                                ["Land_Concrete_SmallWall_8m_F",[-6.96094,-16.4961,0],90,1,0,[0,-0],"","",true,false],
                                ["Land_CncBarrier_stripes_F",[8.35742,19.8691,0],160.463,1,0,[0,-0],"","",true,false],
                                ["Land_CncBarrier_stripes_F",[-8.44336,-20.9258,0],335.341,1,0,[0,0],"","",true,false]
                             ];
               _spec_object = ["Land_BagBunker_01_small_green_F"];
          };
   case 6:{
            //AntiAirStellung
            _objects_list = [
            	                 ["Land_HBarrier_Big_F",[4.92383,4.16016,0],90,1,0,[0,-0],"","",true,false],
            	                 ["Land_HBarrier_Big_F",[-5.45508,3.70703,0],90,1,0,[0,-0],"","",true,false],
            	                 ["Land_HBarrier_Big_F",[5.18359,-4.36133,0],90,1,0,[0,-0],"","",true,false],
            	                 ["Land_HBarrier_Big_F",[-5.24414,-4.78125,0],90,1,0,[0,-0],"","",true,false],
            	                 ["Land_HBarrier_Big_F",[0.119141,-7.86328,0],0,1,0,[0,0],"","",true,false]
                            ];
          };

};

BASES_STORE = [_objects_list,_spec_object];
