#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Tue Apr 28 15:46:44 2026                
#                                                     
#######################################################

#@(#)CDS: Innovus v19.12-s087_1 (64bit) 11/11/2019 17:32 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: NanoRoute 19.12-s087_1 NR191024-1807/19_12-UB (database version 18.20, 485.7.1) {superthreading v1.51}
#@(#)CDS: AAE 19.12-s033 (64bit) 11/11/2019 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: CTE 19.12-s033_1 () Oct 24 2019 14:09:28 ( )
#@(#)CDS: SYNTECH 19.12-s008_1 () Oct  6 2019 23:25:36 ( )
#@(#)CDS: CPE v19.12-s079
#@(#)CDS: IQuantus/TQuantus 19.1.3-s095 (64bit) Fri Aug 30 18:16:09 PDT 2019 (Linux 2.6.32-431.11.2.el6.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
win
setMultiCpuUsage -localCpu 48
set ::TimeLib::tsgMarkCellLatchConstructFlag 1
set conf_qxconf_file NULL
set conf_qxlib_file NULL
set defHierChar /
set distributed_client_message_echo 1
set distributed_mmmc_disable_reports_auto_redirection 0
set eco_post_client_restore_command {update_timing ; write_eco_opt_db ;}
set enc_enable_print_mode_command_reset_options 1
set init_gnd_net VSS
set init_lef_file {  /home/yingna/project/tsmcN40_1p9m/stdcell/TSMCHOME/digital/Back_End/lef/tcbn40lpbwp_120c/lef/VHV_0d5_0/tcbn40lpbwp_9lm6X2ZRDL.lef  }
set init_mmmc_file enc_scripts/local_ctrl_row/local_ctrl_row_mmmc.view
set init_pwr_net H_VDD
set init_verilog ../syn/output/local_ctrl_row/local_ctrl_row_gate.v
set latch_time_borrow_mode max_borrow
set pegDefaultResScaleFactor 1
set pegDetailResScaleFactor 1
set report_inactive_arcs_format {from to when arc_type sense reason}
set soft_stack_size_limit 515
set tso_post_client_restore_command {update_timing ; write_eco_opt_db ;}
init_design
floorPlan -site core -s 12 2175 2 2 2 2 -noSnapToGrid
setDesignMode -process 40
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection clockwise -side top -layer 4 -spreadType start -spacing 1.1 -start 1.0 2175-0.1 -pin {clk rstn wr_data_in wr_vld rd_rdy rd_vld rd_data_out p_code_vld p_out_vld p_out}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 48.45 -pin {{cp_ctrl[0]} {cp_ctrl[1]} {cp_ctrl[2]} {cp_ctrl[3]} {cp_ctrl[4]} {cp_ctrl[5]} {cp_ctrl[6]} {cp_ctrl[7]} {cp_ctrl[8]} {cp_ctrl[9]} {cp_ctrl[10]} {cp_ctrl[11]} {cp_ctrl[12]} {cp_ctrl[13]} {cp_ctrl[14]} {cp_ctrl[40]} {cp_ctrl[15]} {cp_ctrl[16]} {cp_ctrl[17]} {cp_ctrl[18]} {cp_ctrl[19]} {cp_ctrl[20]} {cp_ctrl[21]} {cp_ctrl[22]} {cp_ctrl[23]} {cp_ctrl[24]} {cp_ctrl[25]} {cp_ctrl[26]} {cp_ctrl[27]} {cp_ctrl[28]} {cp_ctrl[41]} {cp_ctrl[29]} {cp_ctrl[30]} {cp_ctrl[31]} {cp_ctrl[32]} {p_code[0]} {p_code[1]} {cp_ctrl[33]} {cp_ctrl[34]} {cp_ctrl[35]} {cp_ctrl[36]} {cp_ctrl[37]} {cp_ctrl[38]} {cp_ctrl[39]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 96.9 -pin {{cp_ctrl[42]} {cp_ctrl[43]} {cp_ctrl[44]} {cp_ctrl[45]} {cp_ctrl[46]} {cp_ctrl[47]} {cp_ctrl[48]} {cp_ctrl[49]} {cp_ctrl[50]} {cp_ctrl[51]} {cp_ctrl[52]} {cp_ctrl[53]} {cp_ctrl[54]} {cp_ctrl[55]} {cp_ctrl[56]} {cp_ctrl[82]} {cp_ctrl[57]} {cp_ctrl[58]} {cp_ctrl[59]} {cp_ctrl[60]} {cp_ctrl[61]} {cp_ctrl[62]} {cp_ctrl[63]} {cp_ctrl[64]} {cp_ctrl[65]} {cp_ctrl[66]} {cp_ctrl[67]} {cp_ctrl[68]} {cp_ctrl[69]} {cp_ctrl[70]} {cp_ctrl[83]} {cp_ctrl[71]} {cp_ctrl[72]} {cp_ctrl[73]} {cp_ctrl[74]} {p_code[2]} {p_code[3]} {cp_ctrl[75]} {cp_ctrl[76]} {cp_ctrl[77]} {cp_ctrl[78]} {cp_ctrl[79]} {cp_ctrl[80]} {cp_ctrl[81]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 145.35 -pin {{cp_ctrl[84]} {cp_ctrl[85]} {cp_ctrl[86]} {cp_ctrl[87]} {cp_ctrl[88]} {cp_ctrl[89]} {cp_ctrl[90]} {cp_ctrl[91]} {cp_ctrl[92]} {cp_ctrl[93]} {cp_ctrl[94]} {cp_ctrl[95]} {cp_ctrl[96]} {cp_ctrl[97]} {cp_ctrl[98]} {cp_ctrl[124]} {cp_ctrl[99]} {cp_ctrl[100]} {cp_ctrl[101]} {cp_ctrl[102]} {cp_ctrl[103]} {cp_ctrl[104]} {cp_ctrl[105]} {cp_ctrl[106]} {cp_ctrl[107]} {cp_ctrl[108]} {cp_ctrl[109]} {cp_ctrl[110]} {cp_ctrl[111]} {cp_ctrl[112]} {cp_ctrl[125]} {cp_ctrl[113]} {cp_ctrl[114]} {cp_ctrl[115]} {cp_ctrl[116]} {p_code[4]} {p_code[5]} {cp_ctrl[117]} {cp_ctrl[118]} {cp_ctrl[119]} {cp_ctrl[120]} {cp_ctrl[121]} {cp_ctrl[122]} {cp_ctrl[123]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 193.8 -pin {{cp_ctrl[126]} {cp_ctrl[127]} {cp_ctrl[128]} {cp_ctrl[129]} {cp_ctrl[130]} {cp_ctrl[131]} {cp_ctrl[132]} {cp_ctrl[133]} {cp_ctrl[134]} {cp_ctrl[135]} {cp_ctrl[136]} {cp_ctrl[137]} {cp_ctrl[138]} {cp_ctrl[139]} {cp_ctrl[140]} {cp_ctrl[166]} {cp_ctrl[141]} {cp_ctrl[142]} {cp_ctrl[143]} {cp_ctrl[144]} {cp_ctrl[145]} {cp_ctrl[146]} {cp_ctrl[147]} {cp_ctrl[148]} {cp_ctrl[149]} {cp_ctrl[150]} {cp_ctrl[151]} {cp_ctrl[152]} {cp_ctrl[153]} {cp_ctrl[154]} {cp_ctrl[167]} {cp_ctrl[155]} {cp_ctrl[156]} {cp_ctrl[157]} {cp_ctrl[158]} {p_code[6]} {p_code[7]} {cp_ctrl[159]} {cp_ctrl[160]} {cp_ctrl[161]} {cp_ctrl[162]} {cp_ctrl[163]} {cp_ctrl[164]} {cp_ctrl[165]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 242.25 -pin {{cp_ctrl[168]} {cp_ctrl[169]} {cp_ctrl[170]} {cp_ctrl[171]} {cp_ctrl[172]} {cp_ctrl[173]} {cp_ctrl[174]} {cp_ctrl[175]} {cp_ctrl[176]} {cp_ctrl[177]} {cp_ctrl[178]} {cp_ctrl[179]} {cp_ctrl[180]} {cp_ctrl[181]} {cp_ctrl[182]} {cp_ctrl[208]} {cp_ctrl[183]} {cp_ctrl[184]} {cp_ctrl[185]} {cp_ctrl[186]} {cp_ctrl[187]} {cp_ctrl[188]} {cp_ctrl[189]} {cp_ctrl[190]} {cp_ctrl[191]} {cp_ctrl[192]} {cp_ctrl[193]} {cp_ctrl[194]} {cp_ctrl[195]} {cp_ctrl[196]} {cp_ctrl[209]} {cp_ctrl[197]} {cp_ctrl[198]} {cp_ctrl[199]} {cp_ctrl[200]} {p_code[8]} {p_code[9]} {cp_ctrl[201]} {cp_ctrl[202]} {cp_ctrl[203]} {cp_ctrl[204]} {cp_ctrl[205]} {cp_ctrl[206]} {cp_ctrl[207]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 290.7 -pin {{cp_ctrl[210]} {cp_ctrl[211]} {cp_ctrl[212]} {cp_ctrl[213]} {cp_ctrl[214]} {cp_ctrl[215]} {cp_ctrl[216]} {cp_ctrl[217]} {cp_ctrl[218]} {cp_ctrl[219]} {cp_ctrl[220]} {cp_ctrl[221]} {cp_ctrl[222]} {cp_ctrl[223]} {cp_ctrl[224]} {cp_ctrl[250]} {cp_ctrl[225]} {cp_ctrl[226]} {cp_ctrl[227]} {cp_ctrl[228]} {cp_ctrl[229]} {cp_ctrl[230]} {cp_ctrl[231]} {cp_ctrl[232]} {cp_ctrl[233]} {cp_ctrl[234]} {cp_ctrl[235]} {cp_ctrl[236]} {cp_ctrl[237]} {cp_ctrl[238]} {cp_ctrl[251]} {cp_ctrl[239]} {cp_ctrl[240]} {cp_ctrl[241]} {cp_ctrl[242]} {p_code[10]} {p_code[11]} {cp_ctrl[243]} {cp_ctrl[244]} {cp_ctrl[245]} {cp_ctrl[246]} {cp_ctrl[247]} {cp_ctrl[248]} {cp_ctrl[249]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 339.15 -pin {{cp_ctrl[252]} {cp_ctrl[253]} {cp_ctrl[254]} {cp_ctrl[255]} {cp_ctrl[256]} {cp_ctrl[257]} {cp_ctrl[258]} {cp_ctrl[259]} {cp_ctrl[260]} {cp_ctrl[261]} {cp_ctrl[262]} {cp_ctrl[263]} {cp_ctrl[264]} {cp_ctrl[265]} {cp_ctrl[266]} {cp_ctrl[292]} {cp_ctrl[267]} {cp_ctrl[268]} {cp_ctrl[269]} {cp_ctrl[270]} {cp_ctrl[271]} {cp_ctrl[272]} {cp_ctrl[273]} {cp_ctrl[274]} {cp_ctrl[275]} {cp_ctrl[276]} {cp_ctrl[277]} {cp_ctrl[278]} {cp_ctrl[279]} {cp_ctrl[280]} {cp_ctrl[293]} {cp_ctrl[281]} {cp_ctrl[282]} {cp_ctrl[283]} {cp_ctrl[284]} {p_code[12]} {p_code[13]} {cp_ctrl[285]} {cp_ctrl[286]} {cp_ctrl[287]} {cp_ctrl[288]} {cp_ctrl[289]} {cp_ctrl[290]} {cp_ctrl[291]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 387.6 -pin {{cp_ctrl[294]} {cp_ctrl[295]} {cp_ctrl[296]} {cp_ctrl[297]} {cp_ctrl[298]} {cp_ctrl[299]} {cp_ctrl[300]} {cp_ctrl[301]} {cp_ctrl[302]} {cp_ctrl[303]} {cp_ctrl[304]} {cp_ctrl[305]} {cp_ctrl[306]} {cp_ctrl[307]} {cp_ctrl[308]} {cp_ctrl[334]} {cp_ctrl[309]} {cp_ctrl[310]} {cp_ctrl[311]} {cp_ctrl[312]} {cp_ctrl[313]} {cp_ctrl[314]} {cp_ctrl[315]} {cp_ctrl[316]} {cp_ctrl[317]} {cp_ctrl[318]} {cp_ctrl[319]} {cp_ctrl[320]} {cp_ctrl[321]} {cp_ctrl[322]} {cp_ctrl[335]} {cp_ctrl[323]} {cp_ctrl[324]} {cp_ctrl[325]} {cp_ctrl[326]} {p_code[14]} {p_code[15]} {cp_ctrl[327]} {cp_ctrl[328]} {cp_ctrl[329]} {cp_ctrl[330]} {cp_ctrl[331]} {cp_ctrl[332]} {cp_ctrl[333]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 436.05 -pin {{cp_ctrl[336]} {cp_ctrl[337]} {cp_ctrl[338]} {cp_ctrl[339]} {cp_ctrl[340]} {cp_ctrl[341]} {cp_ctrl[342]} {cp_ctrl[343]} {cp_ctrl[344]} {cp_ctrl[345]} {cp_ctrl[346]} {cp_ctrl[347]} {cp_ctrl[348]} {cp_ctrl[349]} {cp_ctrl[350]} {cp_ctrl[376]} {cp_ctrl[351]} {cp_ctrl[352]} {cp_ctrl[353]} {cp_ctrl[354]} {cp_ctrl[355]} {cp_ctrl[356]} {cp_ctrl[357]} {cp_ctrl[358]} {cp_ctrl[359]} {cp_ctrl[360]} {cp_ctrl[361]} {cp_ctrl[362]} {cp_ctrl[363]} {cp_ctrl[364]} {cp_ctrl[377]} {cp_ctrl[365]} {cp_ctrl[366]} {cp_ctrl[367]} {cp_ctrl[368]} {p_code[16]} {p_code[17]} {cp_ctrl[369]} {cp_ctrl[370]} {cp_ctrl[371]} {cp_ctrl[372]} {cp_ctrl[373]} {cp_ctrl[374]} {cp_ctrl[375]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 484.5 -pin {{cp_ctrl[378]} {cp_ctrl[379]} {cp_ctrl[380]} {cp_ctrl[381]} {cp_ctrl[382]} {cp_ctrl[383]} {cp_ctrl[384]} {cp_ctrl[385]} {cp_ctrl[386]} {cp_ctrl[387]} {cp_ctrl[388]} {cp_ctrl[389]} {cp_ctrl[390]} {cp_ctrl[391]} {cp_ctrl[392]} {cp_ctrl[418]} {cp_ctrl[393]} {cp_ctrl[394]} {cp_ctrl[395]} {cp_ctrl[396]} {cp_ctrl[397]} {cp_ctrl[398]} {cp_ctrl[399]} {cp_ctrl[400]} {cp_ctrl[401]} {cp_ctrl[402]} {cp_ctrl[403]} {cp_ctrl[404]} {cp_ctrl[405]} {cp_ctrl[406]} {cp_ctrl[419]} {cp_ctrl[407]} {cp_ctrl[408]} {cp_ctrl[409]} {cp_ctrl[410]} {p_code[18]} {p_code[19]} {cp_ctrl[411]} {cp_ctrl[412]} {cp_ctrl[413]} {cp_ctrl[414]} {cp_ctrl[415]} {cp_ctrl[416]} {cp_ctrl[417]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 532.95 -pin {{cp_ctrl[420]} {cp_ctrl[421]} {cp_ctrl[422]} {cp_ctrl[423]} {cp_ctrl[424]} {cp_ctrl[425]} {cp_ctrl[426]} {cp_ctrl[427]} {cp_ctrl[428]} {cp_ctrl[429]} {cp_ctrl[430]} {cp_ctrl[431]} {cp_ctrl[432]} {cp_ctrl[433]} {cp_ctrl[434]} {cp_ctrl[460]} {cp_ctrl[435]} {cp_ctrl[436]} {cp_ctrl[437]} {cp_ctrl[438]} {cp_ctrl[439]} {cp_ctrl[440]} {cp_ctrl[441]} {cp_ctrl[442]} {cp_ctrl[443]} {cp_ctrl[444]} {cp_ctrl[445]} {cp_ctrl[446]} {cp_ctrl[447]} {cp_ctrl[448]} {cp_ctrl[461]} {cp_ctrl[449]} {cp_ctrl[450]} {cp_ctrl[451]} {cp_ctrl[452]} {p_code[20]} {p_code[21]} {cp_ctrl[453]} {cp_ctrl[454]} {cp_ctrl[455]} {cp_ctrl[456]} {cp_ctrl[457]} {cp_ctrl[458]} {cp_ctrl[459]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 581.4 -pin {{cp_ctrl[462]} {cp_ctrl[463]} {cp_ctrl[464]} {cp_ctrl[465]} {cp_ctrl[466]} {cp_ctrl[467]} {cp_ctrl[468]} {cp_ctrl[469]} {cp_ctrl[470]} {cp_ctrl[471]} {cp_ctrl[472]} {cp_ctrl[473]} {cp_ctrl[474]} {cp_ctrl[475]} {cp_ctrl[476]} {cp_ctrl[502]} {cp_ctrl[477]} {cp_ctrl[478]} {cp_ctrl[479]} {cp_ctrl[480]} {cp_ctrl[481]} {cp_ctrl[482]} {cp_ctrl[483]} {cp_ctrl[484]} {cp_ctrl[485]} {cp_ctrl[486]} {cp_ctrl[487]} {cp_ctrl[488]} {cp_ctrl[489]} {cp_ctrl[490]} {cp_ctrl[503]} {cp_ctrl[491]} {cp_ctrl[492]} {cp_ctrl[493]} {cp_ctrl[494]} {p_code[22]} {p_code[23]} {cp_ctrl[495]} {cp_ctrl[496]} {cp_ctrl[497]} {cp_ctrl[498]} {cp_ctrl[499]} {cp_ctrl[500]} {cp_ctrl[501]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 629.85 -pin {{cp_ctrl[504]} {cp_ctrl[505]} {cp_ctrl[506]} {cp_ctrl[507]} {cp_ctrl[508]} {cp_ctrl[509]} {cp_ctrl[510]} {cp_ctrl[511]} {cp_ctrl[512]} {cp_ctrl[513]} {cp_ctrl[514]} {cp_ctrl[515]} {cp_ctrl[516]} {cp_ctrl[517]} {cp_ctrl[518]} {cp_ctrl[544]} {cp_ctrl[519]} {cp_ctrl[520]} {cp_ctrl[521]} {cp_ctrl[522]} {cp_ctrl[523]} {cp_ctrl[524]} {cp_ctrl[525]} {cp_ctrl[526]} {cp_ctrl[527]} {cp_ctrl[528]} {cp_ctrl[529]} {cp_ctrl[530]} {cp_ctrl[531]} {cp_ctrl[532]} {cp_ctrl[545]} {cp_ctrl[533]} {cp_ctrl[534]} {cp_ctrl[535]} {cp_ctrl[536]} {p_code[24]} {p_code[25]} {cp_ctrl[537]} {cp_ctrl[538]} {cp_ctrl[539]} {cp_ctrl[540]} {cp_ctrl[541]} {cp_ctrl[542]} {cp_ctrl[543]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 678.3 -pin {{cp_ctrl[546]} {cp_ctrl[547]} {cp_ctrl[548]} {cp_ctrl[549]} {cp_ctrl[550]} {cp_ctrl[551]} {cp_ctrl[552]} {cp_ctrl[553]} {cp_ctrl[554]} {cp_ctrl[555]} {cp_ctrl[556]} {cp_ctrl[557]} {cp_ctrl[558]} {cp_ctrl[559]} {cp_ctrl[560]} {cp_ctrl[586]} {cp_ctrl[561]} {cp_ctrl[562]} {cp_ctrl[563]} {cp_ctrl[564]} {cp_ctrl[565]} {cp_ctrl[566]} {cp_ctrl[567]} {cp_ctrl[568]} {cp_ctrl[569]} {cp_ctrl[570]} {cp_ctrl[571]} {cp_ctrl[572]} {cp_ctrl[573]} {cp_ctrl[574]} {cp_ctrl[587]} {cp_ctrl[575]} {cp_ctrl[576]} {cp_ctrl[577]} {cp_ctrl[578]} {p_code[26]} {p_code[27]} {cp_ctrl[579]} {cp_ctrl[580]} {cp_ctrl[581]} {cp_ctrl[582]} {cp_ctrl[583]} {cp_ctrl[584]} {cp_ctrl[585]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 726.75 -pin {{cp_ctrl[588]} {cp_ctrl[589]} {cp_ctrl[590]} {cp_ctrl[591]} {cp_ctrl[592]} {cp_ctrl[593]} {cp_ctrl[594]} {cp_ctrl[595]} {cp_ctrl[596]} {cp_ctrl[597]} {cp_ctrl[598]} {cp_ctrl[599]} {cp_ctrl[600]} {cp_ctrl[601]} {cp_ctrl[602]} {cp_ctrl[628]} {cp_ctrl[603]} {cp_ctrl[604]} {cp_ctrl[605]} {cp_ctrl[606]} {cp_ctrl[607]} {cp_ctrl[608]} {cp_ctrl[609]} {cp_ctrl[610]} {cp_ctrl[611]} {cp_ctrl[612]} {cp_ctrl[613]} {cp_ctrl[614]} {cp_ctrl[615]} {cp_ctrl[616]} {cp_ctrl[629]} {cp_ctrl[617]} {cp_ctrl[618]} {cp_ctrl[619]} {cp_ctrl[620]} {p_code[28]} {p_code[29]} {cp_ctrl[621]} {cp_ctrl[622]} {cp_ctrl[623]} {cp_ctrl[624]} {cp_ctrl[625]} {cp_ctrl[626]} {cp_ctrl[627]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 775.2 -pin {{cp_ctrl[630]} {cp_ctrl[631]} {cp_ctrl[632]} {cp_ctrl[633]} {cp_ctrl[634]} {cp_ctrl[635]} {cp_ctrl[636]} {cp_ctrl[637]} {cp_ctrl[638]} {cp_ctrl[639]} {cp_ctrl[640]} {cp_ctrl[641]} {cp_ctrl[642]} {cp_ctrl[643]} {cp_ctrl[644]} {cp_ctrl[670]} {cp_ctrl[645]} {cp_ctrl[646]} {cp_ctrl[647]} {cp_ctrl[648]} {cp_ctrl[649]} {cp_ctrl[650]} {cp_ctrl[651]} {cp_ctrl[652]} {cp_ctrl[653]} {cp_ctrl[654]} {cp_ctrl[655]} {cp_ctrl[656]} {cp_ctrl[657]} {cp_ctrl[658]} {cp_ctrl[671]} {cp_ctrl[659]} {cp_ctrl[660]} {cp_ctrl[661]} {cp_ctrl[662]} {p_code[30]} {p_code[31]} {cp_ctrl[663]} {cp_ctrl[664]} {cp_ctrl[665]} {cp_ctrl[666]} {cp_ctrl[667]} {cp_ctrl[668]} {cp_ctrl[669]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 823.65 -pin {{cp_ctrl[672]} {cp_ctrl[673]} {cp_ctrl[674]} {cp_ctrl[675]} {cp_ctrl[676]} {cp_ctrl[677]} {cp_ctrl[678]} {cp_ctrl[679]} {cp_ctrl[680]} {cp_ctrl[681]} {cp_ctrl[682]} {cp_ctrl[683]} {cp_ctrl[684]} {cp_ctrl[685]} {cp_ctrl[686]} {cp_ctrl[712]} {cp_ctrl[687]} {cp_ctrl[688]} {cp_ctrl[689]} {cp_ctrl[690]} {cp_ctrl[691]} {cp_ctrl[692]} {cp_ctrl[693]} {cp_ctrl[694]} {cp_ctrl[695]} {cp_ctrl[696]} {cp_ctrl[697]} {cp_ctrl[698]} {cp_ctrl[699]} {cp_ctrl[700]} {cp_ctrl[713]} {cp_ctrl[701]} {cp_ctrl[702]} {cp_ctrl[703]} {cp_ctrl[704]} {p_code[32]} {p_code[33]} {cp_ctrl[705]} {cp_ctrl[706]} {cp_ctrl[707]} {cp_ctrl[708]} {cp_ctrl[709]} {cp_ctrl[710]} {cp_ctrl[711]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 872.1 -pin {{cp_ctrl[714]} {cp_ctrl[715]} {cp_ctrl[716]} {cp_ctrl[717]} {cp_ctrl[718]} {cp_ctrl[719]} {cp_ctrl[720]} {cp_ctrl[721]} {cp_ctrl[722]} {cp_ctrl[723]} {cp_ctrl[724]} {cp_ctrl[725]} {cp_ctrl[726]} {cp_ctrl[727]} {cp_ctrl[728]} {cp_ctrl[754]} {cp_ctrl[729]} {cp_ctrl[730]} {cp_ctrl[731]} {cp_ctrl[732]} {cp_ctrl[733]} {cp_ctrl[734]} {cp_ctrl[735]} {cp_ctrl[736]} {cp_ctrl[737]} {cp_ctrl[738]} {cp_ctrl[739]} {cp_ctrl[740]} {cp_ctrl[741]} {cp_ctrl[742]} {cp_ctrl[755]} {cp_ctrl[743]} {cp_ctrl[744]} {cp_ctrl[745]} {cp_ctrl[746]} {p_code[34]} {p_code[35]} {cp_ctrl[747]} {cp_ctrl[748]} {cp_ctrl[749]} {cp_ctrl[750]} {cp_ctrl[751]} {cp_ctrl[752]} {cp_ctrl[753]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 920.55 -pin {{cp_ctrl[756]} {cp_ctrl[757]} {cp_ctrl[758]} {cp_ctrl[759]} {cp_ctrl[760]} {cp_ctrl[761]} {cp_ctrl[762]} {cp_ctrl[763]} {cp_ctrl[764]} {cp_ctrl[765]} {cp_ctrl[766]} {cp_ctrl[767]} {cp_ctrl[768]} {cp_ctrl[769]} {cp_ctrl[770]} {cp_ctrl[796]} {cp_ctrl[771]} {cp_ctrl[772]} {cp_ctrl[773]} {cp_ctrl[774]} {cp_ctrl[775]} {cp_ctrl[776]} {cp_ctrl[777]} {cp_ctrl[778]} {cp_ctrl[779]} {cp_ctrl[780]} {cp_ctrl[781]} {cp_ctrl[782]} {cp_ctrl[783]} {cp_ctrl[784]} {cp_ctrl[797]} {cp_ctrl[785]} {cp_ctrl[786]} {cp_ctrl[787]} {cp_ctrl[788]} {p_code[36]} {p_code[37]} {cp_ctrl[789]} {cp_ctrl[790]} {cp_ctrl[791]} {cp_ctrl[792]} {cp_ctrl[793]} {cp_ctrl[794]} {cp_ctrl[795]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 969.0 -pin {{cp_ctrl[798]} {cp_ctrl[799]} {cp_ctrl[800]} {cp_ctrl[801]} {cp_ctrl[802]} {cp_ctrl[803]} {cp_ctrl[804]} {cp_ctrl[805]} {cp_ctrl[806]} {cp_ctrl[807]} {cp_ctrl[808]} {cp_ctrl[809]} {cp_ctrl[810]} {cp_ctrl[811]} {cp_ctrl[812]} {cp_ctrl[838]} {cp_ctrl[813]} {cp_ctrl[814]} {cp_ctrl[815]} {cp_ctrl[816]} {cp_ctrl[817]} {cp_ctrl[818]} {cp_ctrl[819]} {cp_ctrl[820]} {cp_ctrl[821]} {cp_ctrl[822]} {cp_ctrl[823]} {cp_ctrl[824]} {cp_ctrl[825]} {cp_ctrl[826]} {cp_ctrl[839]} {cp_ctrl[827]} {cp_ctrl[828]} {cp_ctrl[829]} {cp_ctrl[830]} {p_code[38]} {p_code[39]} {cp_ctrl[831]} {cp_ctrl[832]} {cp_ctrl[833]} {cp_ctrl[834]} {cp_ctrl[835]} {cp_ctrl[836]} {cp_ctrl[837]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 1017.45 -pin {{cp_ctrl[840]} {cp_ctrl[841]} {cp_ctrl[842]} {cp_ctrl[843]} {cp_ctrl[844]} {cp_ctrl[845]} {cp_ctrl[846]} {cp_ctrl[847]} {cp_ctrl[848]} {cp_ctrl[849]} {cp_ctrl[850]} {cp_ctrl[851]} {cp_ctrl[852]} {cp_ctrl[853]} {cp_ctrl[854]} {cp_ctrl[880]} {cp_ctrl[855]} {cp_ctrl[856]} {cp_ctrl[857]} {cp_ctrl[858]} {cp_ctrl[859]} {cp_ctrl[860]} {cp_ctrl[861]} {cp_ctrl[862]} {cp_ctrl[863]} {cp_ctrl[864]} {cp_ctrl[865]} {cp_ctrl[866]} {cp_ctrl[867]} {cp_ctrl[868]} {cp_ctrl[881]} {cp_ctrl[869]} {cp_ctrl[870]} {cp_ctrl[871]} {cp_ctrl[872]} {p_code[40]} {p_code[41]} {cp_ctrl[873]} {cp_ctrl[874]} {cp_ctrl[875]} {cp_ctrl[876]} {cp_ctrl[877]} {cp_ctrl[878]} {cp_ctrl[879]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 1065.9 -pin {{cp_ctrl[882]} {cp_ctrl[883]} {cp_ctrl[884]} {cp_ctrl[885]} {cp_ctrl[886]} {cp_ctrl[887]} {cp_ctrl[888]} {cp_ctrl[889]} {cp_ctrl[890]} {cp_ctrl[891]} {cp_ctrl[892]} {cp_ctrl[893]} {cp_ctrl[894]} {cp_ctrl[895]} {cp_ctrl[896]} {cp_ctrl[922]} {cp_ctrl[897]} {cp_ctrl[898]} {cp_ctrl[899]} {cp_ctrl[900]} {cp_ctrl[901]} {cp_ctrl[902]} {cp_ctrl[903]} {cp_ctrl[904]} {cp_ctrl[905]} {cp_ctrl[906]} {cp_ctrl[907]} {cp_ctrl[908]} {cp_ctrl[909]} {cp_ctrl[910]} {cp_ctrl[923]} {cp_ctrl[911]} {cp_ctrl[912]} {cp_ctrl[913]} {cp_ctrl[914]} {p_code[42]} {p_code[43]} {cp_ctrl[915]} {cp_ctrl[916]} {cp_ctrl[917]} {cp_ctrl[918]} {cp_ctrl[919]} {cp_ctrl[920]} {cp_ctrl[921]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 1114.35 -pin {{cp_ctrl[924]} {cp_ctrl[925]} {cp_ctrl[926]} {cp_ctrl[927]} {cp_ctrl[928]} {cp_ctrl[929]} {cp_ctrl[930]} {cp_ctrl[931]} {cp_ctrl[932]} {cp_ctrl[933]} {cp_ctrl[934]} {cp_ctrl[935]} {cp_ctrl[936]} {cp_ctrl[937]} {cp_ctrl[938]} {cp_ctrl[964]} {cp_ctrl[939]} {cp_ctrl[940]} {cp_ctrl[941]} {cp_ctrl[942]} {cp_ctrl[943]} {cp_ctrl[944]} {cp_ctrl[945]} {cp_ctrl[946]} {cp_ctrl[947]} {cp_ctrl[948]} {cp_ctrl[949]} {cp_ctrl[950]} {cp_ctrl[951]} {cp_ctrl[952]} {cp_ctrl[965]} {cp_ctrl[953]} {cp_ctrl[954]} {cp_ctrl[955]} {cp_ctrl[956]} {p_code[44]} {p_code[45]} {cp_ctrl[957]} {cp_ctrl[958]} {cp_ctrl[959]} {cp_ctrl[960]} {cp_ctrl[961]} {cp_ctrl[962]} {cp_ctrl[963]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 1162.8 -pin {{cp_ctrl[966]} {cp_ctrl[967]} {cp_ctrl[968]} {cp_ctrl[969]} {cp_ctrl[970]} {cp_ctrl[971]} {cp_ctrl[972]} {cp_ctrl[973]} {cp_ctrl[974]} {cp_ctrl[975]} {cp_ctrl[976]} {cp_ctrl[977]} {cp_ctrl[978]} {cp_ctrl[979]} {cp_ctrl[980]} {cp_ctrl[1006]} {cp_ctrl[981]} {cp_ctrl[982]} {cp_ctrl[983]} {cp_ctrl[984]} {cp_ctrl[985]} {cp_ctrl[986]} {cp_ctrl[987]} {cp_ctrl[988]} {cp_ctrl[989]} {cp_ctrl[990]} {cp_ctrl[991]} {cp_ctrl[992]} {cp_ctrl[993]} {cp_ctrl[994]} {cp_ctrl[1007]} {cp_ctrl[995]} {cp_ctrl[996]} {cp_ctrl[997]} {cp_ctrl[998]} {p_code[46]} {p_code[47]} {cp_ctrl[999]} {cp_ctrl[1000]} {cp_ctrl[1001]} {cp_ctrl[1002]} {cp_ctrl[1003]} {cp_ctrl[1004]} {cp_ctrl[1005]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 1211.25 -pin {{cp_ctrl[1008]} {cp_ctrl[1009]} {cp_ctrl[1010]} {cp_ctrl[1011]} {cp_ctrl[1012]} {cp_ctrl[1013]} {cp_ctrl[1014]} {cp_ctrl[1015]} {cp_ctrl[1016]} {cp_ctrl[1017]} {cp_ctrl[1018]} {cp_ctrl[1019]} {cp_ctrl[1020]} {cp_ctrl[1021]} {cp_ctrl[1022]} {cp_ctrl[1048]} {cp_ctrl[1023]} {cp_ctrl[1024]} {cp_ctrl[1025]} {cp_ctrl[1026]} {cp_ctrl[1027]} {cp_ctrl[1028]} {cp_ctrl[1029]} {cp_ctrl[1030]} {cp_ctrl[1031]} {cp_ctrl[1032]} {cp_ctrl[1033]} {cp_ctrl[1034]} {cp_ctrl[1035]} {cp_ctrl[1036]} {cp_ctrl[1049]} {cp_ctrl[1037]} {cp_ctrl[1038]} {cp_ctrl[1039]} {cp_ctrl[1040]} {p_code[48]} {p_code[49]} {cp_ctrl[1041]} {cp_ctrl[1042]} {cp_ctrl[1043]} {cp_ctrl[1044]} {cp_ctrl[1045]} {cp_ctrl[1046]} {cp_ctrl[1047]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 1259.7 -pin {{cp_ctrl[1050]} {cp_ctrl[1051]} {cp_ctrl[1052]} {cp_ctrl[1053]} {cp_ctrl[1054]} {cp_ctrl[1055]} {cp_ctrl[1056]} {cp_ctrl[1057]} {cp_ctrl[1058]} {cp_ctrl[1059]} {cp_ctrl[1060]} {cp_ctrl[1061]} {cp_ctrl[1062]} {cp_ctrl[1063]} {cp_ctrl[1064]} {cp_ctrl[1090]} {cp_ctrl[1065]} {cp_ctrl[1066]} {cp_ctrl[1067]} {cp_ctrl[1068]} {cp_ctrl[1069]} {cp_ctrl[1070]} {cp_ctrl[1071]} {cp_ctrl[1072]} {cp_ctrl[1073]} {cp_ctrl[1074]} {cp_ctrl[1075]} {cp_ctrl[1076]} {cp_ctrl[1077]} {cp_ctrl[1078]} {cp_ctrl[1091]} {cp_ctrl[1079]} {cp_ctrl[1080]} {cp_ctrl[1081]} {cp_ctrl[1082]} {p_code[50]} {p_code[51]} {cp_ctrl[1083]} {cp_ctrl[1084]} {cp_ctrl[1085]} {cp_ctrl[1086]} {cp_ctrl[1087]} {cp_ctrl[1088]} {cp_ctrl[1089]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 1308.15 -pin {{cp_ctrl[1092]} {cp_ctrl[1093]} {cp_ctrl[1094]} {cp_ctrl[1095]} {cp_ctrl[1096]} {cp_ctrl[1097]} {cp_ctrl[1098]} {cp_ctrl[1099]} {cp_ctrl[1100]} {cp_ctrl[1101]} {cp_ctrl[1102]} {cp_ctrl[1103]} {cp_ctrl[1104]} {cp_ctrl[1105]} {cp_ctrl[1106]} {cp_ctrl[1132]} {cp_ctrl[1107]} {cp_ctrl[1108]} {cp_ctrl[1109]} {cp_ctrl[1110]} {cp_ctrl[1111]} {cp_ctrl[1112]} {cp_ctrl[1113]} {cp_ctrl[1114]} {cp_ctrl[1115]} {cp_ctrl[1116]} {cp_ctrl[1117]} {cp_ctrl[1118]} {cp_ctrl[1119]} {cp_ctrl[1120]} {cp_ctrl[1133]} {cp_ctrl[1121]} {cp_ctrl[1122]} {cp_ctrl[1123]} {cp_ctrl[1124]} {p_code[52]} {p_code[53]} {cp_ctrl[1125]} {cp_ctrl[1126]} {cp_ctrl[1127]} {cp_ctrl[1128]} {cp_ctrl[1129]} {cp_ctrl[1130]} {cp_ctrl[1131]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 1356.6 -pin {{cp_ctrl[1134]} {cp_ctrl[1135]} {cp_ctrl[1136]} {cp_ctrl[1137]} {cp_ctrl[1138]} {cp_ctrl[1139]} {cp_ctrl[1140]} {cp_ctrl[1141]} {cp_ctrl[1142]} {cp_ctrl[1143]} {cp_ctrl[1144]} {cp_ctrl[1145]} {cp_ctrl[1146]} {cp_ctrl[1147]} {cp_ctrl[1148]} {cp_ctrl[1174]} {cp_ctrl[1149]} {cp_ctrl[1150]} {cp_ctrl[1151]} {cp_ctrl[1152]} {cp_ctrl[1153]} {cp_ctrl[1154]} {cp_ctrl[1155]} {cp_ctrl[1156]} {cp_ctrl[1157]} {cp_ctrl[1158]} {cp_ctrl[1159]} {cp_ctrl[1160]} {cp_ctrl[1161]} {cp_ctrl[1162]} {cp_ctrl[1175]} {cp_ctrl[1163]} {cp_ctrl[1164]} {cp_ctrl[1165]} {cp_ctrl[1166]} {p_code[54]} {p_code[55]} {cp_ctrl[1167]} {cp_ctrl[1168]} {cp_ctrl[1169]} {cp_ctrl[1170]} {cp_ctrl[1171]} {cp_ctrl[1172]} {cp_ctrl[1173]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 1405.05 -pin {{cp_ctrl[1176]} {cp_ctrl[1177]} {cp_ctrl[1178]} {cp_ctrl[1179]} {cp_ctrl[1180]} {cp_ctrl[1181]} {cp_ctrl[1182]} {cp_ctrl[1183]} {cp_ctrl[1184]} {cp_ctrl[1185]} {cp_ctrl[1186]} {cp_ctrl[1187]} {cp_ctrl[1188]} {cp_ctrl[1189]} {cp_ctrl[1190]} {cp_ctrl[1216]} {cp_ctrl[1191]} {cp_ctrl[1192]} {cp_ctrl[1193]} {cp_ctrl[1194]} {cp_ctrl[1195]} {cp_ctrl[1196]} {cp_ctrl[1197]} {cp_ctrl[1198]} {cp_ctrl[1199]} {cp_ctrl[1200]} {cp_ctrl[1201]} {cp_ctrl[1202]} {cp_ctrl[1203]} {cp_ctrl[1204]} {cp_ctrl[1217]} {cp_ctrl[1205]} {cp_ctrl[1206]} {cp_ctrl[1207]} {cp_ctrl[1208]} {p_code[56]} {p_code[57]} {cp_ctrl[1209]} {cp_ctrl[1210]} {cp_ctrl[1211]} {cp_ctrl[1212]} {cp_ctrl[1213]} {cp_ctrl[1214]} {cp_ctrl[1215]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 1453.5 -pin {{cp_ctrl[1218]} {cp_ctrl[1219]} {cp_ctrl[1220]} {cp_ctrl[1221]} {cp_ctrl[1222]} {cp_ctrl[1223]} {cp_ctrl[1224]} {cp_ctrl[1225]} {cp_ctrl[1226]} {cp_ctrl[1227]} {cp_ctrl[1228]} {cp_ctrl[1229]} {cp_ctrl[1230]} {cp_ctrl[1231]} {cp_ctrl[1232]} {cp_ctrl[1258]} {cp_ctrl[1233]} {cp_ctrl[1234]} {cp_ctrl[1235]} {cp_ctrl[1236]} {cp_ctrl[1237]} {cp_ctrl[1238]} {cp_ctrl[1239]} {cp_ctrl[1240]} {cp_ctrl[1241]} {cp_ctrl[1242]} {cp_ctrl[1243]} {cp_ctrl[1244]} {cp_ctrl[1245]} {cp_ctrl[1246]} {cp_ctrl[1259]} {cp_ctrl[1247]} {cp_ctrl[1248]} {cp_ctrl[1249]} {cp_ctrl[1250]} {p_code[58]} {p_code[59]} {cp_ctrl[1251]} {cp_ctrl[1252]} {cp_ctrl[1253]} {cp_ctrl[1254]} {cp_ctrl[1255]} {cp_ctrl[1256]} {cp_ctrl[1257]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 1501.95 -pin {{cp_ctrl[1260]} {cp_ctrl[1261]} {cp_ctrl[1262]} {cp_ctrl[1263]} {cp_ctrl[1264]} {cp_ctrl[1265]} {cp_ctrl[1266]} {cp_ctrl[1267]} {cp_ctrl[1268]} {cp_ctrl[1269]} {cp_ctrl[1270]} {cp_ctrl[1271]} {cp_ctrl[1272]} {cp_ctrl[1273]} {cp_ctrl[1274]} {cp_ctrl[1300]} {cp_ctrl[1275]} {cp_ctrl[1276]} {cp_ctrl[1277]} {cp_ctrl[1278]} {cp_ctrl[1279]} {cp_ctrl[1280]} {cp_ctrl[1281]} {cp_ctrl[1282]} {cp_ctrl[1283]} {cp_ctrl[1284]} {cp_ctrl[1285]} {cp_ctrl[1286]} {cp_ctrl[1287]} {cp_ctrl[1288]} {cp_ctrl[1301]} {cp_ctrl[1289]} {cp_ctrl[1290]} {cp_ctrl[1291]} {cp_ctrl[1292]} {p_code[60]} {p_code[61]} {cp_ctrl[1293]} {cp_ctrl[1294]} {cp_ctrl[1295]} {cp_ctrl[1296]} {cp_ctrl[1297]} {cp_ctrl[1298]} {cp_ctrl[1299]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 1550.4 -pin {{cp_ctrl[1302]} {cp_ctrl[1303]} {cp_ctrl[1304]} {cp_ctrl[1305]} {cp_ctrl[1306]} {cp_ctrl[1307]} {cp_ctrl[1308]} {cp_ctrl[1309]} {cp_ctrl[1310]} {cp_ctrl[1311]} {cp_ctrl[1312]} {cp_ctrl[1313]} {cp_ctrl[1314]} {cp_ctrl[1315]} {cp_ctrl[1316]} {cp_ctrl[1342]} {cp_ctrl[1317]} {cp_ctrl[1318]} {cp_ctrl[1319]} {cp_ctrl[1320]} {cp_ctrl[1321]} {cp_ctrl[1322]} {cp_ctrl[1323]} {cp_ctrl[1324]} {cp_ctrl[1325]} {cp_ctrl[1326]} {cp_ctrl[1327]} {cp_ctrl[1328]} {cp_ctrl[1329]} {cp_ctrl[1330]} {cp_ctrl[1343]} {cp_ctrl[1331]} {cp_ctrl[1332]} {cp_ctrl[1333]} {cp_ctrl[1334]} {p_code[62]} {p_code[63]} {cp_ctrl[1335]} {cp_ctrl[1336]} {cp_ctrl[1337]} {cp_ctrl[1338]} {cp_ctrl[1339]} {cp_ctrl[1340]} {cp_ctrl[1341]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 1598.85 -pin {{cp_ctrl[1344]} {cp_ctrl[1345]} {cp_ctrl[1346]} {cp_ctrl[1347]} {cp_ctrl[1348]} {cp_ctrl[1349]} {cp_ctrl[1350]} {cp_ctrl[1351]} {cp_ctrl[1352]} {cp_ctrl[1353]} {cp_ctrl[1354]} {cp_ctrl[1355]} {cp_ctrl[1356]} {cp_ctrl[1357]} {cp_ctrl[1358]} {cp_ctrl[1384]} {cp_ctrl[1359]} {cp_ctrl[1360]} {cp_ctrl[1361]} {cp_ctrl[1362]} {cp_ctrl[1363]} {cp_ctrl[1364]} {cp_ctrl[1365]} {cp_ctrl[1366]} {cp_ctrl[1367]} {cp_ctrl[1368]} {cp_ctrl[1369]} {cp_ctrl[1370]} {cp_ctrl[1371]} {cp_ctrl[1372]} {cp_ctrl[1385]} {cp_ctrl[1373]} {cp_ctrl[1374]} {cp_ctrl[1375]} {cp_ctrl[1376]} {p_code[64]} {p_code[65]} {cp_ctrl[1377]} {cp_ctrl[1378]} {cp_ctrl[1379]} {cp_ctrl[1380]} {cp_ctrl[1381]} {cp_ctrl[1382]} {cp_ctrl[1383]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 1647.3 -pin {{cp_ctrl[1386]} {cp_ctrl[1387]} {cp_ctrl[1388]} {cp_ctrl[1389]} {cp_ctrl[1390]} {cp_ctrl[1391]} {cp_ctrl[1392]} {cp_ctrl[1393]} {cp_ctrl[1394]} {cp_ctrl[1395]} {cp_ctrl[1396]} {cp_ctrl[1397]} {cp_ctrl[1398]} {cp_ctrl[1399]} {cp_ctrl[1400]} {cp_ctrl[1426]} {cp_ctrl[1401]} {cp_ctrl[1402]} {cp_ctrl[1403]} {cp_ctrl[1404]} {cp_ctrl[1405]} {cp_ctrl[1406]} {cp_ctrl[1407]} {cp_ctrl[1408]} {cp_ctrl[1409]} {cp_ctrl[1410]} {cp_ctrl[1411]} {cp_ctrl[1412]} {cp_ctrl[1413]} {cp_ctrl[1414]} {cp_ctrl[1427]} {cp_ctrl[1415]} {cp_ctrl[1416]} {cp_ctrl[1417]} {cp_ctrl[1418]} {p_code[66]} {p_code[67]} {cp_ctrl[1419]} {cp_ctrl[1420]} {cp_ctrl[1421]} {cp_ctrl[1422]} {cp_ctrl[1423]} {cp_ctrl[1424]} {cp_ctrl[1425]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 1695.75 -pin {{cp_ctrl[1428]} {cp_ctrl[1429]} {cp_ctrl[1430]} {cp_ctrl[1431]} {cp_ctrl[1432]} {cp_ctrl[1433]} {cp_ctrl[1434]} {cp_ctrl[1435]} {cp_ctrl[1436]} {cp_ctrl[1437]} {cp_ctrl[1438]} {cp_ctrl[1439]} {cp_ctrl[1440]} {cp_ctrl[1441]} {cp_ctrl[1442]} {cp_ctrl[1468]} {cp_ctrl[1443]} {cp_ctrl[1444]} {cp_ctrl[1445]} {cp_ctrl[1446]} {cp_ctrl[1447]} {cp_ctrl[1448]} {cp_ctrl[1449]} {cp_ctrl[1450]} {cp_ctrl[1451]} {cp_ctrl[1452]} {cp_ctrl[1453]} {cp_ctrl[1454]} {cp_ctrl[1455]} {cp_ctrl[1456]} {cp_ctrl[1469]} {cp_ctrl[1457]} {cp_ctrl[1458]} {cp_ctrl[1459]} {cp_ctrl[1460]} {p_code[68]} {p_code[69]} {cp_ctrl[1461]} {cp_ctrl[1462]} {cp_ctrl[1463]} {cp_ctrl[1464]} {cp_ctrl[1465]} {cp_ctrl[1466]} {cp_ctrl[1467]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 1744.2 -pin {{cp_ctrl[1470]} {cp_ctrl[1471]} {cp_ctrl[1472]} {cp_ctrl[1473]} {cp_ctrl[1474]} {cp_ctrl[1475]} {cp_ctrl[1476]} {cp_ctrl[1477]} {cp_ctrl[1478]} {cp_ctrl[1479]} {cp_ctrl[1480]} {cp_ctrl[1481]} {cp_ctrl[1482]} {cp_ctrl[1483]} {cp_ctrl[1484]} {cp_ctrl[1510]} {cp_ctrl[1485]} {cp_ctrl[1486]} {cp_ctrl[1487]} {cp_ctrl[1488]} {cp_ctrl[1489]} {cp_ctrl[1490]} {cp_ctrl[1491]} {cp_ctrl[1492]} {cp_ctrl[1493]} {cp_ctrl[1494]} {cp_ctrl[1495]} {cp_ctrl[1496]} {cp_ctrl[1497]} {cp_ctrl[1498]} {cp_ctrl[1511]} {cp_ctrl[1499]} {cp_ctrl[1500]} {cp_ctrl[1501]} {cp_ctrl[1502]} {p_code[70]} {p_code[71]} {cp_ctrl[1503]} {cp_ctrl[1504]} {cp_ctrl[1505]} {cp_ctrl[1506]} {cp_ctrl[1507]} {cp_ctrl[1508]} {cp_ctrl[1509]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 1792.65 -pin {{cp_ctrl[1512]} {cp_ctrl[1513]} {cp_ctrl[1514]} {cp_ctrl[1515]} {cp_ctrl[1516]} {cp_ctrl[1517]} {cp_ctrl[1518]} {cp_ctrl[1519]} {cp_ctrl[1520]} {cp_ctrl[1521]} {cp_ctrl[1522]} {cp_ctrl[1523]} {cp_ctrl[1524]} {cp_ctrl[1525]} {cp_ctrl[1526]} {cp_ctrl[1552]} {cp_ctrl[1527]} {cp_ctrl[1528]} {cp_ctrl[1529]} {cp_ctrl[1530]} {cp_ctrl[1531]} {cp_ctrl[1532]} {cp_ctrl[1533]} {cp_ctrl[1534]} {cp_ctrl[1535]} {cp_ctrl[1536]} {cp_ctrl[1537]} {cp_ctrl[1538]} {cp_ctrl[1539]} {cp_ctrl[1540]} {cp_ctrl[1553]} {cp_ctrl[1541]} {cp_ctrl[1542]} {cp_ctrl[1543]} {cp_ctrl[1544]} {p_code[72]} {p_code[73]} {cp_ctrl[1545]} {cp_ctrl[1546]} {cp_ctrl[1547]} {cp_ctrl[1548]} {cp_ctrl[1549]} {cp_ctrl[1550]} {cp_ctrl[1551]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 1841.1 -pin {{cp_ctrl[1554]} {cp_ctrl[1555]} {cp_ctrl[1556]} {cp_ctrl[1557]} {cp_ctrl[1558]} {cp_ctrl[1559]} {cp_ctrl[1560]} {cp_ctrl[1561]} {cp_ctrl[1562]} {cp_ctrl[1563]} {cp_ctrl[1564]} {cp_ctrl[1565]} {cp_ctrl[1566]} {cp_ctrl[1567]} {cp_ctrl[1568]} {cp_ctrl[1594]} {cp_ctrl[1569]} {cp_ctrl[1570]} {cp_ctrl[1571]} {cp_ctrl[1572]} {cp_ctrl[1573]} {cp_ctrl[1574]} {cp_ctrl[1575]} {cp_ctrl[1576]} {cp_ctrl[1577]} {cp_ctrl[1578]} {cp_ctrl[1579]} {cp_ctrl[1580]} {cp_ctrl[1581]} {cp_ctrl[1582]} {cp_ctrl[1595]} {cp_ctrl[1583]} {cp_ctrl[1584]} {cp_ctrl[1585]} {cp_ctrl[1586]} {p_code[74]} {p_code[75]} {cp_ctrl[1587]} {cp_ctrl[1588]} {cp_ctrl[1589]} {cp_ctrl[1590]} {cp_ctrl[1591]} {cp_ctrl[1592]} {cp_ctrl[1593]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 1889.55 -pin {{cp_ctrl[1596]} {cp_ctrl[1597]} {cp_ctrl[1598]} {cp_ctrl[1599]} {cp_ctrl[1600]} {cp_ctrl[1601]} {cp_ctrl[1602]} {cp_ctrl[1603]} {cp_ctrl[1604]} {cp_ctrl[1605]} {cp_ctrl[1606]} {cp_ctrl[1607]} {cp_ctrl[1608]} {cp_ctrl[1609]} {cp_ctrl[1610]} {cp_ctrl[1636]} {cp_ctrl[1611]} {cp_ctrl[1612]} {cp_ctrl[1613]} {cp_ctrl[1614]} {cp_ctrl[1615]} {cp_ctrl[1616]} {cp_ctrl[1617]} {cp_ctrl[1618]} {cp_ctrl[1619]} {cp_ctrl[1620]} {cp_ctrl[1621]} {cp_ctrl[1622]} {cp_ctrl[1623]} {cp_ctrl[1624]} {cp_ctrl[1637]} {cp_ctrl[1625]} {cp_ctrl[1626]} {cp_ctrl[1627]} {cp_ctrl[1628]} {p_code[76]} {p_code[77]} {cp_ctrl[1629]} {cp_ctrl[1630]} {cp_ctrl[1631]} {cp_ctrl[1632]} {cp_ctrl[1633]} {cp_ctrl[1634]} {cp_ctrl[1635]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 1938.0 -pin {{cp_ctrl[1638]} {cp_ctrl[1639]} {cp_ctrl[1640]} {cp_ctrl[1641]} {cp_ctrl[1642]} {cp_ctrl[1643]} {cp_ctrl[1644]} {cp_ctrl[1645]} {cp_ctrl[1646]} {cp_ctrl[1647]} {cp_ctrl[1648]} {cp_ctrl[1649]} {cp_ctrl[1650]} {cp_ctrl[1651]} {cp_ctrl[1652]} {cp_ctrl[1678]} {cp_ctrl[1653]} {cp_ctrl[1654]} {cp_ctrl[1655]} {cp_ctrl[1656]} {cp_ctrl[1657]} {cp_ctrl[1658]} {cp_ctrl[1659]} {cp_ctrl[1660]} {cp_ctrl[1661]} {cp_ctrl[1662]} {cp_ctrl[1663]} {cp_ctrl[1664]} {cp_ctrl[1665]} {cp_ctrl[1666]} {cp_ctrl[1679]} {cp_ctrl[1667]} {cp_ctrl[1668]} {cp_ctrl[1669]} {cp_ctrl[1670]} {p_code[78]} {p_code[79]} {cp_ctrl[1671]} {cp_ctrl[1672]} {cp_ctrl[1673]} {cp_ctrl[1674]} {cp_ctrl[1675]} {cp_ctrl[1676]} {cp_ctrl[1677]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 1986.45 -pin {{cp_ctrl[1680]} {cp_ctrl[1681]} {cp_ctrl[1682]} {cp_ctrl[1683]} {cp_ctrl[1684]} {cp_ctrl[1685]} {cp_ctrl[1686]} {cp_ctrl[1687]} {cp_ctrl[1688]} {cp_ctrl[1689]} {cp_ctrl[1690]} {cp_ctrl[1691]} {cp_ctrl[1692]} {cp_ctrl[1693]} {cp_ctrl[1694]} {cp_ctrl[1720]} {cp_ctrl[1695]} {cp_ctrl[1696]} {cp_ctrl[1697]} {cp_ctrl[1698]} {cp_ctrl[1699]} {cp_ctrl[1700]} {cp_ctrl[1701]} {cp_ctrl[1702]} {cp_ctrl[1703]} {cp_ctrl[1704]} {cp_ctrl[1705]} {cp_ctrl[1706]} {cp_ctrl[1707]} {cp_ctrl[1708]} {cp_ctrl[1721]} {cp_ctrl[1709]} {cp_ctrl[1710]} {cp_ctrl[1711]} {cp_ctrl[1712]} {p_code[80]} {p_code[81]} {cp_ctrl[1713]} {cp_ctrl[1714]} {cp_ctrl[1715]} {cp_ctrl[1716]} {cp_ctrl[1717]} {cp_ctrl[1718]} {cp_ctrl[1719]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 2034.9 -pin {{cp_ctrl[1722]} {cp_ctrl[1723]} {cp_ctrl[1724]} {cp_ctrl[1725]} {cp_ctrl[1726]} {cp_ctrl[1727]} {cp_ctrl[1728]} {cp_ctrl[1729]} {cp_ctrl[1730]} {cp_ctrl[1731]} {cp_ctrl[1732]} {cp_ctrl[1733]} {cp_ctrl[1734]} {cp_ctrl[1735]} {cp_ctrl[1736]} {cp_ctrl[1762]} {cp_ctrl[1737]} {cp_ctrl[1738]} {cp_ctrl[1739]} {cp_ctrl[1740]} {cp_ctrl[1741]} {cp_ctrl[1742]} {cp_ctrl[1743]} {cp_ctrl[1744]} {cp_ctrl[1745]} {cp_ctrl[1746]} {cp_ctrl[1747]} {cp_ctrl[1748]} {cp_ctrl[1749]} {cp_ctrl[1750]} {cp_ctrl[1763]} {cp_ctrl[1751]} {cp_ctrl[1752]} {cp_ctrl[1753]} {cp_ctrl[1754]} {p_code[82]} {p_code[83]} {cp_ctrl[1755]} {cp_ctrl[1756]} {cp_ctrl[1757]} {cp_ctrl[1758]} {cp_ctrl[1759]} {cp_ctrl[1760]} {cp_ctrl[1761]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 2083.35 -pin {{cp_ctrl[1764]} {cp_ctrl[1765]} {cp_ctrl[1766]} {cp_ctrl[1767]} {cp_ctrl[1768]} {cp_ctrl[1769]} {cp_ctrl[1770]} {cp_ctrl[1771]} {cp_ctrl[1772]} {cp_ctrl[1773]} {cp_ctrl[1774]} {cp_ctrl[1775]} {cp_ctrl[1776]} {cp_ctrl[1777]} {cp_ctrl[1778]} {cp_ctrl[1804]} {cp_ctrl[1779]} {cp_ctrl[1780]} {cp_ctrl[1781]} {cp_ctrl[1782]} {cp_ctrl[1783]} {cp_ctrl[1784]} {cp_ctrl[1785]} {cp_ctrl[1786]} {cp_ctrl[1787]} {cp_ctrl[1788]} {cp_ctrl[1789]} {cp_ctrl[1790]} {cp_ctrl[1791]} {cp_ctrl[1792]} {cp_ctrl[1805]} {cp_ctrl[1793]} {cp_ctrl[1794]} {cp_ctrl[1795]} {cp_ctrl[1796]} {p_code[84]} {p_code[85]} {cp_ctrl[1797]} {cp_ctrl[1798]} {cp_ctrl[1799]} {cp_ctrl[1800]} {cp_ctrl[1801]} {cp_ctrl[1802]} {cp_ctrl[1803]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 2131.8 -pin {{cp_ctrl[1806]} {cp_ctrl[1807]} {cp_ctrl[1808]} {cp_ctrl[1809]} {cp_ctrl[1810]} {cp_ctrl[1811]} {cp_ctrl[1812]} {cp_ctrl[1813]} {cp_ctrl[1814]} {cp_ctrl[1815]} {cp_ctrl[1816]} {cp_ctrl[1817]} {cp_ctrl[1818]} {cp_ctrl[1819]} {cp_ctrl[1820]} {cp_ctrl[1846]} {cp_ctrl[1821]} {cp_ctrl[1822]} {cp_ctrl[1823]} {cp_ctrl[1824]} {cp_ctrl[1825]} {cp_ctrl[1826]} {cp_ctrl[1827]} {cp_ctrl[1828]} {cp_ctrl[1829]} {cp_ctrl[1830]} {cp_ctrl[1831]} {cp_ctrl[1832]} {cp_ctrl[1833]} {cp_ctrl[1834]} {cp_ctrl[1847]} {cp_ctrl[1835]} {cp_ctrl[1836]} {cp_ctrl[1837]} {cp_ctrl[1838]} {p_code[86]} {p_code[87]} {cp_ctrl[1839]} {cp_ctrl[1840]} {cp_ctrl[1841]} {cp_ctrl[1842]} {cp_ctrl[1843]} {cp_ctrl[1844]} {cp_ctrl[1845]}}
editPin -pinWidth 0.2 -pinDepth 0.2 -fixedPin 1 -snap USERGRID -fixOverlap 0 -unit MICRON -spreadDirection counterclockwise -side left -layer 4 -spreadType start -spacing 0.98 -start 0.1 2180.25 -pin {{cp_ctrl[1848]} {cp_ctrl[1849]} {cp_ctrl[1850]} {cp_ctrl[1851]} {cp_ctrl[1852]} {cp_ctrl[1853]} {cp_ctrl[1854]} {cp_ctrl[1855]} {cp_ctrl[1856]} {cp_ctrl[1857]} {cp_ctrl[1858]} {cp_ctrl[1859]} {cp_ctrl[1860]} {cp_ctrl[1861]} {cp_ctrl[1862]} {cp_ctrl[1888]} {cp_ctrl[1863]} {cp_ctrl[1864]} {cp_ctrl[1865]} {cp_ctrl[1866]} {cp_ctrl[1867]} {cp_ctrl[1868]} {cp_ctrl[1869]} {cp_ctrl[1870]} {cp_ctrl[1871]} {cp_ctrl[1872]} {cp_ctrl[1873]} {cp_ctrl[1874]} {cp_ctrl[1875]} {cp_ctrl[1876]} {cp_ctrl[1889]} {cp_ctrl[1877]} {cp_ctrl[1878]} {cp_ctrl[1879]} {cp_ctrl[1880]} {p_code[88]} {p_code[89]} {cp_ctrl[1881]} {cp_ctrl[1882]} {cp_ctrl[1883]} {cp_ctrl[1884]} {cp_ctrl[1885]} {cp_ctrl[1886]} {cp_ctrl[1887]}}
setPinAssignMode -pinEditInBatch false
clearGlobalNets
globalNetConnect H_VDD -type pgpin -pin VDD -inst * -module {}
globalNetConnect VSS -type pgpin -pin VSS -inst * -module {}
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer AP -stacked_via_bottom_layer M1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {H_VDD VSS} -type core_rings -follow core -layer {top M4 bottom M4 left M5 right M5} -width {top 0.4 bottom 0.4 left 0.4 right 0.4} -spacing {top 0.4 bottom 0.4 left 0.4 right 0.4} -offset {top 0 bottom 0 left 0 right 0} -center 1 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
verifyConnectivity -error 10000
addWellTap -cell TAPCELLBWP -cellInterval 40 -prefix WELLTAP
verifyWellTap -rule 40
deselectAll
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { corePin } -layerChangeRange { M1(1) M5(5) } -blockPinTarget { nearestTarget } -corePinTarget { blockring ring } -allowJogging 1 -crossoverViaLayerRange { M1(1) M5(5) } -nets { H_VDD VSS } -allowLayerChange 1 -targetViaLayerRange { M1(1) M5(5) }
set_global timing_set_clock_source_to_output_as_data true
setPlaceMode -place_global_cong_effort high
setPlaceMode -place_global_max_density 0.7
place_opt_design
addTieHiLo -cell {TIEHBWP TIELBWP}
checkPlace
setOptMode -fixFanoutLoad true
optDesign -preCTS -drv
timeDesign -preCTS
timeDesign -preCTS -hold
setNanoRouteMode -routeWithTimingDriven false
setNanoRouteMode -droutePostRouteSwapVia none
setNanoRouteMode -drouteUseMultiCutViaEffort low
setNanoRouteMode -routeReserveSpaceForMultiCut false
setNanoRouteMode -routeWithViaOnlyForStandardCellPin true
setNanoRouteMode -routeWithViaInPin false
setNanoRouteMode -drouteOnGridOnly none
create_route_type -name rule_leaf -top_preferred_layer M5 -bottom_preferred_layer M4
create_route_type -name rule_trunk -top_preferred_layer M4 -bottom_preferred_layer M3
create_route_type -name rule_top -top_preferred_layer M3 -bottom_preferred_layer M2
set_ccopt_property -net_type leaf route_type rule_leaf
set_ccopt_property -net_type trunk route_type rule_trunk
set_ccopt_property -net_type top route_type rule_top
set_ccopt_property target_max_trans auto
set_ccopt_property target_skew 100ps
set_ccopt_property -cts_buffer_cells {BUFFD0BWP BUFFD1BWP BUFFD2BWP BUFFD3BWP BUFFD4BWP BUFFD6BWP BUFFD8BWP BUFFD12BWP BUFFD16BWP BUFFD20BWP BUFFD24BWP}
set_ccopt_property -cts_use_inverters false
create_ccopt_clock_tree_spec -filename ./ccopt/local_ctrl_row/ccopt.spec
get_ccopt_clock_trees
ccopt_check_and_flatten_ilms_no_restore
create_ccopt_clock_tree -name clk -source clk -no_skew_group
set_ccopt_property target_max_trans_sdc -delay_corner fast_delay -early -clock_tree clk 0.150
set_ccopt_property target_max_trans_sdc -delay_corner fast_delay -late -clock_tree clk 0.400
set_ccopt_property target_max_trans_sdc -delay_corner typ_delay -early -clock_tree clk 0.150
set_ccopt_property target_max_trans_sdc -delay_corner typ_delay -late -clock_tree clk 0.400
set_ccopt_property target_max_trans_sdc -delay_corner slow_delay -early -clock_tree clk 0.150
set_ccopt_property target_max_trans_sdc -delay_corner slow_delay -late -clock_tree clk 0.400
set_ccopt_property source_output_max_trans -delay_corner fast_delay -early -clock_tree clk 0.150
set_ccopt_property source_output_max_trans -delay_corner fast_delay -early -clock_tree clk 0.150
set_ccopt_property source_output_max_trans -delay_corner typ_delay -early -clock_tree clk 0.150
set_ccopt_property source_output_max_trans -delay_corner typ_delay -early -clock_tree clk 0.150
set_ccopt_property source_output_max_trans -delay_corner slow_delay -early -clock_tree clk 0.150
set_ccopt_property source_output_max_trans -delay_corner slow_delay -early -clock_tree clk 0.150
set_ccopt_property source_output_max_trans -delay_corner fast_delay -late -clock_tree clk 0.200
set_ccopt_property source_output_max_trans -delay_corner fast_delay -late -clock_tree clk 0.200
set_ccopt_property source_output_max_trans -delay_corner typ_delay -late -clock_tree clk 0.200
set_ccopt_property source_output_max_trans -delay_corner typ_delay -late -clock_tree clk 0.200
set_ccopt_property source_output_max_trans -delay_corner slow_delay -late -clock_tree clk 0.200
set_ccopt_property source_output_max_trans -delay_corner slow_delay -late -clock_tree clk 0.200
set_ccopt_property clock_period -pin clk 9.5
create_ccopt_skew_group -name clk/cons_mode -sources clk -auto_sinks
set_ccopt_property include_source_latency -skew_group clk/cons_mode true
set_ccopt_property extracted_from_clock_name -skew_group clk/cons_mode clk
set_ccopt_property extracted_from_constraint_mode_name -skew_group clk/cons_mode cons_mode
set_ccopt_property extracted_from_delay_corners -skew_group clk/cons_mode {fast_delay fast_delay typ_delay typ_delay slow_delay slow_delay}
check_ccopt_clock_tree_convergence
get_ccopt_property auto_design_state_for_ilms
ccopt_design -cts
deleteTrialRoute
verify_drc -limit 1000000
report_ccopt_clock_trees -filename ./ccopt/local_ctrl_row/ccopt_report_trees.rpt
optDesign -postCTS
setOptMode -fixFanoutLoad true
optDesign -postCTS -drv
optDesign -postCTS -hold
timeDesign -postCTS
timeDesign -postCTS -hold
setNanoRouteMode -routeTopRoutingLayer 5
setNanoRouteMode -routeBottomRoutingLayer 2
setNanoRouteMode -routeWithTimingDriven false
setNanoRouteMode -droutePostRouteSwapVia none
setNanoRouteMode -drouteUseMultiCutViaEffort medium
setNanoRouteMode -routeReserveSpaceForMultiCut false
setNanoRouteMode -routeWithViaOnlyForStandardCellPin true
setNanoRouteMode -routeWithViaInPin true
setNanoRouteMode -routeConcurrentMinimizeViaCountEffort low
setNanoRouteMode -drouteStartIteration default
setNanoRouteMode -drouteEndIteration default
setNanoRouteMode -drouteFixAntenna true
setNanoRouteMode -drouteOnGridOnly none
globalDetailRoute
ccopt_pro
setAnalysisMode -analysisType onChipVariation -cppr both
set_analysis_view -setup {fast_analysis typ_analysis slow_analysis} -hold {fast_analysis typ_analysis slow_analysis}
optDesign -postRoute
setOptMode -fixFanoutLoad true
optDesign -postRoute -drv
optDesign -postRoute -hold
timeDesign -postRoute
timeDesign -postRoute -hold
verify_drc -limit 100000
verifyGeometry -error 100000
verifyConnectivity -error 100000
fit
zoomBox -27.19950 2224.25600 59.96050 1996.29900
zoomBox -9.28500 2189.50450 26.74200 2129.24750
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
violationBrowserClose
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
violationBrowserClose
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
editDeleteViolations
optDesign -postRoute
setOptMode -fixFanoutLoad true
optDesign -postRoute -drv
optDesign -postRoute -hold
timeDesign -postRoute
timeDesign -postRoute -hold
verify_drc -limit 100000
verifyGeometry -error 100000
verifyConnectivity -error 100000
violationBrowserClose
fit
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
optDesign -postRoute
setOptMode -fixFanoutLoad true
optDesign -postRoute -drv
optDesign -postRoute -hold
timeDesign -postRoute
timeDesign -postRoute -hold
verify_drc -limit 100000
verifyGeometry -error 100000
verifyConnectivity -error 100000
fit
zoomBox -165.03850 2134.13800 104.13200 1929.05600
fit
editDeleteViolations
violationBrowserDelete -tool Verify -type Connectivity -subtype {Antenna (DanglingWire)} -layertype M1(1)
violationBrowserDelete -tool Verify -type Connectivity -subtype {Antenna (DanglingWire)}
violationBrowserDelete -tool Verify -type Geometry -subtype EndOfLine -layertype M1(1)
violationBrowserDelete -tool Verify -type Geometry -subtype MinArea -layertype M1(1)
violationBrowserDelete -tool Verify -type Geometry -subtype Short -layertype M1(1)
violationBrowserDelete -tool Verify -type Geometry -subtype Spacing -layertype M1(1)
violationBrowserDelete -tool Verify
violationBrowserDelete -tool Verify -type Connectivity
violationBrowserDelete -tool Verify -type Geometry
violationBrowserDelete -tool Verify -type Geometry -subtype EndOfLine
violationBrowserDelete -tool Verify -type Geometry -subtype MinArea
violationBrowserDelete -tool Verify -type Geometry -subtype Short
violationBrowserDelete -tool Verify -type Geometry -subtype Spacing
violationBrowserClose
optDesign -postRoute
setOptMode -fixFanoutLoad true
optDesign -postRoute -drv
optDesign -postRoute -hold
timeDesign -postRoute
timeDesign -postRoute -hold
verify_drc -limit 100000
verifyGeometry -error 100000
verifyConnectivity -error 100000
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
violationBrowserClose
zoomBox 552.75000 1864.96750 -613.65600 2211.04400
zoomBox 88.91550 2140.71850 -53.58650 2203.64150
zoomBox 27.59050 2177.39550 -20.52700 2180.76050
zoomBox 21.49700 2176.10100 10.99100 2181.91450
fit
zoomBox 373.30250 1929.05600 -318.85000 2223.86200
zoomBox 40.62650 2151.34300 -20.85700 2203.36750
zoomBox 20.31750 2173.32150 8.07650 2183.89300
zoomBox 17.67350 2177.22200 15.63850 2179.76600
fit
timeDesign -postRoute
timeDesign -postRoute -hold
getIoFlowFlag
setNanoRouteMode -drouteFixAntenna true
setNanoRouteMode -routeAntennaCellName ANTENNABWP
setNanoRouteMode -routeInsertAntennaDiode true
globalDetailRoute
timeDesign -postRoute
timeDesign -postRoute -hold
verify_drc -limit 100000
verifyGeometry -error 100000
verifyConnectivity -error 100000
addFiller -cell {DCAP64BWP DCAPX64BWP DCAP32BWP DCAPX32BWP DCAP16BWP DCAPX16BWP DCAP8BWP DCAPX8BWP DCAP4BWP DCAPX4BWP DCAPBWP} -prefix filler_decap
addFiller -cell FILL64BWP FILL32BWP FILL16BWP FILL8BWP FILL4BWP FILL3BWP FILL2BWP FILL1BWP -prefix filler_cell
ecoRoute
verify_drc -limit 100000
verifyGeometry -error 100000
verifyConnectivity -error 100000
fit
extractRC
rcOut -spef ./output/local_ctrl_row/local_ctrl_row_enc.spef
saveDesign ./output/local_ctrl_row/local_ctrl_row_enc.enc
saveNetlist ./output/local_ctrl_row/local_ctrl_row_enc.v
saveNetlist -phys -excludeLeafCell -excludeCellInst {FILL128_A9TR50 FILL64_A9TR50 FILL32_A9TR50 FILL16_A9TR50 FILL8_A9TR50 FILL4_A9TR50 FILL2_A9TR50 FILL1_A9TR50 FILLTIE8_A9TR50} output/local_ctrl_row/local_ctrl_row_enc_lvs.v
write_sdf output/${top_design}/${top_design}_enc.sdf -min_view fast_analysis -typ_view typ_analysis -max_view slow_analysis -recompute_delay_calc -version 3.0 -remashold -edges library
write_lef_abstract -add_obs_layers {M1 M2 M3} -specifyTopLayer M4 output/local_ctrl_row.lef
streamOut output/local_ctrl_row/local_ctrl_row_enc.gds -mapFile ./gdsmap/gds2.map -libName local_ctrl_row -structureName local_ctrl_row -units 20000 -mode ALL
summaryReport
saveNetlist -phys -excludeLeafCell -excludeCellInst {FILL64BWP FILL32BWP FILL16BWP FILL8BWP FILL4BWP FILL3BWP FILL2BWP FILL1BWP} output/local_ctrl_row/local_ctrl_row_enc_lvs.v
fit
getIoFlowFlag
zoomBox -408.57400 2223.86200 296.39700 2018.77950
zoomBox -22.63950 2182.18750 53.03250 2155.86650
zoomBox -2.74950 2176.97950 25.96400 2166.70450
panPage 0 1
panPage 0 1
zoomBox 14.60200 2180.12250 18.00850 2177.04550
zoomBox 5.31550 2174.77500 26.97150 2180.66950
zoomBox -9.97600 2170.05550 38.83350 2183.34150
saveNetlist -phys -excludeLeafCell -excludeCellInst {TAPCELLBWP FILL64BWP FILL32BWP FILL16BWP FILL8BWP FILL4BWP FILL3BWP FILL2BWP FILL1BWP} output/local_ctrl_row/local_ctrl_row_enc_lvs.v
fit
getIoFlowFlag
