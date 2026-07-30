PROGRAM_NAME='Master'
(***********************************************************)
(***********************************************************)
(*  FILE_LAST_MODIFIED_ON: 08/10/2020  AT: 17:21:16        *)
(***********************************************************)
(* System Type : NetLinx 3200                              *)
(***********************************************************)
(* REV HISTORY: Radotin v.1                                *)
(* Tlacitka 1-1000 AV technika,  						   *)
(* 			1001 - 2099 Svetla + zaluzie				   *)
(*			2300 - 3999 Svetla 							   *)
(*			2100 - 2299 Topeni 			                   *)
(***********************************************************)
(***********************************************************)
(*          DEVICE NUMBER DEFINITIONS GO BELOW             *)
(***********************************************************)
DEFINE_DEVICE

dvTP1		 		  	= 10001:1:1  	 	// iPad Hlavni Obyvak sedacka
dvTP2		 		  	= 10002:1:1  	 	// iPad RELAX
dvTP3		 		  	= 10003:1:1  	 	// iPad HALA
dvTP4		 		  	= 10004:1:1  	 	// iPad VSTUP
dvTP5		 		  	= 10005:1:1  	 	// iPad OBYVAK
dvTP6		 		  	= 10006:1:1  	 	// iPad LOZNICE 
dvTP7		 		  	= 10007:1:1  	 	// iPad DETI POKOJ
dvTP8		 		  	= 10008:1:1  	 	// iPad 2NP KOUPELNA
dvTP9		 		  	= 10009:1:1  	 	// iPad 1NP KOUPELNA
dvTP10		 		  	= 10010:1:1  	 	// iPad 1PP CHODBA
dvTP11		 		  	= 10011:1:1  	 	// iPAD KANCL
dvTP12		 		  	= 10012:1:1  	 	// Test Muj Telefon

dvTP1_02		 		= 10001:2:1  	 	// iPad Hlavni 
dvTP2_02		 		= 10002:2:1  	 	// iPad 
dvTP3_02		 		= 10003:2:1  	 	// iPad 
dvTP4_02		 		= 10004:2:1  	 	// iPad 
dvTP5_02		 		= 10005:2:1  	 	// iPad Mini 
dvTP6_02		 		= 10006:2:1  	 	// iPad Mini  
dvTP7_02		 		= 10007:2:1  	 	// iPad 
dvTP8_02		 		= 10008:2:1  	 	// iPad 
dvTP9_02		 		= 10009:2:1  	 	// iPad 
dvTP10_02		 		= 10010:2:1  	 	// iPad 1PP CHODBA 
dvTP11_02		 		= 10011:2:1  	 	// iPAD KANCL
dvTP12_02		 		= 10012:2:1  	 	// Test Muj Telefon

dvTP1_03		 		 = 10001:3:1  	 	// iPad Hlavni 1
dvTP2_03		 		 = 10002:3:1  	 	// iPad 
dvTP3_03		 		 = 10003:3:1  	 	// iPad 
dvTP4_03		 		 = 10004:3:1  	 	// iPad Mini 4
dvTP5_03		 		 = 10005:3:1  	 	// iPad Mini 5
dvTP6_03		 		 = 10006:3:1  	 	// iPad Mini 6 
dvTP7_03		 		 = 10007:3:1  	 	// iPad 
dvTP8_03		 		 = 10008:3:1  	 	// iPad 
dvTP9_03		 		 = 10009:3:1  	 	// iPad Mini 9
dvTP10_03		 		 = 10010:3:1  	 	// iPad Mini 
dvTP11_03		 		 = 10011:3:1  	 	// iPAD KANCL
dvTP12_03		 		 = 10012:3:1  	 	// Test Muj Telefon 

dvTP1_04		 		 = 10001:4:1  	 	// iPad Hlavni 1
dvTP2_04		 		 = 10002:4:1  	 	// iPad 
dvTP3_04		 		 = 10003:4:1  	 	// iPad 
dvTP4_04		 		 = 10004:4:1  	 	// iPad Mini 4
dvTP5_04		 		 = 10005:4:1  	 	// iPad Mini 5
dvTP6_04		 		 = 10006:4:1  	 	// iPad Mini 6 
dvTP7_04		 		 = 10007:4:1  	 	// iPad 
dvTP8_04		 		 = 10008:4:1  	 	// iPad 
dvTP9_04		 		 = 10009:4:1  	 	// iPad Mini 9
dvTP10_04		 		 = 10010:4:1  	 	// iPad Mini 
dvTP11_04		 		 = 10011:4:1  	 	// iPAD KANCL
dvTP12_04		 		 = 10012:4:1  	 	// Test Muj Telefon 

/////////////////////     IR Device       ///////////////////	
dvTV_Obyvak		 		= 5001:11:1  	 	// TV LG
// HDMI 2 - Android TV
// HDMI 3 - Reciever
dvAMP					= 5001:12:1  	 	// Zesilovac Onkyo
// VSTUPY 
// BD - BD
// Game - Zidoo
// Stream boot - Sonos
// TV - TV
// VHS - AUX
dvDVD					= 5001:13:1  	 	// DVD PIONEER
dvVideo					= 5001:14:1  	 	// Video Sony
dvTuner					= 5001:18:1  	 	// 

/////////////////////     RS Device       /////////////////////
dvTeplomer		 		= 5001:1:1			// Teplomer    RS485
dvTopeni			 	= 5001:2:1			// Micropel MPC405
dvElektroHome			= 5001:3:1			// Elektromer
dvEsz 					= 5001:4:1			// Zabezpecovacka
dvMeteo			 		= 5001:5:1			// Meteostanice RS485
dvIlight			 	= 5001:6:1			// Ilight COM6
dvZidoo			 		= 5001:8:1			// Prehrávac Zidoo
////////////////////	VIRTUAL DEVICE	//////////////////////
vdSrdceTep			= 33051:1:0			// 
// vdZaluzie			= 33052:1:0	 /// Asi nebude potreba
////////////////////	KONTAKTY	////////////////////// U lesa, u pøístavku, u bazénu, bazén pøepad. 
dvKontaktA			= 32051:1:1		// Dum sklep schody  1-3 
dvKontaktB			= 32053:1:1		// Bouda - u lesa 1-4 / u pøístavku 5-8
dvKontaktC			= 32052:1:1		// Sklep u bazenu 1-3 / bazen 4-6

/////////////////////     Relays      /////////////////////
dvRelays 			= 5001:21:1		//KONTAKTY 1,2 NA ESZ AKCE PRO ODKODOVANO  3,4 ODPOJENI VODY PRI HAVARII

////////////////////		IP					//////////////////////////
dvTepCerpadlo = 0:4:0 // IP DEVICE PRO TEPELNE CERPADLO S MODBUS KOMUNIKACI 

/////////////////		Virtual							//////////////////////
///Roman rezerva pro moduly - adresy 300-400 Channel 2100-2999

////////////////////	IR EXTENDERY	//////////////////////

(***********************************************************)
(*               CONSTANT DEFINITIONS GO BELOW             *)
(***********************************************************)
DEFINE_CONSTANT
//////////// 	DNY V TYDNU	////////////
dNIC 	= 0
dPON 	= 1
dUTR 	= 2
dSTR 	= 3
dCTV 	= 4
dPAT 	= 5
dSOB 	= 6
dNED 	= 7

///////////// 	CAS ZMENY - CASY PRO AKCE	////////////
akce00 	= 0
akce01 	= 1
akce02	= 2
akce03 	= 3
akce04 	= 4
akce05 	= 5
akce06 	= 6
akce07 	= 7
akce08 	= 8
akce09 	= 9
akce10 	= 10
akce21 	= 11
akce22	= 12
akce23 	= 13
akce24 	= 14
akce25 	= 15
akce26 	= 16
akce27 	= 17
akce28 	= 18
akce29 	= 19
akce30 	= 20
akce31 	= 21
akce32	= 22
akce33 	= 23
akce34 	= 24
akce35 	= 25
akce36 	= 26
akce37 	= 27
akce38 	= 28
akce39 	= 29
akce40 	= 30
akce41 	= 31
akce42 	= 32
akce43 	= 33
akce44 	= 34
akce45 	= 35
///////////// 	ZALUZIE	////////////


///////////// 	Sleduji Obyvak	////////////
oNic			= 0
oTVobyvak 		= 1
oZidoo  		= 2
oSonos	 		= 3
oBD_obyvak 		= 4
oAMP_Tuner 		= 5
oAndroid_TV 	= 6
oVideo 			= 7
oZvukTV 		= 8
///////////// 	Sleduji Loznice	////////////
lNic			= 0
lSat1 			= 1
lTvix  			= 4
lSonos1	 		= 6
lBD_obyvak 		= 5
lAMP_Tuner 		= 9

///////////// 	Sleduji Pracovna	////////////
pNic			= 0
pSat1 			= 1
pSat2  			= 2
pSat3  			= 3
pTvix  			= 4
pBD_loznice		= 8
pSonos1	 		= 6
pSonos2		 	= 7
pBD_obyvak 		= 5
pAMP_Tuner 		= 9

///////////// 	Sleduji Kuchyn	////////////
kNic			= 0
kSat1 			= 1
kSat2  			= 2
kSat3  			= 3
kTvix  			= 4
kBD_loznice		= 8
kSonos1	 		= 6
kSonos2		 	= 7
kBD_obyvak 		= 5
kTelevize		= 9

///////////// 	Sleduji Pokoj 1	////////////
dpNic				= 0
dpSat1 			= 1
dpSat2  			= 2
dpSat3  			= 3
dpTvix  			= 4
dpBD_loznice	= 8
dpSonos1	 		= 6
dpSonos2		 	= 7
dpBD_obyvak 	= 5
dpAMP_Tuner 	= 9

///////////// 	Sleduji Sleduji Pokoj 2	////////////
fNic				= 0
fSat1 			= 1
fSat2  			= 2
fSat3  			= 3
fTvix  			= 4
fBD_loznice		= 8
fSonos1	 		= 6
fSonos2		 	= 7
fBD_obyvak 		= 5
fAMP_Tuner 		= 9

///////////// 	Sleduji Pokoj 3	////////////
bNic			= 0
bSat1 			= 1
bSat2  			= 2
bSat3  			= 3
bTvix  			= 4
bBD_loznice		= 8
bSonos1	 		= 6
bSonos2		 	= 7
bBD_obyvak 		= 5
bAMP_Tuner 		= 9

///////////// 	Sleduji Pokoj 4	////////////
tNic			= 0
tSat1 			= 1
tSat2  			= 2
tSat3  			= 3
tTvix  			= 4
tBD_loznice		= 8
tSonos1	 		= 6
tSonos2		 	= 7
tBD_obyvak 		= 5
tAMP_Tuner 		= 9

///////////// 	Sleduji Pokoj 5	////////////
kpNic				= 0
kpSat1 				= 1
kpSat2  			= 2
kpSat3  			= 3
kpTvix  			= 4
kpBD_loznice		= 8
kpSonos1	 		= 6
kpSonos2		 	= 7
kpBD_obyvak 		= 5
kpAMP_Tuner 		= 9

/////////////////////////////////
Zahrada_OTEVRENA	= 0
Zahrada_ZAVRENA		= 1

///////	Svetla Simulace	///////
il_0					= 0
il_1					= 1
il_2					= 2
il_3					= 3

//////// 		ROMAN POCITADLO
TLCOUNTER_ODCHOD 		= 1 		// 
TLCASZAL_ALL_UP 		= 2 		// 
TLCASZAL_ALL_DOWN 		= 3 		// 
//BACHA! TL_THERM 		= 4 		// JE UMISTEN U TEPLOMERU 

//TL_ZALUZ_1NP_UP 		= 5 		// Zaluzie 1P nahoru
//TL_ZALUZ_1NP_DOWN 		= 6 		// Zaluzie 1P dolu
//TL_ZALUZ_1NP_OPEN		= 7 		// Zaluzie 1P otevrit
//TL_ZALUZ_1NP_CLOSE		= 8 		// Zaluzie 1P zavrit
//TL_ZALUZ_2NP_UP 		= 9 		// Zaluzie 2P nahoru
//TL_ZALUZ_2NP_DOWN 		= 10 		// Zaluzie 2P dolu
//TL_ZALUZ_2NP_OPEN		= 11 		// Zaluzie 2P otevrit
//TL_ZALUZ_2NP_CLOSE		= 12 		// Zaluzie 2P zavrit
//TL_ZALUZ_2NPKOUP_DOWN 	= 13 	// Zaluzie 2P KOU dolu 100
//TL_ZALUZ_2NPKOUP_UP 	= 14 		// Zaluzie 2P KOU nahoru 100
//BACHA! TL_SRDCE_TEP 	= 15 		// TIMELINE PRO SRDCE
TL_CASOVAC_RANO 		= 16 			// TIMELINE ZALUZIE NAHORU
TL_CASOV_RANO_VIKEND	= 17 			// TIMELINE ZALUZIE VIKEND NAHORU
TL_CASOVAC_VECER 		= 18 			// TIMELINE ZALUZIE DOLU
//TL_ESZ = 19
TL_MANUAL_NOC	= 20 		// VYPNOUT AUTOMAT
//TL_ZALUZ_VENEK_VECER	= 21		// VENKOVNI ZALUZIE NAKLOPIT
//TL_ZALUZ_TEST			= 22		// Testovaci zaluzie
//TL_SOLAX 				= 23 
//TL_ZAHRADA			= 24		// 


(***********************************************************)
(*              DATA TYPE DEFINITIONS GO BELOW             *)
(***********************************************************)
DEFINE_TYPE

(***********************************************************)
(*               VARIABLE DEFINITIONS GO BELOW             *)
(***********************************************************)
DEFINE_VARIABLE

///////////////			TLACITKA		/////////////////

VOLATILE INTEGER nBTN_VOLBY_OBYVAK[] = 
{
    1,	2,	3,	4,	5,	6,	7,
    8,	9,	10,	11
}
VOLATILE
INTEGER nBTN_Obyvak_TVL[] = 
{
  // 
    100,   101,   102,   103,   104,   105,   106,   107, 
  // 
    108,   109,   110,   111,   112,   113,   114,   115, 
  // 
    116,   117,   118,   119,   120,   121,   122,   123, 
  // 
    124,   125,   126,   127,   128,   129,   130,   131, 
  // 
    132  
}


VOLATILE
INTEGER nBTN_VHS_Video[] = 
{
  // 
    150,   151,   152,   153,   154,   155,   156,   157, 
  // 
    158,   159,   160,   161,   162,   163,   164,   165, 
  // 
    166,   167,   168,   169,   170,   171,   172,   173, 
  // 
    174,   175,   176,   177  
}


VOLATILE
INTEGER nBTN_DVD_Pioneer[] = 
{
  // 
    300,   301,   302,   303,   304,   305,   306,   307, 
  // 
    308,   309,   310,   311,   312,   313,   314,   315, 
  // 
    316,   317,   318,   319,   320,   321,   322,   323, 
  // 
    324,   325,   326,   327,   328,   329,   330  
}



VOLATILE
INTEGER nBTN_Zidoo_P[] = 
{
  // 
    350,   351,   352,   353,   354,   355,   356,   357, 
  // 
    358,   359,   360,   361,   362,   363,   364,   365, 
  // 
    366,   367,   368,   369,   370,   371,   372,   373, 
  // 
    374,   375,   376,   377,   378,   379,   380, 381  
}




VOLATILE INTEGER nBTN_ZALUZIE_2NP_LOZNICE[] = 
{
  // 
   1201,  1202,  1203,  1204,  1205,  1206  
}

VOLATILE INTEGER nBTN_1NP_SV_KUCHYN[] = 
{
  // 
    950,   951,   952,   953,   954,   955,   956,   957, 
  // 
    958,   959,   960,   961,   962,   963,   964,   965, 
  // 
    966,   967,   968,   969,   970,   971,   972,   973, 
  // 
    974,   975,   976,   977,   978,   979  
}

VOLATILE INTEGER nBTN_1NP_SV_KOUP[] = 
{
  // 
   980,  981,  982,  983,  984,  985,  986,  987, 
  // 
   988,  989,  990,  991,  992, 993 
}


VOLATILE INTEGER nBTN_1NP_SV_VCHOD[] = 
{
  // 
   1000,  1001,  1002,  1003,  1004,  1005,  1006,  1007, 
  // 
   1008,  1009,  1010,  1011,  1012,  1013,  1014,  1015, 
  // 
   1016,  1017,  1018,  1019,  1020,  1021,  1022,  1023, 
  // 
   1024,  1025,  1026,  1027,  1028,  1029  
}

VOLATILE INTEGER nBTN_ZALUZIE_2NP_HALA[] = 
{
  // 
   1080,  1081,  1082,  1083,  1084,  1085,  1086,  1087, 
  // 
   1088 
}
VOLATILE INTEGER nBTN_ZALUZIE_1NP_OBYVAK[] = 
{
    1100,	1101,	1102,	1103,	1104,	1105,	1106
	(*,
    1107,	1108,	1109,	1110, 1111, 1112, 1113,
    1114,	1115*)
}
VOLATILE INTEGER nBTN_SVETLA_1NP_OBYVAK[] = 
{
  // 
   1120,  1121,  1122,  1123,  1124,  1125,  1126,  1127, 
  // 
   1128,  1129,  1130,  1131,  1132,  1133,  1134,  1135, 
  // 
   1136,  1137,  1138,  1139,  1140,  1141,  1142,  1143,
    1144,	1145,	1146,	1147,	1148,	1149,	1150,
    1151,	1152,	1153,	1154,	1155,	1156,	1157
}

// {{NSX_DEFINE_VARIABLE
VOLATILE INTEGER nBTN_ZALUZIE_1NP_KOUPEL[] = // 1NP male zaluzie wc, kuchyn a koupelna
{
  // 
   1180,  1181,  1182,  1183,  1184,  1185,  1186,  1187, 1188,	1189, 1190,	1191,	1192,	1193,	1194  
}


VOLATILE INTEGER nBTN_ZALUZIE_2NP_DETI[] = 
{
  // 
   1210,  1211,  1212,  1213,  1214,  1215,  1216,  1217, 
  // 
   1218 
}
VOLATILE INTEGER nBTN_ZALUZIE_2NP_KOUPEL[] = 
{
  // 
   1350,  1351,  1352,  1353,  1354,  1355 
}

VOLATILE INTEGER nBTN_SVETLA_2NP_LOZNICE[] = 
{
	 1219,  1220,  1221,  1222,  1223,  1224,  1225,  1226,  1227,  1228,  
	 1229,  1230,  1231,  1232,  1233,  1234,  1235,  1236,  1237,  1238,  
	 1239,  1240,  1241,  1242,  1243,  1244,  1245,  1246,  1247,  1248,  
	 1249,  1250,  1251,  1252,  1253,  1254,  1255,  1256,  1257,  1258,
	 1259,  1260,  1261,  1262,  1263,  1264,  1265,  1266,  1267,  1268
	 // 1269  
}

VOLATILE INTEGER nBTN_SCENY_2NP_LOZNICE[] = 
{
  // 
   1270,  1271,  1272,  1273,  1274,  1275,  1276,  1277, 
  // 
   1278,  1279,  1280,  1281,  1282,  1283,  1284,  1285, 
  // 
   1286,  1287,  1288,  1289,  1290,  1291,  1292,  1293, 
  // 
   1294,  1295,  1296,  1297,  1298,  1299,  1300,  1301, 
  // 
   1302,  1303,  1304,  1305,  1306,  1307,  1308,  1309, 
  // 
   1310,  1311,  1312,  1313,  1314,  1315,  1316,  1317, 
  // 
   1318,  1319,  1320,  1321,  1322,  1323,  1324,  1325, 
  // 
   1326,  1327,  1328,  1329,  1330,  1331,  1332,  1333, 
  // 
	1334
}

VOLATILE INTEGER nBTN_RGB_2NP_LOZNICE[] = 
{
1335,  1336,  1337,  1338,  1339, 1340, 1341, 1342
}

VOLATILE INTEGER nBTN_RGB2_2NP_LOZNICE[] = 
{
1343, 1344,	1345
}

VOLATILE INTEGER nBTN_ZALUZIE_1NP_HOST[] = 
{
1360, 1361,	1362,	1363,	1364,	1365,	1366,	1367,	1368, 	1369
}

VOLATILE INTEGER nBTN_SVETLA2_2NP_DETI[] = 
{
  // 
   1400,  1401,  1402,  1403
}

VOLATILE INTEGER nBTN_SVETLA_2NP_DETI[] = 
{
  // 
   1404,  1405,  1406,  1407, 
  // 
   1408,  1409,  1410,  1411,  1412,  1413,  1414,  1415, 
  // 
   1416,  1417,  1418,  1419,  1420  
}

VOLATILE INTEGER nBTN_SCENY_2NP_DETI[] = 
{
  // 
   1430,  1431,  1432,  1433,  1434,  1435,  1436,  1437, 
  // 
   1438,  1439,  1440,  1441,  1442,  1443,  1444,  1445, 
  // 
   1446,  1447,  1448,  1449,  1450,  1451,  1452,  1453, 
  // 
   1454,  1455,  1456,  1457,  1458,  1459,  1460,  1461, 
  // 
   1462,  1463,  1464,  1465,  1466,  1467,  1468,  1469, 
  // 
   1470,  1471,  1472,  1473,  1474,  1475,  1476,  1477, 
  // 
   1478,  1479,  1480,  1481,  1482,  1483,  1484  
}

VOLATILE INTEGER nBTN_RGB_2NP_DETI[] = 
{
1490,  1491,  1492,  1493,  1494,  1495
}

VOLATILE INTEGER nBTN_SVETLA_2NP_KOUPEL[] = 
{
  // 
   1500,  1501,  1502,  1503,  1504,  1505,  1506,  1507, 
  // 
   1508,  1509,  1510,  1511,  1512,  1513,  1514,  1515, 
  // 
   1516,  1517,  1518,  1519,  1520,  1521,  1522,  1523, 
  // 
   1524,  1525,  1526,  1527,  1528,  1529  
}

VOLATILE INTEGER nBTN_SCENY_2NP_KOUPEL[] = 
{
  // 
   1530,  1531,  1532,  1533,  1534,  1535,  1536,  1537, 
  // 
   1538,  1539,  1540,  1541,  1542,  1543,  1544,  1545, 
  // 
   1546,  1547,  1548,  1549,  1550,  1551,  1552,  1553, 
  // 
   1554,  1555,  1556,  1557,  1558,  1559,  1560,  1561, 
  // 
   1562,  1563,  1564,  1565,  1566,  1567,  1568,  1569, 
  // 
   1570,  1571,  1572,  1573,  1574,  1575,  1576,  1577, 
  // 
   1578,  1579,  1580,  1581,  1582,  1583,  1584,  1585, 
  // 
   1586,  1587,  1588,  1589,  1590,  1591,  1592,  1593, 
  // 
   1594,  1595,  1596,  1597,  1598,  1599,  1600,  1601, 
  // 
   1602,  1603,  1604,  1605,  1606,  1607,  1608,  1609, 
  // 
   1610,  1611,  1612,  1613,  1614,  1615,  1616,  1617, 
  // 
   1618,  1619,  1620,  1621,  1622,  1623,  1624,  1625, 
  // 
   1626,  1627,  1628,  1629  
}


VOLATILE INTEGER nBTN_SVETLA_2NP_HALA[] = 
{
  // 
   1630,  1631,  1632,  1633,  1634,  1635,  1636,  1637, 
  // 
   1638,  1639,  1640,  1641,  1642,  1643,  1644,  1645, 
  // 
   1646,  1647,  1648,  1649,  1650,  1651,  1652,  1653, 
  // 
   1654,  1655,  1656,  1657,  1658,  1659,  1660,  1661, 
  // 
   1662,  1663,  1664,  1665,  1666,  1667,  1668,  1669, 
  // 
   1670,  1671,  1672,  1673,  1674,  1675,  1676,  1677, 
  // 
   1678,  1679,  1680,  1681,  1682,  1683,  1684,  1685, 
  // 
   1686,  1687,  1688,  1689,  1690,  1691,  1692,  1693, 
  // 
   1694,  1695,  1696,  1697,  1698,  1699  
}

VOLATILE INTEGER nBTN_SCENY_2NP_HALA[] = 
{
  // 
   1700,  1701,  1702,  1703,  1704,  1705,  1706,  1707, 
  // 
   1708,  1709,  1710,  1711,  1712,  1713,  1714,  1715, 
  // 
   1716,  1717,  1718,  1719,  1720,  1721,  1722,  1723, 
  // 
   1724,  1725,  1726,  1727,  1728,  1729,  1730,  1731, 
  // 
   1732,  1733,  1734,  1735,  1736,  1737,  1738,  1739, 
  // 
   1740,  1741,  1742,  1743,  1744,  1745,  1746,  1747, 
  // 
   1748,  1749,  1750,  1751,  1752,  1753,  1754,  1755, 
  // 
   1756,  1757,  1758,  1759,  1760,  1761,  1762,  1763, 
  // 
   1764,  1765,  1766,  1767,  1768,  1769,  1770,  1771, 
  // 
   1772,  1773,  1774,  1775,  1776,  1777,  1778,  1779, 
  // 
   1780,  1781,  1782,  1783,  1784  
}

VOLATILE INTEGER nBTN_RGB_2NP_HALA[] = 
{
  // 
   1790,  1791,  1792,  1793,  1794,  1795,  1796,  1797, 
  // 
   1798,  1799,  1800,  1801,  1802,  1803,  1804,  1805, 
  // 
   1806,  1807,  1808,  1809,  1810,  1811,  1812  
}
VOLATILE INTEGER nBTN_RGB_2NP_KOUPEL[] = 
{
1820,  1821,  1822,  1823,  1824,  1825, 1826,  1827,  1828,  1829,  1830,  1831,  1832,  1833
}

VOLATILE INTEGER nBTN_RGB_2NP_SCHODY[] = // Schody a vreteno RGB
{
  // 
   1850,  1851,  1852,  1853,  1854,  1855,  1856,  1857, 
  // 
   1858,  1859,  1860,  1861,  1862,  1863,  1864,  1865, 
  // 
   1866,  1867,  1868,  1869,  1870,  1871,  1872,  1873, 
  // 
   1874,	1875,	1876,	1877,	1878,	1879  
}
VOLATILE INTEGER nBTN_SCENY_1NP_SCHODY[] = 		
{
  // 
   1880,  1881,  1882,  1883,  1884,  1885,  1886,  1887, 
  // 
   1888,  1889,  1890,  1891,  1892,  1893,  1894,  1895, 
  // 
   1896,  1897  
}
VOLATILE INTEGER nBTN_SCENY_2NP_SCHODY[] = 
{
  // 
   1900,  1901,  1902,  1903,  1904,  1905,  1906,  1907, 
  // 
   1908,  1909,  1910,  1911,  1912,  1913,  1914,  1915  
	
}

VOLATILE INTEGER nBTN_0NP_KAMEN_SCHODY[] = 
{
1916,  1917,  1918,  1919,  1920,  1921
}

VOLATILE INTEGER nBTN_RGB_2NP_HALA2[] = 
{
  // 
   1930,  1931,  1932,  1933,  1934,  1935,  1936,  1937, 
  // 
   1938,  1939,  1940,  1941,  1942,  1943,  1944,  1945, 
  // 
   1946,  1947,  1948,  1949,  1950,  1951,  1952,  1953, 
  // 
   1954,  1955,  1956,  1957,  1958,  1959  
}

// {{NSX_DEFINE_VARIABLE
VOLATILE INTEGER nBTN_CHANNEL_REQUEST[] = 
{
  // 
   2000,  2001,  2002,  2003,  2004,  2005,  2006,  2007, 
  // 
   2008,  2009,  2010,  2011,  2012,  2013,  2014,  2015, 
  // 
   2016,  2017,  2018,  2019,  2020,  2021,  2022,  2023, 
  // 
   2024,  2025,  2026,  2027,  2028,  2029,  2030,  2031, 
  // 
   2032,  2033,  2034,  2035,  2036,  2037,  2038,  2039, 
  // 
   2040,  2041,  2042,  2043,  2044,  2045,  2046,  2047, 
  // 
   2048,  2049,  2050,  2051,  2052,  2053,  2054,  2055, 
  // 
   2056,  2057,  2058,  2059,  2060,  2061,  2062,  2063, 
  // 
   2064  
}

VOLATILE INTEGER nBTN_SCENY_1NP_OBYVAK1[] = 
{
  // 
   2300,  2301,  2302,  2303,  2304,  2305,  2306,  2307, 
  // 
   2308,  2309,  2310,  2311,  2312,  2313,  2314,  2315, 
  // 
   2316,  2317,  2318,  2319,  2320,  2321,  2322,  2323,
   2324,  2325,  2326, 2327, 2328, 2329, 2330
}

VOLATILE INTEGER nBTN_SCENY_1NP_OBYVAK2[] = 
{
  // 
   2340,  2341,  2342,  2343,  2344,  2345,  2346,  2347, 
  // 
   2348,  2349,  2350,  2351,  2352,  2353,  2354,  2355, 
  // 
   2356,  2357,  2358,  2359,  2360,  2361,  2362,  2363, 
   2364,  2365,  2366,  2367,  2368,  2369,  2370    
}

VOLATILE INTEGER nBTN_RGB_2NP_VRETENO[] = 
{
  // 
   2600,  2601,  2602,  2603,  2604,  2605,  2606,  2607, 
  // 
   2608,  2609,  2610,  2611,  2612,  2613,  2614,  2615, 
  // 
   2616,  2617,  2618,  2619,  2620,  2621,  2622,  2623, 
  // 
   2624,  2625,  2626,  2627,  2628,  2629,  2630,  2631, 
  // 
   2632,  2633,  2634, 2635, 2636  
}

VOLATILE INTEGER nBTN_2NP_VRETENO_SRDCE[] = 
{
2637,  2638,  2639,  2640,  2641,  2642
}
VOLATILE INTEGER nBTN_SVETLA_2NP_TERASA[] = 
{
2700, 2701,  2702,  2703,  2704,  2705,  2706,  2707,  2708,  2709 
}
VOLATILE INTEGER nBTN_SCENY_2NP_TERASA[] = 
{
   2710,  2711	
}
VOLATILE INTEGER nBTN_SVETLA_VEN_ZNAK[] = 
{
2720, 2721,  2722,  2723,  2724,  2725
}
VOLATILE INTEGER nBTN_ZALUZIE_ALL_SVETLO[] = 	//// NEPOUZITO VOLNE	
{
2800, 2801,  2802,  2803,  2804,  2805,  2806,  2807,  2808,  2809 
}
VOLATILE INTEGER nBTN_2NPHALA_RGB_POHOVKA[] = 
{
  // 
   3520,  3521,  3522,  3523,  3524,  3525,  3526,  3527, 
  // 
   3528,  3529,  3530,  3531,  3532,  3533,  3534,  3535, 
  // 
   3536,  3537,  3538,  3539,  3540,  3541,  3542,  3543, 
  // 
   3544  
}

VOLATILE INTEGER nBTN_2NPHALA_RGB_SCHODY[] = 
{
  // 
   3550,  3551,  3552,  3553,  3554,  3555,  3556,  3557, 
  // 
   3558,  3559,  3560,  3561,  3562,  3563,  3564,  3565, 
  // 
   3566,  3567,  3568,  3569,  3570,  3571,  3572,  3573, 
  // 
   3574  
}

VOLATILE INTEGER nBTN_2NPHALA_RGB_OKNO[] = 
{
  // 
   3580,  3581,  3582,  3583,  3584,  3585,  3586,  3587, 
  // 
   3588,  3589,  3590,  3591,  3592,  3593,  3594,  3595, 
  // 
   3596,  3597,  3598,  3599,  3600,  3601,  3602,  3603, 
  // 
   3604  
}

VOLATILE INTEGER nBTN_2NPHALA_RGB_TV[] = 
{
  // 
   3610,  3611,  3612,  3613,  3614,  3615,  3616,  3617, 
  // 
   3618,  3619,  3620,  3621,  3622,  3623,  3624,  3625, 
  // 
   3626,  3627,  3628,  3629,  3630,  3631,  3632,  3633, 
  // 
   3634  
}

VOLATILE INTEGER nBTN_2NPHALA_RGB_OBRAZ[] = 
{
  // 
   3640,  3641,  3642,  3643,  3644,  3645,  3646,  3647, 
  // 
   3648,  3649,  3650,  3651,  3652,  3653,  3654,  3655, 
  // 
   3656,  3657,  3658,  3659,  3660  
}
VOLATILE INTEGER nBTN_2NPLOZ_RGB_STRED[] = 
{
  // 
   3670,  3671,  3672,  3673,  3674,  3675,  3676,  3677, 
  // 
   3678,  3679,  3680,  3681,  3682,  3683,  3684,  3685, 
  // 
   3686,  3687,  3688,  3689  
}

VOLATILE INTEGER nBTN_2NPLOZ_RGB_LEVA[] = 
{
  // 
   3690,  3691,  3692,  3693,  3694,  3695,  3696,  3697, 
  // 
   3698,  3699,  3700,  3701,  3702,  3703,  3704,  3705, 
  // 
   3706,  3707,  3708,  3709  
}

VOLATILE INTEGER nBTN_2NPLOZ_RGB_PRAVA[] = 
{
  // 
   3710,  3711,  3712,  3713,  3714,  3715,  3716,  3717, 
  // 
   3718,  3719,  3720,  3721,  3722,  3723,  3724,  3725, 
  // 
   3726,  3727,  3728,  3729  
}
VOLATILE INTEGER nBTN_2NPLOZ_RGB3[] = 
{
  // 
   3730,  3731,  3732,  3733,  3734,  3735,  3736,  3737, 
  // 
   3738,  3739,  3740,  3741,  3742,  3743,  3744  
}


VOLATILE INTEGER nBTN_1NPOBYV_KAMENY[] = 
{
  // 
   3900,  3901,  3902,  3903,  3904,  3905,  3906,  3907, 
  // 
   3908,  3909,  3910,  3911,  3912,  3913,  3914,  3915, 
  // 
   3916,  3917,  3918,  3919,  3920,  3921,  3922,  3923, 
  // 
   3924,  3925,  3926,  3927,  3928,  3929,  3930,  3931, 
  // 
   3932,  3933,  3934  
}


//********************////////////			PORT 2			//////////////////*******************************//
VOLATILE INTEGER nBTN_2NP_LOZ_SV_ON[] = 
{
  // 
     50,    51,    52,    53,    54,    55,    56,    57, 
  // 
     58,    59,    60,    61,    62,    63,    64,    65, 
  // 
     66,    67,    68,    69,    70,    71,    72,    73, 
  // 
     74,    75,    76,    77,    78,    79,    80,    81, 
  // 
     82,    83,    84,    85,    86,    87,    88,    89 
}

VOLATILE INTEGER nBTN_2NP_LOZ_SCENY[] = 
{
     90,    91,    92,    93,    94,    95,    96,    97, 
	// 
     98,    99  
}
VOLATILE INTEGER nBTN_ALL_VNP_CHODBA[] = 
{
  // 
    100,   101,   102,   103,   104,   105,   106,   107, 
  // 
    108,   109,   110,   111,   112,   113,   114,   115, 
  // 
    116,   117,   118,   119,   120,   121,   122,   123, 
  // 
    124,   125,   126,   127,   128,   129,   130,   131, 
  // 
    132,   133,   134,   135,   136,   137,   138,   139, 
  // 
    140,   141,   142,   143,   144,   145,   146,   147, 
  // 
    148,   149  
}

VOLATILE INTEGER nBTN_OBYVAK_PORT_2[] = 
{
  // 
    150,   151,   152,   153,   154,   155,   156,   157, 
  // 
    158,   159,   160,   161,   162,   163,   164,   165, 
  // 
    166,   167,   168,   169,   170,   171,   172,   173, 
  // 
    174,   175,   176,   177,   178,   179,   180,   181, 
  // 
    182,   183,   184,   185,   186,   187,   188,   189, 
  // 
    190,   191,   192,   193,   194,   195,   196,   197, 
  // 
    198,   199, 200,   201,   202,   203,   204,   205,   206,   207, 
  // 
    208,   209,   210,   211,   212,   213,   214,   215, 
  // 
    216,   217,   218,   219,   220,   221,   222,   223, 
  // 
    224,   225,   226,   227,   228,   229,   230
}

// SVETLA WC port 2
VOLATILE INTEGER nBTN_SVETLA_WC[] = 
{
  // 
    250,   251,   252,   253,   254,   255,   256,   257, 
  // 
    258,   259,   260,   261,   262,   263,   264,   265, 
  // 
    266,   267,   268,   269,   270,   271,   272,   273, 
  // 
    274,   275,   276,   277,   278,   279,   280,   281, 
  // 
    282,   283,   284,   285,   286,   287,   288,   289, 
  // 
    290,   291,   292,   293,   294,   295,   296,   297, 
  // 
    298,   299,   300  
}
/// vse port 2
VOLATILE INTEGER nBTN_1PP_RELAX_SC_VIRIV[] = 				/// SCENY VIRIVKA
{
  // 
    410,  411,  412,  413,  414,  415, 416, 417,  418 
}

VOLATILE INTEGER nBTN_0NP_SV_RELAX_VYRIVKA2[] = 			/// Virivka SV1 vse port 2
{
  // 
    430,   431,   432,   433,   434,   435,   436,   437, 
  // 
    438,   439,   440,   441,   442,   443,   444,   445, 
  // 
    446,   447,   448
}


/// vse port 2
VOLATILE INTEGER nBTN_0NP_SV_RELAX_VYRIVKA1[] = 			/// Virivka SV1 vse port 2
{
  // 
    460,   461,   462,   463,   464,   465,   466,   467, 
  // 
    468,   469,   470,   471,   472,   473,   474,   475, 
  // 
    476,   477,   478
}

VOLATILE INTEGER nBTN_0NP_SV_RELAX_VYRIVKA3[] = 			// Virivka SV3 vse port2
{
  // 
 900,   901,   902,   903,   904,   905, 906, 907,   908,   909,   910
}


VOLATILE INTEGER nBTN_1PP_RELAX_SCRA[] = 
{
  // 
    490,   491,   492,   493,   494,   495, 496  
}

VOLATILE INTEGER nBTN__1PP_RELAX_UL[] = 
{
482,  483,  484,  485,  486,  487, 488
}

VOLATILE INTEGER nBTN_0NP_SV_RELAX_KAMEN_RED[] = 
{
  // 
    500,   501,   502,   503,   504,   505,   506,   507, 
  // 
    508,   509,   510,   511,   512,   513,   514,   515, 
  // 
    516,   517,   518,   519,   520,   521,   522,   523, 
  // 
    524,   525,   526,   527,   528,   529,   530
}

VOLATILE
INTEGER nBTN_0NP_SV_RELAX_KAMEN_GREEN[] = 
{
  // 
    531,   532,   533,   534,   535,   536,   537,   538, 
  // 
    539,   540,   541,   542,   543,   544,   545,   546, 
  // 
    547,   548,   549,   550,   551,   552,   553,   554, 
  // 
    555,   556,   557,   558,   559,   560  
}

VOLATILE
INTEGER nBTN_0NP_SV_RELAX_KAMEN_BLUE[] = 
{
  // 
    561,   562,   563,   564,   565,   566,   567,   568, 
  // 
    569,   570,   571,   572,   573,   574,   575,   576, 
  // 
    577,   578,   579,   580,   581,   582,   583,   584, 
  // 
    585,   586,   587,   588,   589,   590  
}

VOLATILE
INTEGER nBTN_0NP_SV_RELAX_KAMEN_WHITE[] = 
{
  // 
    591,   592,   593,   594,   595,   596,   597, 
  // 
    598,   599,   600,   601,   602,   603,   604,   605, 
  // 
    606,   607,   608,   609,   610,   611,   612,   613, 
  // 
    614,   615,   616,   617,   618,   619,   620  
}

VOLATILE INTEGER nBTN_0NP_SV_RELAX_KAMEN_POMOCNE[] = 
{
  // 
   621,   622,   623,   624,   625,   626,   627, 
  // 
    628,   629,   630,   631,   632,   633,   634,   635, 
  // 
    636,   637,   638,   639,   640,   641,   642,   643, 
  // 
    644,   645,   646,   647,   648,   649,   650  
}


VOLATILE INTEGER nBTN_SCENY_0NP_KAM_RELAX[] = 
{
  // 
    651,   652,   653,   654,   655,   656,   657,   658, 
  // 
    659,   660,   661,   662,   663,   664,   665  
}

VOLATILE INTEGER nBTN_SV_0NP_KOUP[] = 
{
  // 
    671,   672,   673,   674,   675,   676,   677,   678, 
  // 
    679,   680,   681,   682,   683,   684,   685,   686, 
  // 
    687,   688,   689,   690  
}

VOLATILE INTEGER nBTN_1PP_RELAX_SCST[] = 
{
  // 
    725,   726,   727,   728,   729,   730,   731  
}
VOLATILE INTEGER nBTN_1PP_RELAX_SCSB[] = 
{
  // 
    786,   787,   788,   789,   790,   791,   792  
}

VOLATILE INTEGER nBTN_0NP_SV_RELAX_DVORKY[] = 
{
  // 
    760,   761,   762,   763,   764,   765,   766,   767, 
  // 
    768,   769    
}

VOLATILE INTEGER nBTN_0NP_SV_SCENY_DVORKY[] = 
{
  // 
 770,   771,   772,   773,   774,   775, 776, 777,   778,   779,   780,   781,   782, 783
}

VOLATILE INTEGER nBTN_0NP_SC_RELAX_PLASTEV[] = 			// Relax Plastev
{
  // 
 925,   926,   927,   928,   929,   930, 931, 932,   933,   934,   935
}


VOLATILE INTEGER nBTN_ZAL_ZIMNI[] = 
{
  // 
   1100,  1101,  1102,  1103,  1104,  1105,  1106,  1107, 
  // 
   1108,  1109,  1110,  1111,  1112,  1113,  1114,  1115, 
  // 
   1116,  1117,  1118,  1119,  1120   
}


VOLATILE INTEGER nBTN_SV_RELAX_RGB1[] =    // RGB 1 svetla RELAX Port 2
{
  //
   1300,  1301,  1302,  1303,  1304,  1305,  1306,  1307,
  //
   1308,  1309,  1310,  1311,  1312,  1313,  1314,  1315,
  //
   1316,  1317,  1318,  1319,  1320,  1321
}

VOLATILE INTEGER nBTN_SV_RELAX_RGB2[] =    // RGB 2 svetla RELAX Port 2
{
  //
   1325,  1326,  1327,  1328,  1329,  1330,  1331,  1332,
  //
   1333,  1334,  1335,  1336,  1337,  1338,  1339,  1340,
  //
   1341,  1342,  1343,  1344,  1345,  1346
}

VOLATILE INTEGER nBTN_SV_RELAX_RGB3[] =    // RGB 3 svetla RELAX Port 2
{
  //
   1350,  1351,  1352,  1353,  1354,  1355,  1356,  1357,
  //
   1358,  1359,  1360,  1361,  1362,  1363,  1364,  1365,
  //
   1366,  1367,  1368,  1369,  1370,  1371
}

VOLATILE
INTEGER nBTN_SV_RELAX_RGB4[] = 			// RGB 4 svetla RELAX Port 2
{
  // 
   1375,  1376,  1377,  1378,  1379,  1380,  1381,  1382, 
  // 
   1383,  1384,  1385,  1386,  1387,  1388,  1389,  1390, 
  // 
   1391,  1392,  1393,  1394,  1395,  1396,  1397,  1398, 
  // 
   1399  
}

VOLATILE
INTEGER nBTN_SV_RELAX_RGB5[] = 		// RGB 5 svetla RELAX Port 2
{
  // 
   1400,  1401,  1402,  1403,  1404,  1405,  1406,  1407, 
  // 
   1408,  1409,  1410,  1411,  1412,  1413,  1414,  1415, 
  // 
   1416,  1417,  1418,  1419,  1420,  1421,  1422,  1423, 
  // 
   1424  
}

VOLATILE
INTEGER nBTN_SV_SATNA_RGB[] = 		// SATNA STROP RGB
{
  // 
   1430,  1431,  1432,  1433,  1434,  1435,  1436,  1437, 
  // 
   1438,  1439,  1440,  1441,  1442,  1443,  1444,  1445,
  // 
   1446
   // 1447,  1448,  1449,  1450,  1451,  1452,  1453, 
  // 
  // 1454  
}

VOLATILE
INTEGER nBTN_SV_FASADA[] = 
{
  // 
   1500,  1501,  1502,  1503,  1504,  1505,  1506,  1507, 
  // 
   1508,  1509  
}

// Tuner
VOLATILE
INTEGER nBTN_1PP_TUNER[] = 
{
  // 
   1700,  1701,  1702,  1703,  1704,  1705,  1706,  1707, 
  // 
   1708,  1709,  1710,  1711,  1712,  1713,  1714,  1715  
}
// }}NSX_DEFINE_VARIABLE



VOLATILE INTEGER nBTN_MP_Puk[] = 
{
  // 
    380,   381,   382,   383,   384,   385,   386,   387, 
  // 
    388,   389,   390,   391,   392  
}




VOLATILE
INTEGER nBTN_0NP_SV_RELAX_STENA[] = 
{
  // 
    820,   821,   822,   823,   824,   825,   826,   827, 
  // 
    828,   829,   830,   831,   832,   833,   834,   835, 
  // 
    836,   837,   838,   839,   840,   841,   842,   843, 
  // 
    844,   845,   846,   847,   848,   849,   850,   851, 
  // 
    852,   853,   854,   855,   856,   857,   858,   859, 
  // 
    860,   861,   862,   863,   864,   865,   866,   867, 
  // 
    868,   869,   870,   871,   872,   873,   874,   875  
}





VOLATILE
INTEGER nBTN_SCENY_0NP_KOUP[] = 
{
  // 
    876,   877,   878,   879,   880,   881,   882  
}


VOLATILE
INTEGER nBTN_SCENY_0NP_SPRCHA[] = 
{
  // 
    883,   884,   885,   886,   887,   888,   889  
}

VOLATILE
INTEGER nBTN_SV_0NP_MANDALA[] = 
{
  // 
    890,   891,   892,   893,   894,   895,   896,   897, 
  // 
    898,   899  
}


VOLATILE
INTEGER nBTN_SC_0NP_MANDALA[] = 
{
  // 
    900,   901,   902,   903,   904,   905,   906,   907, 
  // 
    908,   909,   910,   911,   912,   913,   914  
}


VOLATILE
INTEGER nBTN_1PP_RELAX_SCRB[] = 
{
  // 
    691,   692,   693,   694,   695,   696,   697  
}



VOLATILE
INTEGER nBTN_1PP_SV_PRACOVNA[] = 
{
  // 
   1200,  1201,  1202,  1203,  1204,  1205,  1206,  1207, 
  // 
   1208,  1209,  1210,  1211,  1212,  1213,  1214  
}



VOLATILE
INTEGER nBTN_1PP_ZAL_PRACOVNA[] = 
{
  // 
   1220,  1221,  1222,  1223,  1224,  1225,  1226,  1227, 
  // 
   1228,  1229  
}
///////////////////////  Port 3   //////////////////////////////////
VOLATILE INTEGER nBTN_ZALUZIE_STOP[] = 
{
  // 
   200,  201,  202,  203,  204,  205,  206,  207, 
  // 
   208,  209,  210,  211,  212,  213,  214,  215, 
  // 
   216,  217,  218,  219,  220,  221,  222,  223, 
  // 
   224,  225,  226,  227,  228,  229,  230,  231, 
  // 
   232,  233,  234,  235,  236,  237,  238,  239, 
  // 
   240,  241,  242,  243,  244,  245,  246,  247, 
  // 
   248,  249,  250,  251,  252,  253,  254,  255, 
  // 
   256,  257,  258,  259,  260,  261,  262,  263, 
  // 
   264  
}


DEV dvMyTP_01[] =   {dvTP1,dvTP2,dvTP3,dvTP4,dvTP5,dvTP6,dvTP7,dvTP8,dvTP9,dvTP10,dvTP11,dvTP12}
DEV dvMyTP_02[] =   {dvTP1_02,dvTP2_02,dvTP3_02,dvTP4_02,dvTP5_02,dvTP6_02,dvTP7_02,dvTP8_02,dvTP9_02,dvTP10_02,dvTP11_02,dvTP12_02}
DEV dvMyTP_03[] = {dvTP1_03,dvTP2_03,dvTP3_03,dvTP4_03,dvTP5_03,dvTP6_03,dvTP7_03,dvTP8_03,dvTP9_03,dvTP10_03,dvTP11_03,dvTP12_03} 
DEV dvMyTP_04[] = {dvTP1_04,dvTP2_04,dvTP3_04,dvTP4_04,dvTP5_04,dvTP6_04,dvTP7_04,dvTP8_04,dvTP9_04,dvTP10_04,dvTP11_04,dvTP12_04} // V zahrade

INTEGER TP_ID

VOLATILE CHAR UKLADANI_ACTIVE = FALSE
///  AV SEKCE	
volatile char sleduji_obyvak
volatile char vstup_obyvak
volatile char TV_Obyvak_Power
volatile char AMP_Obyvak_Power
volatile char hlasitost_AMP=0
/// CASOVE FUNKCE
//PERSISTENT CHAR DEN_V_TYDNU = 0
VOLATILE INTEGER DEN_V_TYDNU = 0
VOLATILE CHAR DEN_V_TEST = 0		// POUZE PRO TESTY
volatile char DEN_NOC = 1  /// 1 JE DEN
volatile char CAS_ZMENY = 0
PERSISTENT CHAR ZALUZIE_NOC = 0
PERSISTENT CHAR ZALUZIE_DEN = 0
volatile char PO_PULNOCI = FALSE
VOLATILE CHAR GLOBAL_JE_TMA = FALSE /// PRO CIDLA OSVETLENI ZAHRADY, DEN_NOC = 1 nevim zda na to mohu pouzit, musel bych projit kod
volatile char DOVOLENA = FALSE   // 0 NORMAL
volatile char VIKEND = FALSE   	// 0 PRACOVNI DEN
PERSISTENT CHAR LETO_ZIMA = FALSE  // 0 FALSE JE LETO
PERSISTENT CHAR VODA_VENTIL_RELAX = 0 // 0 OTEVREN
PERSISTENT CHAR VODA_VENTIL_MANUAL = 0 // 0 AUTOMAT
volatile char MANUALNI_OVLADANI = FALSE
volatile char MANUAL_VIKEND = FALSE
volatile char BUDHA_AUTOMAT = FALSE
VOLATILE CHAR VYPNUTO=FALSE
VOLATILE CHAR sSTISK=1
VOLATILE CHAR VYP_SVET=0  // Chovani po restartu, 1 - vypne svetla
PERSISTENT CHAR SV_Manual=0 // zustava v pameti, bud po restartu vypnu svetla, nebo to zakazu 

// promenna pro pamet poslední vteriny
VOLATILE CHAR sPosledniProvedenyCas[8]

//////////////ZAHRADA DVERE //////////////////
VOLATILE CHAR DVERE = Zahrada_ZAVRENA
VOLATILE CHAR ZAL_DVERE_NAHORE = FALSE

///////////////////  ZALUZIE + SVETLA POMOCNE ///////////////////////////
PERSISTENT INTEGER	DEN_ZAPNUT=0  // Pro akce ktere chci spustit jenom 1
VOLATILE CHAR DET_POK_SV = 0
VOLATILE CHAR ZAL_JIH_POHYB = 0
VOLATILE CHAR ZAL_ZAPAD_POHYB = 0
VOLATILE CHAR ZAL_VYCHOD_POHYB = 0
PERSISTENT CHAR	ZALUZIE_STAV  //1 ZALUZIE OTEVRENE / 0 NOC ZAVRENE - NOCNI SJIZDENI
PERSISTENT CHAR	ZAL_JIH_STAV  //0 ZALUZIE NAHORE / 1 DOLE - CIDLA
PERSISTENT CHAR	ZAL_VYCHOD_STAV  //0 ZALUZIE OTEVRENE / 1 ZAVRENE - CIDLA
PERSISTENT CHAR	ZAL_ZAPAD_STAV  //0 ZALUZIE OTEVRENE / 1 ZAVRENE - CIDLA
//////// 		ROMAN POCITADLO
VOLATILE LONG TIME_COUNTER_ODCHOD[] = { 1000 }  // TIMES IN MS
VOLATILE CHAR TLCOUNTER_ODCHOD_LONG // CAS V SEC
VOLATILE CHAR TLCOUNTER_ODCHOD_CH 

LONG CAS_MANUAL_NOC[] = {10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000} //Cas pro akce 

///////////////// SRDCE TEP SVETLO
VOLATILE INTEGER fTEMP1 = 60     // Výchozí hodnota tepu
VOLATILE INTEGER fTEMP2 = 6000   // 6000/fTEMP1 = základní casový interval
VOLATILE INTEGER cCASs1 = 1000   // Casový interval pro timeline
VOLATILE INTEGER SRDCE_VOLNO = TRUE  // Príznak volnosti
//volatile char SRDCE_VOLNO=TRUE
char cEtx = $0D
//////////////////////
VOLATILE CHAR tmpARCH[2] // pro nestandardni volani wait 5 s parametrem v define_call
VOLATILE CHAR CHANNEL_IN[2]
VOLATILE CHAR PERSIST_IN
VOLATILE INTEGER CAS_SRDCE_KROK = 0
VOLATILE INTEGER NAPAJENI_VYPADEK=0	//PRO NAPAJENI V SEKCI SOLAX/iLight
VOLATILE INTEGER bFontana

INCLUDE 'iLight'
INCLUDE 'Teplomer'
INCLUDE 'Roman.axi'
INCLUDE 'Srdce.axi'
INCLUDE 'Cerpadla.axi'
INCLUDE 'iLight2'
INCLUDE 'ESZ.axi'
INCLUDE 'Zaluzie.axi'
INCLUDE 'Solax.axi'
INCLUDE 'Zidoo.axi'
INCLUDE 'Vypinani.axi'
INCLUDE 'Zahrada.axi'
//INCLUDE 'Zaluzie2.axi' PRIDAT AZ DOLADIM 
(***********************************************************)
(*               LATCHING DEFINITIONS GO BELOW             *)
(***********************************************************)
DEFINE_LATCHING

(***********************************************************)
(*       MUTUALLY EXCLUSIVE DEFINITIONS GO BELOW           *)
(***********************************************************)
DEFINE_MUTUALLY_EXCLUSIVE
//([dvTP1,1]..[dvTP1,9])
//([dvTP1,1270]..[dvTP1,1340]) - vyhodit - nefunguje dobre, naopak pusobi problemy
([dvTP1,1493]..[dvTP1,1494])
([dvTP1,1495]..[dvTP1,1496])
([dvTP1,1]..[dvTP1,9])
([dvTP2,1]..[dvTP2,9])
([dvTP3,1]..[dvTP3,9])
([dvTP4,1]..[dvTP4,9])
([dvTP5,1]..[dvTP5,9])
([dvTP6,1]..[dvTP6,9])
([dvTP7,1]..[dvTP7,9])
([dvTP8,1]..[dvTP8,9])
([dvTP9,1]..[dvTP9,9])
([dvTP10,1]..[dvTP10,9])
([dvTP11,1]..[dvTP11,9])

//////////////////   AUTOMATIZACE V CASE  ////////////////////

DEFINE_CALL 'DEN_V_TYDNU_SWITCH'
{
	 CALL 'Akce_kazdy_den'
	 CALL 'Zaluzie_Display_Feedback'
	 //SV_Manual=0
	 IF (MANUALNI_OVLADANI = FALSE)		// PREPINANI Z DISPLEJE PRO TESTY JE VYPNUTE
		  {
		  IF (DEN_V_TYDNU<=5)
				{
				VIKEND = FALSE
				SEND_COMMAND dvMyTP_01,"'^UNI-203,0,0050005200410043004F0056004E00CD002000440045004E'"
				//CALL 'Pracovni_den_switch'
				}
		  ELSE
				{
				VIKEND = TRUE
				SEND_COMMAND dvMyTP_01,"'^UNI-203,0,005600CD004B0045004E0044'"
				//CALL 'Vikend_den_switch'
				}
		  }
	 ELSE		// PREPINANI Z DISPLEJE PRO TESTY ZAPNUTE
		  {
		  IF (MANUAL_VIKEND=FALSE)	/// ASI CASEM ZRUSIM
				{
				SEND_COMMAND dvMyTP_01,"'^UNI-203,0,004D002100200050005200410043004F0056004E00CD002000440045004E'"
				//CALL 'Pracovni_den_switch'
				}
		  ELSE
				{
				SEND_COMMAND dvMyTP_01,"'^UNI-203,0,004D00210020005600CD004B0045004E0044'"
				//CALL 'Vikend_den_switch'
				}
		  }
}

DEFINE_CALL 'Pracovni_den_switch'			/// PRO JEDNOTLIVE DNY - ZATIM NEPOUZITO A VOLAM ROVNOU AKCE
{
	(*
	 CALL 'Pracovni_den_akce'
	 SWITCH (DEN_V_TYDNU)			/// PRO DOVOLENA TRUE/ELSE ZATIM NENI NIC DEFINOVANO TOTO JE JENOM PRIPRAVA 
		  {
		  CASE 1:					/// PONDELI AKCE
				{
				IF (DOVOLENA = TRUE)	/// AKCE PRO DOVOLENOU V PONDELI
					 {
					 SWITCH (CAS_ZMENY)
						  {
						  CASE 1:											/// 5:00		pootevøené o 10%	
								{
								//CALL 'Zaluzie1_Nahoru_10'
								}
						  }
					 }
				}
		  CASE 2:					/// UTERY AKCE
				{
				IF (DOVOLENA = TRUE)	/// AKCE PRO DOVOLENOU V UTERY
					 {
					 SWITCH (CAS_ZMENY)
						  {
						  CASE 1:											/// 5:00		pootevøené o 10%	
								{
								//CALL 'Zaluzie1_Nahoru_10'
								}
						  }
					 }
				}
		  CASE 3:					/// STREDA AKCE
				{
				IF (DOVOLENA = TRUE)	/// AKCE PRO DOVOLENOU V STREDA
					 {
					 SWITCH (CAS_ZMENY)
						  {
						  CASE 1:											/// 5:00		pootevøené o 10%	
								{
								//CALL 'Zaluzie1_Nahoru_10'
								}
						  }
					 }
				}
		  CASE 4:					/// CTVRTEK AKCE
				{
				IF (DOVOLENA = TRUE)	/// AKCE PRO DOVOLENOU V CTVRTEK
					 {
					 SWITCH (CAS_ZMENY)
						  {
						  CASE 1:											/// 5:00		pootevøené o 10%	
								{
								//CALL 'Zaluzie1_Nahoru_10'
								}
						  }
					 }
				}
		  CASE 5:					/// PATEK AKCE
				{
				IF (DOVOLENA = TRUE)	/// AKCE PRO DOVOLENOU V PATEK
					 {
					 SWITCH (CAS_ZMENY)
						  {
						  CASE 1:											/// 5:00		pootevøené o 10%	
								{
								//CALL 'Zaluzie1_Nahoru_10'
								}
						  }
					 }
				}
		  }
		*)
}

DEFINE_CALL 'Vikend_den_switch'				/// ZATIM NEPOUZITO
{
////////// AKCE DOVOLENA //////////
(*
	 CALL 'Vikend_den_akce'
	 IF (DEN_V_TYDNU=6)		///SOBOTA AKCE
		  {
		  IF (DOVOLENA = TRUE)	/// AKCE PRO DOVOLENOU V PATEK
					 {
					 SWITCH (CAS_ZMENY)
						  {
						  CASE 1:											/// 5:00		pootevøené o 10%	
								{
								//CALL 'Zaluzie1_Nahoru_10'
								}
						  }
					 }
		  }
	 ELSE							///NEDELE AKCE
		  {
		  IF (DOVOLENA = TRUE)	/// AKCE PRO DOVOLENOU V PATEK
					 {
					 SWITCH (CAS_ZMENY)
						  {
						  CASE 1:											/// 5:00		pootevøené o 10%	
								{
								//CALL 'Zaluzie1_Nahoru_10'
								}
						  }
					 }
		  }
		  
*)
}
DEFINE_CALL 'Akce_kazdy_den'			// TYTO VECI BEZI KAZDY DEN BEZ OHLEDU NA STAV VIKEND/PRACE 
{
	 IF (LETO_ZIMA = TRUE)	/// SPOLECNE AKCE PRO ZIMNI CAS
		  {
				SWITCH (CAS_ZMENY)
					 {
					CASE 0:											/// 24:00 Vypnout sceny
					  {
					  CALL 'PULNOCNI_RGB_VYP'
					  nAktualneVybranyDen = DEN_V_TYDNU
					  EDITOVANY_DEN = DEN_V_TYDNU
					  ZOBRAZ_EDITOVANY_DEN_TEXT()
					  }
					CASE 1:											/// 0:00	 	
					  {
					  }
					CASE 5:											/// 6:00	 pootevøené o 10%	
					  {
					  //CALL 'Zaluzie1_Nahoru_10'
					  }
					CASE 6:											/// 6:15 pootevøené o 30%	
					  {
					  //CALL 'Zaluzie1_Nahoru_30'
					  }
					CASE 7:											/// 6:30		pootevøené o 30%
					  {
					  //CALL 'Zaluzie1_Nahoru_30'
					  }
					CASE 8:											/// 6:45		pootevøené o 30%
					  {
					  CALL 'POWER_OFF_0NP_ANG_DVORKY'
					  //CALL 'Zaluzie1_Nahoru_30'
					  }
					CASE 10:											/// 8:00 žaluzie vyjedou do kasliku
					  {
					  //CALL 'Zaluzie1_Nahoru'
					  }
					CASE 15:											/// 10:00 	Koupelna 2NP pootevøené o 10%
					  {
					  IF (ZAL_VYCHOD_STAV=0)
						{
						CALL 'Zaluzie2_Koupelna_Nahoru_10'
						}
					  }
					CASE 16:											/// 10:15	Koupelna 2NP pootevøené o 30%
					  {
					  IF (ZAL_VYCHOD_STAV=0)
						{
						CALL 'Zaluzie2_Koupelna_Nahoru_30'
						}
					  }
					CASE 17:											/// 10:30	Koupelna 2NP pootevøené o 30%
					  {
					  IF (ZAL_VYCHOD_STAV=0)
						{
						CALL 'Zaluzie2_Koupelna_Nahoru_30'
						}
					  }
					CASE 18:											/// 10:45	Koupelna 2NP otevøené na 100%
					  {
					  IF (ZAL_VYCHOD_STAV=0)
						{
						CALL 'Zaluzie2_Koupelna_Nahoru_30'
						WAIT 300
						CALL 'Zaluzie2_Koupelna_Nahoru'
						}
					  }
					CASE 19:											/// 11:00	Koupelna 2NP zajedou do kasliku
					  {
					  IF (ZAL_VYCHOD_STAV=0)
						{
						CALL 'Zaluzie2_Koupelna_Nahoru'
						}
					  }
					CASE 20:											/// 1
					  {
					  nAktualneVybranyDen = DEN_V_TYDNU
					  EDITOVANY_DEN = DEN_V_TYDNU
					  ZOBRAZ_EDITOVANY_DEN_TEXT()
					  }
					CASE 25:											/// 16:00 	Koupelna 2NP žaluzie sjedou dolu a otevøou se na 100% (90°)
					  {
					  CALL 'Zaluzie2_Koupelna_Dolu_100'
					  }
					CASE 26:											/// 16:15 	Koupelna 2NP pøivøou se o 30%
					  {
					  CALL 'Zaluzie2_Koupelna_Dolu_30'
					  }
					CASE 27:											/// 16:30 	Koupelna 2NP pøivøou se o 30%
					  {
					  CALL 'Zaluzie2_Koupelna_Dolu_30'
					  }
					CASE 28:											/// 16:45 	Koupelna 2NP žaluzie se zavrou
					  {
					  CALL 'ZL_2NP_KOUPELNA_DOLU'
					  WAIT 550
					  CALL 'ZL_2NP_KOUPELNA_STOP'
					  }
					CASE 29:										 	/// 17:00 žaluzie sjedou dolu a otevøou se na 100% (90°)  zima vikend 2np
						 {
						 //CALL 'Zaluzie1_Dolu_100'
						 //WAIT 60
						 //CALL 'Zaluzie2_Dolu_100'
						 }
					CASE 30:											/// 17:15 pøivøou se o 30% zima vikend 2np
						 {
						 //CALL 'Zaluzie1_Dolu_30'
						 //WAIT 80
						 //CALL 'Zaluzie2_Dolu_30'
						 }
					CASE 31:											/// 17:30 pøivøou se o dalších 30% zima vikend 2np
						 {
						 //CALL 'Zaluzie1_Dolu_30'
						 //WAIT 80
						 //CALL 'Zaluzie2_Dolu_30'
						 }
					CASE 32:											/// 17:45 žaluzie se zavøou zima vikend 2np
						 {
						 //CALL 'Zaluzie1_Dolu_30'
						 //WAIT 80
						 //CALL 'Zaluzie2_Dolu_30'
						 }
					CASE 39:											/// 23:00 schodiste vypnout
					  {
					  //CALL 'Zaluzie1_Dolu_100'
					  }
					 }
		  IF (DOVOLENA = FALSE)									/// AKCE MIMO DOVOLENOU ZIMA
				{
				}
		  ELSE														// AKCE PRO DOVOLENOU ZIMA
				{
				(*
				SWITCH (CAS_ZMENY)		
						  {
						  CASE 15:											/// 10:00 	
								{
								WAIT 60
									 {
									 CALL 'Zaluzie_Vychod_Dolu100'
									 }
								}
						   CASE 17:											/// 10:30 	Dovolena žaluzie simulace
								{
								WAIT 60
									 {
									 CALL 'Zaluzie_Vychod_Dolu'
										  WAIT 12
										  {
										  CALL 'Zaluzie_Vychod_Stop'
										  }
									 }
								}
						  CASE 19:											/// 11:00 	Dovolena žaluzie simulace
								{
								WAIT 60
									 {
									 CALL 'Zaluzie_Vychod_Dolu'
										  WAIT 12
										  {
										  CALL 'Zaluzie_Vychod_Stop'
										  WAIT 30
												{
												CALL 'Zaluzie_Jih_Dolu100'
												WAIT 30
													 {
													 CALL 'Zaluzie_Sever_Dolu100'
													 }
												}
										  }
									 }
								}
						  CASE 20:											/// 12:00 	Dovolena žaluzie simulace
								{
								CALL 'Zaluzie_Vychod_Nahoru'
								WAIT 30
									 {
									 CALL 'Zaluzie_Jih_Dolu'
									 WAIT 15
										  {
										  CALL 'Zaluzie_Jih_Stop'
										  WAIT 30
												{
												CALL 'Zaluzie_Sever_Dolu'
												WAIT 15
													 {
													 CALL 'Zaluzie_Sever_Stop'
													 WAIT 660
														  {
														  CALL 'Zaluzie_Vychod_Stop'
														  }
													 }
												}
										  }
									 }
								}
						  CASE 21:											/// 13:00 	Dovolena žaluzie simulace
								{
								CALL 'Zaluzie_Jih_Dolu'
								WAIT 15
									 {
									 CALL 'Zaluzie_Jih_Stop'
									 WAIT 30
										  {
										  CALL 'Zaluzie_Sever_Dolu'
										  WAIT 15
												{
												CALL 'Zaluzie_Sever_Stop'
												}
										  }
									 }
								}
						  CASE 22:											/// 14:00 	Dovolena žaluzie simulace
								{
								CALL 'Zaluzie_Sever_Nahoru'
								WAIT 30
									 {
									 CALL 'Zaluzie_Jih_Nahoru'
									 WAIT 720
										  {
										  CALL 'Zaluzie_Sever_Stop'
										  WAIT 30
												{
												CALL 'Zaluzie_Jih_Stop'
												}
										  }
									 }
								}
						  CASE 23:											/// 15:00 	Dovolena žaluzie simulace
								{
								CALL 'Zaluzie_Sever_Dolu100'
								WAIT 30
									 {
									 CALL 'Zaluzie_Jih_Dolu100'
									 WAIT 30
										  {
										  CALL 'Zaluzie_Vychod_Dolu100'
										  }
									 }
								}
						  CASE 24:											/// 15:15  
								{
								CALL 'Zaluzie_Sever_Dolu'
								WAIT 5
									 {
									 CALL 'Zaluzie_Jih_Dolu'
									 WAIT 5
										  {
										  CALL 'Zaluzie_Vychod_Dolu'
										  WAIT 5
												{
												CALL 'Zaluzie_Sever_Stop'
												WAIT 5
													 {
													 CALL 'Zaluzie_Jih_Stop'
													 WAIT 5
														  {
														  CALL 'Zaluzie_Vychod_Stop'
														  }
													 }
												}
										  }
									 }
								}
						  CASE 25:											/// 16:00 
								{
								CALL 'Zaluzie_Sever_Nahoru'
								WAIT 30
									 {
									 CALL 'Zaluzie_Jih_Nahoru'
									 WAIT 30
										  {
										  CALL 'Zaluzie_Vychod_Nahoru'
										  WAIT 690
												{
												CALL 'Zaluzie_Sever_Stop'
												WAIT 30
													 {
													 CALL 'Zaluzie_Jih_Stop'
													 WAIT 30
														  {
														  CALL 'Zaluzie_Vychod_Stop'
														  }
													 }
												}
										  }
									 }
								}
						  }
					*)
				}
		  }
	 ELSE				// SPOLECNE AKCE PRO LETNI CAS
		  {
		  
				SWITCH (CAS_ZMENY)
					 {
					CASE 0:											/// 24:00 Vypnout sceny
						  {
						  CALL 'PULNOCNI_RGB_VYP'
						  }
					 CASE 1:											/// 5:00		pootevøené o 10%	
						  {
						  //CALL 'Zaluzie1_Nahoru_10'
						  }
					 CASE 2:											/// 5:15		pootevøené o 30%
						  {
						  //CALL 'Zaluzie1_Nahoru_30'
						  }
					 CASE 3:											/// 5:30		pootevøené o 30%
						  {
						  //CALL 'Zaluzie1_Nahoru_30'
						  }
					 CASE 4:											/// 5:45		otevøené na 100%
						  {
						  CALL 'POWER_OFF_0NP_ANG_DVORKY'
						  //CALL 'Zaluzie1_Nahoru_30'
						  }
					 CASE 9:											/// 7:00		žaluzie vyjedou do kasliku
						  {
						  //CALL 'Zaluzie1_Nahoru'
						  }
					 CASE 15:											/// 10:00 	Koupelna 2NP pootevøené o 10%
						  {
						  CALL 'Zaluzie2_Koupelna_Nahoru_10'
						  }
					 CASE 16:											/// 10:15	Koupelna 2NP pootevøené o 30%
						  {
						  CALL 'Zaluzie2_Koupelna_Nahoru_30'
						  }
					 CASE 17:											/// 10:30	Koupelna 2NP pootevøené o 30%
						  {
						  CALL 'Zaluzie2_Koupelna_Nahoru_30'
						  }
					 CASE 18:											/// 10:45	Koupelna 2NP otevøené na 100%
						  {
						  CALL 'Zaluzie2_Koupelna_Nahoru_30'
						  }
					 CASE 19:											/// 11:00	Koupelna 2NP zajedou do kasliku
						  {
						  CALL 'Zaluzie2_Koupelna_Nahoru'
						  }
					 CASE 25:											/// 16:00 	Koupelna 2NP žaluzie sjedou dolu a otevøou se na 100% (90°)
						  {
						  CALL 'Zaluzie2_Koupelna_Dolu_100'
						  }
					 CASE 26:											/// 16:15 	Koupelna 2NP pøivøou se o 30%
						  {
						  CALL 'Zaluzie2_Koupelna_Dolu_30'
						  }
					 CASE 27:											/// 16:30 	Koupelna 2NP pøivøou se o 30%
						  {
						  CALL 'Zaluzie2_Koupelna_Dolu_30'
						  }
					 CASE 28:											/// 16:45 	Koupelna 2NP žaluzie se zavrou
						  {
						  CALL 'Zaluzie2_Koupelna_Dolu_30'
						  }
					 CASE 34:											/// 19:45 žaluzie sjedou dolu a otevøou se na 100% (90°)
						  {
						  //CALL 'Zaluzie1_Dolu_100'
						  //WAIT 60
						  //CALL 'Zaluzie2_Dolu_100'
						  }
					 CASE 35:											/// 20:15 pøivøou se o 30%
						  {
						  //CALL 'Zaluzie1_Dolu_30'
						  //WAIT 80
						  //CALL 'Zaluzie2_Dolu_30'
						  }
					 CASE 36:											/// 20:45 pøivøou se o dalších 30%
						  {
						  //CALL 'Zaluzie1_Dolu_30'
						  //WAIT 80
						  //CALL 'Zaluzie2_Dolu_30'
						  }
					 CASE 37:											/// 21:00 žaluzie se zavøou 
						  {
						  //CALL 'Zaluzie1_Dolu_30'
						  //WAIT 80
						  //CALL 'Zaluzie2_Dolu_30'
						  }
					 CASE 40:											/// 24:00 schodiste vypnout
						  {
						  // CALL 'Zaluzie2_Dolu_100'
						  }
					 }
		  IF (DOVOLENA = FALSE)					/// AKCE MIMO DOVOLENOU LETO
				{
				}
		  ELSE										// AKCE PRO DOVOLENOU LETO - NEPOUZITO
				{
				(*
					 SWITCH (CAS_ZMENY)		
						  {
						  CASE 15:											/// 10:00 	
								{
								WAIT 60
									 {
									 CALL 'Zaluzie_Vychod_Dolu100'
									 }
								}
						   CASE 17:											/// 10:30 	Dovolena žaluzie simulace
								{
								WAIT 60
									 {
									 CALL 'Zaluzie_Vychod_Dolu'
										  WAIT 12
										  {
										  CALL 'Zaluzie_Vychod_Stop'
										  }
									 }
								}
						  CASE 19:											/// 11:00 	Dovolena žaluzie simulace
								{
								WAIT 60
									 {
									 CALL 'Zaluzie_Vychod_Dolu'
										  WAIT 12
										  {
										  CALL 'Zaluzie_Vychod_Stop'
										  WAIT 30
												{
												CALL 'Zaluzie_Jih_Dolu100'
												WAIT 30
													 {
													 CALL 'Zaluzie_Sever_Dolu100'
													 }
												}
										  }
									 }
								}
						  CASE 20:											/// 12:00 	Dovolena žaluzie simulace
								{
								CALL 'Zaluzie_Vychod_Nahoru'
								WAIT 30
									 {
									 CALL 'Zaluzie_Jih_Dolu'
									 WAIT 15
										  {
										  CALL 'Zaluzie_Jih_Stop'
										  WAIT 30
												{
												CALL 'Zaluzie_Sever_Dolu'
												WAIT 15
													 {
													 CALL 'Zaluzie_Sever_Stop'
													 WAIT 660
														  {
														  CALL 'Zaluzie_Vychod_Stop'
														  }
													 }
												}
										  }
									 }
								}
						  CASE 21:											/// 13:00 	Dovolena žaluzie simulace
								{
								CALL 'Zaluzie_Jih_Dolu'
								WAIT 15
									 {
									 CALL 'Zaluzie_Jih_Stop'
									 WAIT 30
										  {
										  CALL 'Zaluzie_Sever_Dolu'
										  WAIT 15
												{
												CALL 'Zaluzie_Sever_Stop'
												}
										  }
									 }
								}
						  CASE 22:											/// 14:00 	Dovolena žaluzie simulace
								{
								CALL 'Zaluzie_Sever_Nahoru'
								WAIT 30
									 {
									 CALL 'Zaluzie_Jih_Nahoru'
									 WAIT 720
										  {
										  CALL 'Zaluzie_Sever_Stop'
										  WAIT 30
												{
												CALL 'Zaluzie_Jih_Stop'
												}
										  }
									 }
								}
						  CASE 23:											/// 15:00 	Dovolena žaluzie simulace
								{
								CALL 'Zaluzie_Sever_Dolu100'
								WAIT 30
									 {
									 CALL 'Zaluzie_Jih_Dolu100'
									 WAIT 30
										  {
										  CALL 'Zaluzie_Vychod_Dolu100'
										  }
									 }
								}
						  CASE 24:											/// 15:15  
								{
								CALL 'Zaluzie_Sever_Dolu'
								WAIT 5
									 {
									 CALL 'Zaluzie_Jih_Dolu'
									 WAIT 5
										  {
										  CALL 'Zaluzie_Vychod_Dolu'
										  WAIT 5
												{
												CALL 'Zaluzie_Sever_Stop'
												WAIT 5
													 {
													 CALL 'Zaluzie_Jih_Stop'
													 WAIT 5
														  {
														  CALL 'Zaluzie_Vychod_Stop'
														  }
													 }
												}
										  }
									 }
								}
						  CASE 25:											/// 16:00 
								{
								CALL 'Zaluzie_Sever_Nahoru'
								WAIT 30
									 {
									 CALL 'Zaluzie_Jih_Nahoru'
									 WAIT 30
										  {
										  CALL 'Zaluzie_Vychod_Nahoru'
										  WAIT 690
												{
												CALL 'Zaluzie_Sever_Stop'
												WAIT 30
													 {
													 CALL 'Zaluzie_Jih_Stop'
													 WAIT 30
														  {
														  CALL 'Zaluzie_Vychod_Stop'
														  }
													 }
												}
										  }
									 }
								}
						  }
					*)
				}
		  }
}
				
				
				
				
				
DEFINE_CALL 'Pracovni_den_akce'		// SPECIFICKE AKCE PRO PRACOVNI DNY - PREVEDENO NA CIDLO A ZATIM NEVYUZIVAM
{
(*
	 IF (LETO_ZIMA = TRUE)	/// AKCE PRO ZIMNI CAS PRACE
		  {
		  IF (DOVOLENA = TRUE)	/// AKCE PRI DOVOLENE ZIMA PRACE
				{
				SWITCH (CAS_ZMENY)	
					 {
					 CASE 5:										
						  {
						  // SPECIALNI AKCE VSEDNI DEN PRI DOVOLENE
						  }
					 }
				}
		  ELSE		/// AKCE PRO ZIMNI CAS PRACE NORMAL
				{
				SWITCH (CAS_ZMENY)		
					 {
					  CASE 5:											/// 6:00	 pootevøené o 10%	
						  {
						  //WAIT 60
						  //CALL 'Zaluzie2_Nahoru_10'
						  }
					 CASE 6:											/// 6:15 pootevøené o 30%	
						  {
						  //WAIT 80
						  //CALL 'Zaluzie2_Nahoru_30'
						  }
					 CASE 7:											/// 6:30		pootevøené o 30%
						  {
						  //WAIT 80
						  //CALL 'Zaluzie2_Nahoru_30'
						  }
					 CASE 8:											/// 6:45		pootevøené o 30%
						  {
						  //WAIT 80
						  //CALL 'Zaluzie2_Nahoru_30'
						  }
					 CASE 10:											/// 8:00 žaluzie vyjedou do kasliku
						  {
						  //WAIT 60
						  //CALL 'Zaluzie2_Nahoru_100'
						  }
					 }
				}
		  }
	 ELSE			/// AKCE PRO LETNI CAS PRACE
		  {
		  IF (DOVOLENA = TRUE)	/// AKCE PRI DOVOLENE LETO PRACE
				{
				SWITCH (CAS_ZMENY)
					 {
					 CASE 5:										
						  {
						  // SPECIALNI AKCE VSEDNI DEN PRI DOVOLENE
						  }
					 }
				}
		  ELSE	/// AKCE PRO LETNI CAS PRACE NORMAL
				{
				SWITCH (CAS_ZMENY)
					 {
					 CASE 1:											/// 5:00		pootevøené o 10%	
						  {
						  //WAIT 60
						  //CALL 'Zaluzie2_Nahoru_10'
						  }
					 CASE 2:											/// 5:15		pootevøené o 30%
						  {
						  //WAIT 80
						  //CALL 'Zaluzie2_Nahoru_30'
						  }
					 CASE 3:											/// 5:30		pootevøené o 30%
						  {
						  //WAIT 80
						  //CALL 'Zaluzie2_Nahoru_30'
						  }
					 CASE 4:											/// 5:45		otevøené na 100%
						  {
						  //WAIT 80
						  //CALL 'Zaluzie2_Nahoru_30'
						  }
					 CASE 9:											/// 7:00		žaluzie vyjedou do kasliku
						  {
						  //WAIT 60
						  //CALL 'Zaluzie2_Nahoru_100'
						  }
					 }
				}
		  }
	*)
}

DEFINE_CALL 'Vikend_den_akce'			// AKCE PRO VIKENDY - POUZE 2NP JEDE NA CAS, ZBYTEK PRES CIDLO
	 {											// ZALUZIE V 2NP ZATIM JEZDI STEJNE V LETE I ZIME ALE POCITAM SE ZMENOU
	 IF (LETO_ZIMA = TRUE)				// AKCE PRO ZIMNI CAS
		   {
		  IF (DOVOLENA = TRUE)			// AKCE PRI DOVOLENE ZIMA VIKEND - NEPOUZITO
				{
				(*
				SWITCH (CAS_ZMENY)		// 
					 {
					 CASE 20:											/// 12:00 	Dovolena žaluzie simulace
						  {
						  // CALL 'Zaluzie1_Nahoru_10'
						  }
					 }
				*)
				}
		  ELSE
				{
				SWITCH (CAS_ZMENY)		// 2NP PODLE CASU, 1NP CIDLO
					 {
					 CASE 11:											/// 9:00 pootevøené o 10%  LETO + zima vikend 2np
							 {
							 CALL 'Zaluzie2_Nahoru_10'
							 }
					 CASE 12:											/// 9:15 pootevøené o dalších 30% leto+zima vikend 2np
							 {
							 CALL 'Zaluzie2_Nahoru_30'
							 }
					 CASE 13:											/// 9:30 pootevøené o dalších 30% leto+zima vikend 2np
							 {
							 CALL 'Zaluzie2_Nahoru_30'
							 }
					 CASE 14:											/// 9:45 otevøené žaluzie na 100% (90°) leto+zima vikend 2np
							 {
							 CALL 'Zaluzie2_Nahoru_30'
							 }
					 CASE 15:											/// 10:00 žaluzie vyjedou do kasliku  leto+zima vikend 2np
							 {
							 WAIT 60
							 CALL 'Zaluzie2_Nahoru_100'
							 }
					 }
				}
		  }
	 ELSE								/// AKCE PRO LETNI CAS VIKEND
		  {
		  IF (DOVOLENA = TRUE)	/// AKCE PRI DOVOLENE LETNI CAS VIKEND
				{
				(*
				SWITCH (CAS_ZMENY)		// 
					 {
					 CASE 20:											/// 12:00 	Dovolena žaluzie simulace
						  {
						  // CALL 'Zaluzie1_Nahoru_10'
						  }
					 }
				*)
				}
		  ELSE							/// AKCE PRO LETNI CAS VIKEND 2NP PODLE CASU, 1NP CIDLO
				{
				SWITCH (CAS_ZMENY)		
					 {
					 CASE 11:											/// 9:00 pootevøené o 10%  LETO + zima vikend 2np
							 {
							 CALL 'Zaluzie2_Nahoru_10'
							 }
					 CASE 12:											/// 9:15 pootevøené o dalších 30% leto+zima vikend 2np
							 {
							 CALL 'Zaluzie2_Nahoru_30'
							 }
					 CASE 13:											/// 9:30 pootevøené o dalších 30% leto+zima vikend 2np
							 {
							 CALL 'Zaluzie2_Nahoru_30'
							 }
					 CASE 14:											/// 9:45 otevøené žaluzie na 100% (90°) leto+zima vikend 2np
							 {
							 CALL 'Zaluzie2_Nahoru_30'
							 }
					 CASE 15:											/// 10:00 žaluzie vyjedou do kasliku  leto+zima vikend 2np
							 {
							 WAIT 60
							 CALL 'Zaluzie2_Nahoru_100'
							 }
					 }
				}
		  }
}

//////////////////   ZALUZIE  ////////////////////
///////////////////////////		Macra zaluzie 1NP		////////////////////////////
DEFINE_CALL 'PULNOCNI_RGB_VYP'					
	 {
	 IF (TIMELINE_ACTIVE(TL_SRDCE_TEP))TIMELINE_KILL(TL_SRDCE_TEP)
	 WAIT 2
	 CALL 'RGB_2NP_DETI_TIMER_STOP'
	 WAIT 5
	 CALL 'POWER_OFF_0NP_RELAX_SVETLIK'
	 WAIT 10
	 CALL 'SEKVENCE_2NP_VRETENO_STOP'
	 WAIT 15
	 CALL 'SEKVENCE_2NP_HALA_STOP'
	 WAIT 20
	 CALL 'SEKVENCE_2NP_LOZNICE_STOP'
	 WAIT 25
	 CALL 'SEKVENCE_2NP_LOZ_ANGEL_STOP'
	 WAIT 30
	 CALL 'SEKVENCE_2NP_KOUPELNA_STOP'
	 WAIT 35
	 CALL 'SEKVENCE_1NP_OBYVAK_STOP'
	 WAIT 40
	 CALL 'SEKVENCE_1NP_KRB_VLEVO_STOP'
	 WAIT 45
	 CALL 'SEKVENCE_1NP_KRB_VSTREDU_STOP'
	 WAIT 50
	 CALL 'SEKVENCE_1NP_KRB_VPRAVO_STOP'
	 WAIT 55
	 CALL 'POWER_OFF_0NP_ANG_DVORKY'
	  WAIT 60
	 CALL 'ZAHRADA_PULNOCNI_VYPNUTI'() // Volání funkce ze Zahrady
	 WAIT 70
	 CALL 'POWER_OFF_2NP_DET_POKOJ'
	 }	 

DEFINE_CALL 'START_COUNTER_ODCHOD'  (CHAR cCAS, CHAR cCHANNEL)
{
    IF (!TIMELINE_ACTIVE(TLCOUNTER_ODCHOD)) // JEN PRO JISTOTU
	   {	
	   ON[dvMyTP_01,1482] // ZOBRAZIME POCITADLO
	   TIMELINE_CREATE(TLCOUNTER_ODCHOD,TIME_COUNTER_ODCHOD,LENGTH_ARRAY(TIME_COUNTER_ODCHOD),TIMELINE_ABSOLUTE, TIMELINE_REPEAT)
	   TLCOUNTER_ODCHOD_LONG = cCAS
	   TLCOUNTER_ODCHOD_CH = cCHANNEL
	   SEND_COMMAND dvMyTP_01,"'^TXT-',ITOA(TLCOUNTER_ODCHOD_CH),',0,',ITOA(TLCOUNTER_ODCHOD_LONG),'s'"
	   }
}
DEFINE_CALL 'KONEC_COUNTER_ODCHOD'
{
	IF (TIMELINE_ACTIVE(TLCOUNTER_ODCHOD))
	{
	  TIMELINE_KILL(TLCOUNTER_ODCHOD)
		OFF[dvMyTP_01,1480] // VRATIME TLACITKO REZIM ODCHOD DO OFF STAVU
		OFF[dvMyTP_01,1482] // SKRYJEME POCITADLO
	}
}
DEFINE_CALL 'ALL_SVETLA_OFF'
{
    //CALL 'PULNOCNI_RGB_VYP'
    //WAIT 35
    //CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_CHODBA_01) 
    //CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_CHODBA_05) 
    //CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_CHODBA_10)
    //WAIT 250
    //CALL 'SEKVENCE_2NP_HALA_SVETLA_ZHASNOUT'
    //WAIT 300
    //CALL 'SEKVENCE_2NP_DETI_SVETLA_ZHASNOUT'
    //WAIT 410
    //CALL 'SEKVENCE_2NP_KOUPELNA_SVETLA_ZHASNOUT'
    //WAIT 520
    //CALL 'ILIGHT_CHANNEL_OFF' ( SV_1NP_ZZAHRAD_01)
    //CALL 'ILIGHT_CHANNEL_OFF' ( SV_1NP_ZZAHRAD_02)
    //CALL 'ILIGHT_CHANNEL_OFF' ( SV_1NP_ZZAHRAD_03)
    //WAIT 635
    //CALL 'POWER_OFF_0NP_RELAX_ALL'
    //WAIT 750
    // DO_PUSH(dvTP1,2330) svetla obyvak budu muset jinak
    // CALL 'ILIGHT_CHANNEL_OFF' (SP_HAVAR_VARNA_DESKA)    // OFF ZAPINA 
    // CALL 'ILIGHT_CHANNEL_OFF' (SP_HAVAR_SAUNA_RELAX)    // OFF ZAPINA
    // CALL 'ILIGHT_CHANNEL_OFF' (SP_HAVAR_VIRIVKA_RELAX)  // OFF ZAPINA
    // CALL 'ILIGHT_CHANNEL_OFF' (SP_HAVAR_TEPEL_CERPADLO) // OFF ZAPINA
    // CALL 'ILIGHT_CHANNEL_OFF' (SP_HAVAR_TRAFA_SVETLA)   // OFF ZAPINA
    // CALL 'ILIGHT_CHANNEL_OFF' (SP_HAVAR_NABIJ_AUTO)     // OFF ZAPINA
    //WAIT 880
    // DO_PUSH(dvTP1,979) svetla kuchyn  budu muset jinak
    //WAIT 920
    //CALL 'SCHODY_SWITCH'
    WAIT 3900
    CALL 'VYPINACE_RESTART'
    VYP_SVET=1
}
DEFINE_CALL 'FANCOIL_AUTOMAT'  // SIMULACE STISKNUTI TLACITKA NA PANELU - poustim po zakodovani
{
DO_PUSH(dvTP1,2145)	// Loznice fan automat
WAIT 10
DO_PUSH(dvTP1,2125)	// Obyvak fan automat	
WAIT 20
DO_PUSH(dvTP1,2265)	// Zimni zahrada automat 
}

DEFINE_CALL 'AKCE_PRO_ZAKODOVANO'
{
	ON [dvMyTP_01,1152]
	ON [dvRelays,1]
	IF (VYPNUTO=FALSE)
		{
		//CALL 'ALL_SVETLA_OFF'
		WAIT 50
		CALL 'Obyvak_OFF'
		WAIT 150
		CALL 'PULNOCNI_RGB_VYP'
		VYPNUTO=TRUE
		WAIT 480
		CALL 'FANCOIL_AUTOMAT'
		//WAIT 300
		//CALL 'PO_PULNOCI_VYP'
		WAIT 990
		CALL 'VYPINACE_RESTART'
		}
}
DEFINE_CALL 'AKCE_PRO_ODKODOVANO'
{
	OFF [dvMyTP_01,1152]
	OFF [dvRelays,1]
	IF (VYPNUTO=TRUE)
		{
		DO_PUSH(dvTP1,2138)	// Pridam minutu na nastaveni provetrani obyvak
		wait 10
		DO_PUSH(dvTP1,2129)	// Simuluju zmacknuti provetrani
		VYPNUTO=FALSE
		// CALL 'ILIGHT_CHANNEL_ON' (VYP_KUCH_SUPLIK)	/// Pouze pokud bude zlobit 
		WAIT 50
			{
			DO_PUSH(dvTP1,2137)	// Uberu minutu na nastaveni provetrani obyvak
			}
		}
}

DEFINE_CALL 'SCHODY_SWITCH'  		//BARVY NA SCHODECH PODLE DNE V TYDNU PRES TABLET - AUTOMAT JE V ILIGTU
{
	IF (DEN_NOC=1)		// JE SVETLO pustím pouze bile osvetleni pres cidlo
		{
		CALL 'ILIGHT_SEQ_START' (SEQ_CIDLO_SCHODY,52)
		}
	ELSE
		{
		IF (DEN_V_TYDNU<8)	// AKCE PRO SETMENI
			{
			SWITCH(DEN_V_TYDNU)
				{
				CASE    0: {SEND_STRING 0,'DEN NEURCEN'}
				CASE    1: {CALL 'ILIGHT_SEQ_START' (SEQ_CIDLO_SCHODY,06); SEND_STRING 0,'PONDELI'}
				CASE    2: {CALL 'ILIGHT_SEQ_START' (SEQ_CIDLO_SCHODY,13); SEND_STRING 0,'UTERY'}
				CASE    3: {CALL 'ILIGHT_SEQ_START' (SEQ_CIDLO_SCHODY,20); SEND_STRING 0,'STREDA'}
				CASE    4: {CALL 'ILIGHT_SEQ_START' (SEQ_CIDLO_SCHODY,27); SEND_STRING 0,'CTVRTEK'}
				CASE    5: {CALL 'ILIGHT_SEQ_START' (SEQ_CIDLO_SCHODY,34); SEND_STRING 0,'PATEK'}
				CASE    6: {CALL 'ILIGHT_SEQ_START' (SEQ_CIDLO_SCHODY,41); SEND_STRING 0,'SOBOTA'} 
				CASE    7: {CALL 'ILIGHT_SEQ_START' (SEQ_CIDLO_SCHODY,48); SEND_STRING 0,'NEDELE'}
				}
			}
		ELSE
			{
			SEND_STRING 0,'NESMYSLNY DEN'
			}
		}
}

DEFINE_CALL 'VECER_ZAPNI'  /// RUZNE BARVY PODLE DNE V TYDNU Zatim pouze angl. dvorky!
{	
	//STACK_VAR CHAR SC[2]
	//SC[1] = ILT_2NP_DETI_AREA
	//SC[2] = 0	
		IF (DEN_V_TYDNU<8)	// AKCE PRO SETMENI
			{
			SWITCH(DEN_V_TYDNU)
				{
				CASE    0: {SEND_STRING 0,'DEN NEURCEN'}
				CASE    1: {CALL 'ILIGHT_SCENA2' (1,31,1); SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','PONDELI'"}
				CASE    2: {CALL 'ILIGHT_SCENA2' (2,31,1); SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','UTERY'"}
				CASE    3: {CALL 'ILIGHT_SCENA2' (3,31,1); SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','STREDA'"}
				CASE    4: {CALL 'ILIGHT_SCENA2' (4,31,1); SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','CTVRTEK'"}
				CASE    5: {CALL 'ILIGHT_SCENA2' (5,31,1); SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','PATEK'"}
				CASE    6: {CALL 'ILIGHT_SCENA2' (6,31,1); SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','SOBOTA'"}
				CASE    7: {CALL 'ILIGHT_SCENA2' (7,31,1); SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','NEDELE'"}
				}
			}
		ELSE
			{
			SEND_STRING 0,'NESMYSLNY DEN'
			}
		///CALL 'ILIGHT_SCENA_REQUEST' (ILT_2NP_DETI_AREA)
		
}
DEFINE_CALL 'ZAVRI_VODU'
{
    // VODA_VENTIL_MANUAL = 1 toto je nutne osetrit jinde
    OFF [dvRelays,3]
    OFF [dvRelays,4]
    OFF [dvMyTP_02,301]
    ON [dvMyTP_02,300]
    WAIT 10 
    VODA_VENTIL_RELAX = 1  // 1 ZAVREN
    ON [dvRelays,3]
    WAIT 990
    OFF [dvRelays,3]
    ON [dvMyTP_03,35]
}

DEFINE_CALL 'OTEVRI_VODU'
{
    // VODA_VENTIL_MANUAL = 1 toto je nutne osetrit jinde
    
    OFF [dvRelays,3]
    OFF [dvRelays,4]
    OFF [dvMyTP_02,300]
    ON [dvMyTP_02,301]
    WAIT 10
    VODA_VENTIL_RELAX = 0  // 0 Otevren
    ON [dvRelays,4]
    WAIT 990        // cas pro otevreni ventilu
    OFF [dvRelays,4]
}


(*
DEFINE_CALL 'RECALIBRACE_SCENY' 
{
	STACK_VAR CHAR SC[2]
	STACK_VAR CHAR SV_ARR[2]
	SC[1] = ILT_1NP_OBYVAK2_AREA
	SC[2] = 38
	SV_ARR = SV_2NP_VRETENO_01
	CALL 'ILIGHT_SCENA' (SC,1)
	CALL 'ILIGHT_CHANNEL_VALUE' (SV_ARR,17,0) 
	CALL 'ILIGHT_SAVE_SCENE' (SC)
}
*)

/////////////////////////////////////////////////////////////////////

//////////////////   AV SEKCE  ////////////////////
DEFINE_CALL 'Obyvak_Video_Start' //////   AV SEKCE
{
    IF ((TV_Obyvak_Power=TRUE))
	   {
	   IF ((sleduji_obyvak <> vstup_obyvak))
		  {
		  CALL 'Obyvak_Switch'
		  }
	   ELSE
		  {
		  CALL 'Obyvak_Ukaz_Stranku'
		  }
	   }
    ELSE
	   {
	   //SEND_COMMAND dvMyTP_01,"'^TXT-20,0, TV nabíhá'"
	   SEND_COMMAND dvMyTP_01,"'^UNI-20,0,005400560020006E0061006200ED006800E1'"
	   CALL 'TV_OBYVAK_ON'
	   CALL 'AMP_OBYVAK_ON'
	   WAIT 90 'TV_OBYVAK_Start'
		  {
		  CALL 'Obyvak_Switch'
		  }
	   }
}

DEFINE_CALL 'Obyvak_Audio_Start'
{
    IF ((AMP_Obyvak_Power=TRUE))
	   {
	   IF ((sleduji_obyvak <> vstup_obyvak))
		  {
		  CALL 'Obyvak_Switch'
		  }
	   ELSE
		  {
		  CALL 'Obyvak_Ukaz_Stranku'
		  }
	   }
    ELSE
	   {
	   SEND_COMMAND dvMyTP_01,"'^UNI-20,0,005A006500730069006C006F00760061010D0020006E0061006200ED006800E1'"
	   CALL 'AMP_OBYVAK_ON'
	   WAIT 100 'AMP_OBYVAK_Start'
		  {
		  CALL 'Obyvak_Switch'
		  }
	   }
    IF ((TV_Obyvak_Power=TRUE))
	   {
	   //CALL 'TV_OBYVAK_OFF'
	   }
    
}

DEFINE_CALL 'TV_OBYVAK_ON'
{
set_pulse_time(10)
PULSE [dvTV_Obyvak,7]
set_pulse_time(5)
WAIT 30
PULSE [dvTV_Obyvak,7]
TV_Obyvak_Power=TRUE
}
DEFINE_CALL 'TV_OBYVAK_OFF'
{
PULSE [dvTV_Obyvak,8]
WAIT 30
PULSE [dvTV_Obyvak,8]
TV_Obyvak_Power=FALSE
}
DEFINE_CALL 'AMP_OBYVAK_ON'
{
PULSE [dvAMP,27]
WAIT 30
PULSE [dvAMP,27]
AMP_Obyvak_Power=TRUE
}
DEFINE_CALL 'AMP_OBYVAK_OFF'
{
PULSE [dvAMP,28]
WAIT 30
PULSE [dvAMP,28]
AMP_Obyvak_Power=FALSE
}
DEFINE_CALL 'Obyvak_Switch'
{
    TP_ID = GET_LAST(dvMyTP_01)
    //SEND_COMMAND dvMyTP_01,"'^TXT-20,0, Systém pøepíná'"
    SEND_COMMAND dvMyTP_01,"'^UNI-20,0,005300790073007400E9006D0020007001590065007000ED006E00E1'"

    IF ((sleduji_obyvak=oTVobyvak))
	   {
	   PULSE [dvAMP,18]
	   PULSE [dvTV_Obyvak,39] ///HDMI-1
  	   CALL 'Obyvak_Ukaz_Stranku'
	   hlasitost_AMP=0
	   vstup_obyvak=sleduji_obyvak
	   WAIT 30
	   PULSE [dvTV_Obyvak,118] ///TV nebo 118 Prepina TV/Radio
	   
	   //PULSE [dvAMP,64]
	   }
    IF ((sleduji_obyvak=oZidoo))
	  {
		PULSE [dvAMP,21]
		CALL 'ZIDOO_ON'
		PULSE [dvTV_Obyvak,41] ///HDMI-3
		CALL 'Obyvak_Ukaz_Stranku'
		hlasitost_AMP=1
		vstup_obyvak=sleduji_obyvak
		
		//WAIT 30
		//PULSE [dvAMP,61]
	  }
    IF ((sleduji_obyvak=oBD_obyvak))
	  {
		PULSE [dvAMP,19]
		PULSE [dvTV_Obyvak,41] ///HDMI-3
		PULSE [dvDVD,1]
		CALL 'Obyvak_Ukaz_Stranku'
		hlasitost_AMP=1
		vstup_obyvak=sleduji_obyvak
		
		//WAIT 30
		//PULSE [dvAMP,60]
	  }
	IF ((sleduji_obyvak=oVideo))
	  {
		PULSE [dvAMP,17]
		PULSE [dvTV_Obyvak,41] ///HDMI-3
		CALL 'Obyvak_Ukaz_Stranku'
		hlasitost_AMP=1
		vstup_obyvak=sleduji_obyvak
		
		//WAIT 30
		//PULSE [dvAMP,60]
	  }
	IF ((sleduji_obyvak=oAndroid_TV))
	   {
	   PULSE [dvAMP,18]
	   PULSE [dvTV_Obyvak,40] ///HDMI-2
  	   CALL 'Obyvak_Ukaz_Stranku'
	   hlasitost_AMP=0
	   vstup_obyvak=sleduji_obyvak
	   
	   //WAIT 30
	   //PULSE [dvTV_Obyvak,118] ///TV nebo 118 Prepina TV/Radio
	   //PULSE [dvAMP,64]
	   }
    IF ((sleduji_obyvak=oSonos))
	  {
	  PULSE [dvAMP,20]
	   CALL 'Obyvak_Ukaz_Stranku'
	  vstup_obyvak=sleduji_obyvak
	  hlasitost_AMP=1
	  
	  //WAIT 30
	  //PULSE [dvAMP,79]
	  }
    IF ((sleduji_obyvak=oAMP_Tuner))
		{
		PULSE [dvAMP,62]
		vstup_obyvak=sleduji_obyvak
		hlasitost_AMP=1
		CALL 'Obyvak_Ukaz_Stranku'
		//WAIT 30
		//PULSE [dvAMP,36]
	   }
	IF ((sleduji_obyvak=oZvukTV))
		{
		PULSE [dvAMP,18]
		vstup_obyvak=sleduji_obyvak
		hlasitost_AMP=1
		CALL 'Obyvak_Ukaz_Stranku'
		//WAIT 30
		//PULSE [dvAMP,36]
	   }
}

DEFINE_CALL 'Obyvak_Ukaz_Stranku'									// Obyvak Zobrazeni Zdroje
{
	   STACK_VAR INTEGER TP_ID
	   TP_ID = GET_LAST(dvMyTP_01)
	   SEND_COMMAND dvMyTP_01,"'^TXT-20,0, '"
	   OFF [dvMyTP_01,16]
	   IF ((sleduji_obyvak=oTVobyvak))
		 {
		  SEND_COMMAND dvMyTP_01[TP_ID], "'PAGE-1_obyvak'"
		  SEND_COMMAND dvMyTP_01[TP_ID], "'@PPN-1_rack Satelit1'"
		  SEND_COMMAND dvMyTP_01,"'^UNI-20,0,00540056'"
		  ON [dvMyTP_01,1]
		 }
	   IF ((sleduji_obyvak=oZidoo))
		 {
		 SEND_COMMAND dvMyTP_01[TP_ID], "'PAGE-1_obyvak'"
		 SEND_COMMAND dvMyTP_01[TP_ID], "'@PPN-1_rack_Zidoo'"
		 SEND_COMMAND dvMyTP_01,"'^UNI-20,0,005A00490044004F004F'"
		 ON [dvMyTP_01,3]
		 }
	   IF ((sleduji_obyvak=oBD_obyvak))
		 {
		 SEND_COMMAND dvMyTP_01[TP_ID], "'PAGE-1_obyvak'"
		 SEND_COMMAND dvMyTP_01[TP_ID], "'@PPN-1_obyv DVD'"
		 SEND_COMMAND dvMyTP_01,"'^UNI-20,0,0042004C00550045005200410059'"
		 ON [dvMyTP_01,6]
		 }
	   IF ((sleduji_obyvak=oAndroid_TV))
		 {
		 SEND_COMMAND dvMyTP_01[TP_ID], "'PAGE-1_obyvak'"
		 SEND_COMMAND dvMyTP_01[TP_ID], "'@PPN-1_obyv AndroTV'"
		 SEND_COMMAND dvMyTP_01,"'^UNI-20,0,0041004E00440052004F00490044002000540056'"
		 ON [dvMyTP_01,4]
		 }
	   IF ((sleduji_obyvak=oVideo))
		 {
		 SEND_COMMAND dvMyTP_01[TP_ID], "'PAGE-1_obyvak'"
		 SEND_COMMAND dvMyTP_01[TP_ID], "'@PPN-1_rack Video'"
		 SEND_COMMAND dvMyTP_01,"'^UNI-20,0,007600680073'"
		 ON [dvMyTP_01,2]
		 }
	   IF ((sleduji_obyvak=oSonos))
		 {
		 SEND_COMMAND dvMyTP_01[TP_ID], "'PAGE-1_obyvak'"
		 SEND_COMMAND dvMyTP_01[TP_ID], "'@PPN-Sonos'"
		 SEND_COMMAND dvMyTP_01,"'^UNI-20,0,0053004F004E004F0053'"
		 ON [dvMyTP_01,5]
		 }
	   IF ((sleduji_obyvak=oAMP_Tuner))
		 {
		 SEND_COMMAND dvMyTP_01[TP_ID], "'PAGE-1_obyvak'"
		 SEND_COMMAND dvMyTP_01[TP_ID], "'@PPN-1_rack Amp Obyvak'"
		 ON [dvMyTP_01,4]
		 }
		IF ((sleduji_obyvak=oZvukTV))
			{
			SEND_COMMAND dvMyTP_01,"'^UNI-20,0,005A00560055004B0020005A002000540056'"
			ON [dvMyTP_01,7]
			}
	    IF ((sleduji_obyvak=oNic))
		 {
		 SEND_COMMAND dvMyTP_01[TP_ID], "'PAGE-1_obyvak'"
		 SEND_COMMAND dvMyTP_01[TP_ID], "'@PPA-1_obyvak'"	/// Close all popup on page
		 SEND_COMMAND dvMyTP_01,"'^UNI-20,0,004F00460046'"
		 hlasitost_AMP=0
		 ON [dvMyTP_01,9]
		 OFF [dvMyTP_01,10]		/// Pouze indikace
		 }
}

DEFINE_CALL 'Obyvak_OFF'
{
    CALL 'TV_OBYVAK_OFF'
    CALL 'AMP_OBYVAK_OFF'
    sleduji_obyvak=oNic
	CALL 'ZIDOO_OFF'
    vstup_obyvak=sleduji_obyvak
    CALL 'Obyvak_Ukaz_Stranku'
	SEND_COMMAND dvMyTP_01,"'^UNI-20,0,0050006F0077006500720020004F00460046'"
}
(*
DEFINE_CALL 'Obyvak_Switch_Kuchyn'
{
    TP_ID = GET_LAST(dvMyTP_01)
    IF ((sleduji_obyvak=oTVobyvak))
	   {
		CALL 'AP_SWITCH' (api_SAT1,apo_KUCHYN)
	   }
    IF ((sleduji_obyvak=oSat2))
	  {
	  CALL 'AP_SWITCH' (api_SAT2,apo_KUCHYN)
	  }
    IF ((sleduji_obyvak=oSat3))
	  {
	 CALL 'AP_SWITCH' (api_SAT3,apo_KUCHYN)
	  }
    IF ((sleduji_obyvak=oZidoo))
	  {
	  CALL 'AP_SWITCH' (api_TVIX,apo_KUCHYN)
	  }
    IF ((sleduji_obyvak=oBD_obyvak))
	  {
	  CALL 'AP_SWITCH' (api_BD_OBYV,apo_KUCHYN)
	  }
    IF ((sleduji_obyvak=oBD_loznice))
	  {
	  CALL 'AP_SWITCH' (api_BD_LOZ,apo_KUCHYN)
	  }
    IF ((sleduji_obyvak=oSonos1))
	  {
	 CALL 'AP_SWITCH' (api_SONOS1,apo_KUCHYN)
	  }
    IF ((sleduji_obyvak=oSonos2))
	  {
	  CALL 'AP_SWITCH' (api_SONOS2,apo_KUCHYN)
	  }
}


*)
////////		Pomocne funkce			//////////////

(***********************************************************)
(*        SUBROUTINE/FUNCTION DEFINITIONS GO BELOW         *)
(***********************************************************)
(* EXAMPLE: DEFINE_FUNCTION <RETURN_TYPE> <NAME> (<PARAMETERS>) *)
(* EXAMPLE: DEFINE_CALL '<NAME>' (<PARAMETERS>) *)

(***********************************************************)
(*                STARTUP CODE GOES BELOW                  *)
(***********************************************************)
DEFINE_START

(***********************************************************)
(*                THE EVENTS GO BELOW                      *)
(***********************************************************)


DEFINE_EVENT
//***************************************** AUDIO-VIDEO  *******************************************************//

BUTTON_EVENT[dvMyTP_01,nBTN_VOLBY_OBYVAK]						// Video volby obyvak
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_VOLBY_OBYVAK)
	SWITCH(nBtnIdx)
		{
			CASE 1: {sleduji_obyvak=oTVobyvak; CALL 'Obyvak_Video_Start'} 
			CASE 2: {sleduji_obyvak=oVideo; CALL 'Obyvak_Video_Start'} 
			CASE 3: {sleduji_obyvak=oZidoo; CALL 'Obyvak_Video_Start'} 
			CASE 4: {sleduji_obyvak=oAndroid_TV; CALL 'Obyvak_Video_Start'} 
			CASE 5:	{sleduji_obyvak=oSonos; CALL 'Obyvak_Audio_Start'} 
			CASE 6: {sleduji_obyvak=oBD_obyvak; CALL 'Obyvak_Video_Start'} 
			CASE 7: {sleduji_obyvak=oZvukTV; CALL 'Obyvak_Audio_Start'} 
			CASE 8:	{sleduji_obyvak=oZvukTV; CALL 'Obyvak_Audio_Start'} 								 
			CASE 9: CALL 'Obyvak_OFF'												
		}
	}
}

BUTTON_EVENT[dvMyTP_01,11] /// Hlasitost OBYVAK
BUTTON_EVENT[dvMyTP_01,12]	
BUTTON_EVENT[dvMyTP_01,13]	 
{
	 PUSH:
		  {
		  SWITCH(BUTTON.INPUT.CHANNEL)
				{
				CASE 11: 	PULSE[dvAMP,24]
				CASE 12: 	PULSE[dvAMP,25]
				CASE 13: 	PULSE[dvAMP,26]
				}
		  }
	 HOLD[2,REPEAT]:
		  {
		  set_pulse_time(2)
		  SWITCH(BUTTON.INPUT.CHANNEL)
				{
				CASE 11: 	PULSE[dvAMP,24]
				CASE 12: 	PULSE[dvAMP,25]
				}
				set_pulse_time(5)
		  }
}
BUTTON_EVENT[dvMyTP_01,14]	
BUTTON_EVENT[dvMyTP_01,15]
BUTTON_EVENT[dvMyTP_01,16]	
{
	 PUSH:
		  {
		  SWITCH(BUTTON.INPUT.CHANNEL)
				{
				CASE 14: PULSE[dvAMP,186]
				CASE 15: PULSE[dvAMP,187]
				CASE 16: PULSE[dvAMP,186]
				}
			}
}

// {{NSX_DEFINE_EVENT
BUTTON_EVENT[dvMyTP_01,nBTN_Obyvak_TVL]  /// Port1 100-135
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_Obyvak_TVL)
    SWITCH(nBtnIdx)
    {
      CASE   1: {PULSE [dvTV_Obyvak,10]}	//100
      CASE   2: {PULSE [dvTV_Obyvak,11]}
      CASE   3: {PULSE [dvTV_Obyvak,12]}
      CASE   4: {PULSE [dvTV_Obyvak,13]}
      CASE   5: {PULSE [dvTV_Obyvak,14]}
      CASE   6: {PULSE [dvTV_Obyvak,15]}
      CASE   7: {PULSE [dvTV_Obyvak,16]}
      CASE   8: {PULSE [dvTV_Obyvak,17]}
      CASE   9: {PULSE [dvTV_Obyvak,18]}
      CASE  10: {PULSE [dvTV_Obyvak,19]}
      CASE  11: {
					set_pulse_time(2)
					PULSE [dvTV_Obyvak,45]
					set_pulse_time(5)
					}	// 110 Cursor UP
      CASE  12: {
				set_pulse_time(2)
				PULSE [dvTV_Obyvak,46]
				set_pulse_time(5)
				}
      CASE  13: {
				set_pulse_time(2)
				PULSE [dvTV_Obyvak,47]
				set_pulse_time(5)
				}
      CASE  14: 
				{
				set_pulse_time(2)
				PULSE [dvTV_Obyvak,48]
				set_pulse_time(5)
				}
      CASE  15: {PULSE [dvTV_Obyvak,49]}	// Enter
      CASE  16: {
					set_pulse_time(2)
					PULSE [dvTV_Obyvak,22]
					set_pulse_time(5)
					}	// CH+
      CASE  17: {
					set_pulse_time(2)
					PULSE [dvTV_Obyvak,23]
					set_pulse_time(5)					
					}
      CASE  18: {PULSE [dvTV_Obyvak,9]; TV_Obyvak_Power=FALSE}	// Power neznamy stav
      CASE  19: {PULSE [dvTV_Obyvak,50]}
      CASE  20: {PULSE [dvTV_Obyvak,51]}
      CASE  21: {PULSE [dvTV_Obyvak,35]}		//120
      CASE  22: {PULSE [dvTV_Obyvak,34]}
      CASE  23: {PULSE [dvTV_Obyvak,44]}
      CASE  24: {PULSE [dvTV_Obyvak,33]}	//Guide
      CASE  25: {PULSE [dvTV_Obyvak,64]}
      CASE  26: {PULSE [dvTV_Obyvak,65]}
      CASE  27: {PULSE [dvTV_Obyvak,66]}
      CASE  28: {PULSE [dvTV_Obyvak,67]}
      CASE  29: {PULSE [dvTV_Obyvak,39]}
      CASE  30: {PULSE [dvTV_Obyvak,39]}
      CASE  31: {PULSE [dvTV_Obyvak,39]}	//130
      CASE  32: {PULSE [dvTV_Obyvak,39]}
      CASE  33: {PULSE [dvTV_Obyvak,39]}
    }
  }
   HOLD[8,REPEAT]:
		  {
		  SWITCH(BUTTON.INPUT.CHANNEL)
				{
		 CASE  11: {
			set_pulse_time(2)
			PULSE [dvTV_Obyvak,45]
			set_pulse_time(5)
			}	// 110 Cursor UP
		  CASE  12: {
					set_pulse_time(2)
					PULSE [dvTV_Obyvak,46]
					set_pulse_time(5)
					}
		  CASE  13: {
					set_pulse_time(2)
					PULSE [dvTV_Obyvak,47]
					set_pulse_time(5)
					}
		  CASE  14: 
					{
					set_pulse_time(2)
					PULSE [dvTV_Obyvak,48]
					set_pulse_time(5)
					}
		  CASE  15: {PULSE [dvTV_Obyvak,49]}	// Enter
		  CASE  16: {
						set_pulse_time(2)
						PULSE [dvTV_Obyvak,22]
						set_pulse_time(5)
						}	// CH+
		  CASE  17: {
						set_pulse_time(2)
						PULSE [dvTV_Obyvak,23]
						set_pulse_time(5)					
						}
					}
		  }
}

BUTTON_EVENT[dvMyTP_01,nBTN_VHS_Video]  /// 150 - 177
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_VHS_Video)
    SWITCH(nBtnIdx)
    {
      CASE   1: {PULSE[dvVideo,51]}	//150
      CASE   2: {PULSE[dvVideo,33]}
      CASE   3: {PULSE[dvVideo,31]}
      CASE   4: {PULSE[dvVideo,32]}
      CASE   5: {PULSE[dvVideo,52]}
      CASE   6: {PULSE[dvVideo,59]}
      CASE   7: {PULSE[dvVideo,60]}
      CASE   8: {PULSE[dvVideo,61]}	//157
      CASE   9: {PULSE[dvVideo,63]}
      CASE  10: {PULSE[dvVideo,62]}
      CASE  11: {PULSE[dvVideo,66]}		// 160
      CASE  12: {PULSE[dvVideo,67]}
      CASE  13: {PULSE[dvVideo,64]}
      CASE  14: {PULSE[dvVideo,65]}
      CASE  15: {}
      CASE  16: {PULSE[dvVideo,22]}
      CASE  17: {PULSE[dvVideo,23]}
      CASE  18: {PULSE[dvVideo,28]}
      CASE  19: {}
      CASE  20: {}
      CASE  21: {}		// 170
      CASE  22: {}
      CASE  23: {}
      CASE  24: {}
      CASE  25: {}
      CASE  26: {}
      CASE  27: {}
      CASE  28: {}
    }
  }
}
BUTTON_EVENT[dvMyTP_01,180]	
BUTTON_EVENT[dvMyTP_01,181]
BUTTON_EVENT[dvMyTP_01,182]	
{
	 PUSH:
		  {
		  SWITCH(BUTTON.INPUT.CHANNEL)
				{
				CASE 180: PULSE[dvTuner,10]
				CASE 181: PULSE[dvTuner,11]
				CASE 182: PULSE[dvTuner,12]
				}
			}
}

BUTTON_EVENT[dvMyTP_01,nBTN_DVD_Pioneer]
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_DVD_Pioneer)	// 300 - 330
    SWITCH(nBtnIdx)
    {
      CASE   1: PULSE[dvDVD,1]	//300
      CASE   2: PULSE[dvDVD,2]
      CASE   3: PULSE[dvDVD,3]
      CASE   4: PULSE[dvDVD,4]
      CASE   5: PULSE[dvDVD,5]
      CASE   6: TO[dvDVD,23]
      CASE   7: TO[dvDVD,7]
      CASE   8: PULSE[dvDVD,9]
      CASE   9: PULSE[dvDVD,80]	
      CASE  10: PULSE[dvDVD,51]
      CASE  11: PULSE[dvDVD,45]		//310 Menu UP
      CASE  12: PULSE[dvDVD,46]
      CASE  13: PULSE[dvDVD,47]
      CASE  14: PULSE[dvDVD,48]
      CASE  15: PULSE[dvDVD,21]
      CASE  16: PULSE[dvDVD,44]
      CASE  17: PULSE[dvDVD,54]
      CASE  18: PULSE[dvDVD,81]
      CASE  19: PULSE[dvDVD,54]
      CASE  20: PULSE[dvDVD,56]
      CASE  21: PULSE[dvDVD,89]	//320
      CASE  22: PULSE[dvDVD,80]
      CASE  23: PULSE[dvDVD,80]
      CASE  24: PULSE[dvDVD,80]
      CASE  25: PULSE[dvDVD,80]
      CASE  26: PULSE[dvDVD,80]
      CASE  27: PULSE[dvDVD,80]
      CASE  28: PULSE[dvDVD,80]
      CASE  29: PULSE[dvDVD,80]
      CASE  30: PULSE[dvDVD,80]
      CASE  31: PULSE[dvDVD,80]	//330
    }
  }
}

BUTTON_EVENT[dvMyTP_01,nBTN_Zidoo_P]
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_Zidoo_P)
    SWITCH(nBtnIdx)
    {
      CASE   1: {CALL 'SEND_TO_ZIDOO_CMD'('#NUP')}	//350
      CASE   2: {CALL 'SEND_TO_ZIDOO_CMD'('#NDN')}
      CASE   3: {CALL 'SEND_TO_ZIDOO_CMD'('#NLT')}
      CASE   4: {CALL 'SEND_TO_ZIDOO_CMD'('#NRT')}
      CASE   5: {CALL 'ZIDOO_OK'}
      CASE   6: {CALL 'SEND_TO_ZIDOO_CMD'('#HOM')}
      CASE   7: {CALL 'SEND_TO_ZIDOO_CMD'('#REV')}
      CASE   8: {CALL 'SEND_TO_ZIDOO_CMD'('#PAU')}
      CASE   9: {CALL 'SEND_TO_ZIDOO_CMD'('#PLA')}	//
      CASE  10: {CALL 'SEND_TO_ZIDOO_CMD'('#STP')}
      CASE  11: {CALL 'SEND_TO_ZIDOO_CMD'('#FWD')}	//360
      CASE  12: {CALL 'SEND_TO_ZIDOO_CMD'('#SYS')}
      CASE  13: {CALL 'SEND_TO_ZIDOO_CMD'('#MNU')}
      CASE  14: {CALL 'SEND_TO_ZIDOO_CMD'('#RET')}
      CASE  15: {CALL 'ZIDOO_POWER_TOGGLE'}		//ON-OFF
      CASE  16: {CALL 'SEND_TO_ZIDOO_CMD'('#TTL')}
      CASE  17: {CALL 'SEND_TO_ZIDOO_CMD'('#SUB')}
      CASE  18: {CALL 'SEND_TO_ZIDOO_CMD'('#AUD')}
      CASE  19: {CALL 'SEND_TO_ZIDOO_CMD'('#ATB')}
      CASE  20: {CALL 'SEND_TO_ZIDOO_CMD'('#NU0')}
      CASE  21: {CALL 'SEND_TO_ZIDOO_CMD'('#NU1')}	//370
      CASE  22: {CALL 'SEND_TO_ZIDOO_CMD'('#NU2')}
      CASE  23: {CALL 'SEND_TO_ZIDOO_CMD'('#NU3')}
      CASE  24: {CALL 'SEND_TO_ZIDOO_CMD'('#NU4')}
      CASE  25: {CALL 'SEND_TO_ZIDOO_CMD'('#NU5')}
      CASE  26: {CALL 'SEND_TO_ZIDOO_CMD'('#NU6')}
      CASE  27: {CALL 'SEND_TO_ZIDOO_CMD'('#NU7')}
      CASE  28: {CALL 'SEND_TO_ZIDOO_CMD'('#NU8')}
      CASE  29: {CALL 'SEND_TO_ZIDOO_CMD'('#NU9')}
      CASE  30: {CALL 'SEND_TO_ZIDOO_CMD'('#FIL')}
      CASE  31: {CALL 'ZIDOO_ON' }				//380
	  CASE  32: {CALL 'ZIDOO_OFF' }
    }
  }
  HOLD[8,REPEAT]:
		{
		STACK_VAR INTEGER nBtnIdx
		nBtnIdx = GET_LAST(nBTN_Zidoo_P)
		SWITCH(nBtnIdx)
				{
			CASE   1: {CALL 'SEND_TO_ZIDOO_CMD'('#NUP')}	//350
			CASE   2: {CALL 'SEND_TO_ZIDOO_CMD'('#NDN')}
			CASE   3: {CALL 'SEND_TO_ZIDOO_CMD'('#NLT')}
			CASE   4: {CALL 'SEND_TO_ZIDOO_CMD'('#NRT')}
			}
		}
}


BUTTON_EVENT[dvMyTP_01,nBTN_MP_Puk]	// 380 - 392
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_MP_Puk)
	set_pulse_time(2)
    SWITCH(nBtnIdx)
    {
		CASE   1: PULSE[dvDVD,135]	//380 Power
		CASE   2: PULSE[dvDVD,134]
		CASE   3: PULSE[dvDVD,134]	//382
		CASE   4: PULSE[dvDVD,131]	//383
		CASE   5: PULSE[dvDVD,132]	//384 Menu
		CASE   6: PULSE[dvDVD,134]
		CASE   7: PULSE[dvDVD,134]
		CASE   8: PULSE[dvDVD,134]
		CASE   9: TO[dvDVD,136]	//388 Menu Up
		CASE  10: TO[dvDVD,137]
		CASE  11: PULSE[dvDVD,138]		
		CASE  12: PULSE[dvDVD,139]
		CASE  13: PULSE[dvDVD,140]
    }
	set_pulse_time(5)
  }
  HOLD[8,REPEAT]:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_MP_Puk)
	set_pulse_time(2)
    SWITCH(nBtnIdx)
    {
		//CASE   9: PULSE[dvDVD,136]	//388 Menu Up
		//CASE  10: PULSE[dvDVD,137]
		CASE  11: PULSE[dvDVD,138]		
		CASE  12: PULSE[dvDVD,139]
    }
	set_pulse_time(5)
  }
}

BUTTON_EVENT[dvMyTP_02,nBTN_1PP_TUNER]	// OVLADANI TUNER - TL49TKA  1700-1015
{				
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_1PP_TUNER)
    SWITCH(nBtnIdx)
    {
      CASE    1: PULSE[dvTuner,23]		/// asi Shift - ale chtel jsem Power //1700
      CASE    2: PULSE[dvTuner,25]		/// channel + test z jineho pristroje
      CASE    3: PULSE[dvTuner,24]		/// channel - test z jineho pristroje ///1702
      CASE    4: PULSE[dvTuner,11]		// 1
      CASE    5: PULSE[dvTuner,12]		// 2
      CASE    6: PULSE[dvTuner,13]		// 3
      CASE    7: PULSE[dvTuner,14]		// 4
      CASE    8: PULSE[dvTuner,15]		// 5
      CASE    9: PULSE[dvTuner,16]		// 6
      CASE   10: PULSE[dvTuner,17]		// 7
      CASE   11: PULSE[dvTuner,18]		// 8
      CASE   12: PULSE[dvTuner,19]		// 9
      CASE   13: PULSE[dvTuner,10]		// 0
      CASE   14: PULSE[dvTuner,20]		// Class A
      CASE   15: PULSE[dvTuner,21]		// Class B
      CASE   16: PULSE[dvTuner,22]		// Class C
    }
  }
  HOLD[5]:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_1PP_TUNER)
    SWITCH(nBtnIdx)
    {
      CASE    1: {}
      CASE    2: {}
      CASE    3: {}
      CASE    4: {}
      CASE    5: {}
      CASE    6: {}
      CASE    7: {}
      CASE    8: {}
      CASE    9: {}
      CASE   10: {}
      CASE   11: {}
      CASE   12: {}
      CASE   13: {}
      CASE   14: {}
      CASE   15: {}
      CASE   16: {}
    }
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//***************************************** HLAVNI  *******************************************************//

// Vypinani elektriny

// Vypinani elektriny

//***************************************** SCHODY 1PP-2NP SVETLA  *******************************************************//
BUTTON_EVENT[dvMyTP_01,nBTN_CHANNEL_REQUEST]		/// DOTAZY NA UROVNE PRO HLAVNI ZONY (2000-2064)
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_CHANNEL_REQUEST)
    SWITCH(nBtnIdx)
    {
      CASE    1: {CALL 'REQUEST_CHANNELS_SCHODY_1-2NP'}				/// 2000
      CASE    2: {CALL 'REQUEST_CHANNELS_SCHODY_0-1NP'}
      CASE    3: {CALL 'REQUEST_CHANNELS_SCHODY_VRETENO'}			/// 2002
      CASE    4: {CALL 'REQUEST_CHANNELS_SCHODY_KAMEN'}
      CASE    5: {CALL 'REQUEST_CHANNELS_2NP_KOUPEL_PLEXI'}
      CASE    6: {CALL 'REQUEST_CHANNELS_2NP_LOZNICE_ALL'}			/// 2005
      CASE    7: {CALL 'REQUEST_CHANNELS_1NP_OBYVAK1_ALL'}			/// 2006
      CASE    8: {CALL 'REQUEST_CHANNELS_2NP_HALA_ALL'}				/// 2007
      CASE    9: {CALL 'REQUEST_CHANNELS_SCHODY_ALL'}				/// 2008
      CASE   10: {CALL 'REQUEST_CHANNELS_2NP_LOZNICE_RGB_ANGEL'} 	/// 2009
      CASE   11: {CALL 'REQUEST_CHANNELS_1NP_OBYVAK_KAMENY'}		/// 2010
      CASE   12: {CALL 'REQUEST_CHANNELS_1NP_OBYVAK_ANGEL'}			 ///2011
      CASE   13: {CALL 'REQUEST_CHANNELS_2NP_TERASA'}				  //2012
      CASE   14: {CALL 'REQUEST_CHANNELS_1NP_KUCHYN'}				  // 2013
      CASE   15: {}
      CASE   16: {}
      CASE   17: {}
      CASE   18: {}
      CASE   19: {}
      CASE   20: {}
      CASE   21: {}
      CASE   22: {}
      CASE   23: {}
      CASE   24: {}
      CASE   25: {}
      CASE   26: {}
      CASE   27: {}
      CASE   28: {}
      CASE   29: {}
      CASE   30: {}
      CASE   31: {}
      CASE   32: {}
      CASE   33: {}
      CASE   34: {}
      CASE   35: {}
      CASE   36: {}
      CASE   37: {}
      CASE   38: {}
      CASE   39: {}
      CASE   40: {}
      CASE   41: {}
      CASE   42: {}
      CASE   43: {}
      CASE   44: {}
      CASE   45: {}
      CASE   46: {}
      CASE   47: {}
      CASE   48: {}
      CASE   49: {}
      CASE   50: {}
      CASE   51: {}
      CASE   52: {}
      CASE   53: {}
      CASE   54: {}
      CASE   55: {}
      CASE   56: {}
      CASE   57: {}
      CASE   58: {}
      CASE   59: {}
      CASE   60: {}
      CASE   61: {}
      CASE   62: {}
      CASE   63: {}
      CASE   64: {}
      CASE   65: {}
    }
  }
}

BUTTON_EVENT[dvMyTP_01,900]									/// 1PPchodba
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_ON' (SV_1PP_CHODBA_01)
	  }
}
BUTTON_EVENT[dvMyTP_01,901]									/// 1PP 
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_OFF' (SV_1PP_CHODBA_01)
	  }
}
BUTTON_EVENT[dvMyTP_01,902]									/// 1PP 
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_ON' (SV_1PP_CHODBA_02)
	  }
}
BUTTON_EVENT[dvMyTP_01,903]									/// 1PP 
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_OFF' (SV_1PP_CHODBA_02)
	  }
}
BUTTON_EVENT[dvMyTP_01,904]									/// 1PP 
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_ON' (SV_1PP_CHODBA_03)
	  }
}
BUTTON_EVENT[dvMyTP_01,905]									/// 1PP 
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_OFF' (SV_1PP_CHODBA_03)
	  }
}
BUTTON_EVENT[dvMyTP_01,906]									/// 1PP 
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_ON' (SV_1PP_CHODBA_04)
	  }
}
BUTTON_EVENT[dvMyTP_01,907]									/// 1PP 
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_OFF' (SV_1PP_CHODBA_04)
	  }
}

BUTTON_EVENT[dvMyTP_01,908]									/// 1PP 
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_ON' (SV_1PP_CHODBA_05)
	  }
}
BUTTON_EVENT[dvMyTP_01,909]									/// 1PP 
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_OFF' (SV_1PP_CHODBA_05)
	  }
}

BUTTON_EVENT[dvMyTP_01,910]									/// 1PP chodba all on
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_ON' (SV_1PP_CHODBA_01)
		CALL 'ILIGHT_CHANNEL_ON' (SV_1PP_CHODBA_02)
		CALL 'ILIGHT_CHANNEL_ON' (SV_1PP_CHODBA_03)
		CALL 'ILIGHT_CHANNEL_ON' (SV_1PP_CHODBA_04)
		CALL 'ILIGHT_CHANNEL_ON' (SV_1PP_CHODBA_05)
	  }
}
BUTTON_EVENT[dvMyTP_01,911]									/// 1PP chodba all off
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_OFF' (SV_1PP_CHODBA_01)
		CALL 'ILIGHT_CHANNEL_OFF' (SV_1PP_CHODBA_02)
		CALL 'ILIGHT_CHANNEL_OFF' (SV_1PP_CHODBA_03)
		CALL 'ILIGHT_CHANNEL_OFF' (SV_1PP_CHODBA_04)
		CALL 'ILIGHT_CHANNEL_OFF' (SV_1PP_CHODBA_05)
	  }
}

BUTTON_EVENT[dvMyTP_01,nBTN_RGB_2NP_SCHODY]		/// 1851-1861
{
  PUSH:
  {
	STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SV_ARR[2]
	nBtnIdx = GET_LAST(nBTN_RGB_2NP_SCHODY)
	SV_ARR[1] = 255
	SWITCH(nBtnIdx)
		{
		CASE    1: 
		CASE    2: SV_ARR = SV_1NP_SCHODY_01		//1851
		CASE    3: 
		CASE    4: SV_ARR = SV_1NP_SCHODY_02		//1853	
		CASE    5: 
		CASE    6: SV_ARR = SV_1NP_SCHODY_03		//1855
		CASE    7: 
		CASE    8: SV_ARR = SV_2NP_SCHODY_01		//1857
		CASE    9: 
		CASE   10: SV_ARR = SV_2NP_SCHODY_02		//1859
		CASE   11: 
		CASE   12: SV_ARR = SV_2NP_SCHODY_03		//1861
		}
	 CANCEL_WAIT 'KILL RGB'
	 IF (SV_ARR[1]<>255)
			{
			  tmpARCH = SV_ARR // DULEZITE, PROTOZE V CALL JE WAIT 5 !!!
				IF ((nBtnIdx MOD 2)>0) // LICHE CISLO - UP
				  CALL 'ILIGHT_CHANNEL_RAISE2' (tmpARCH)
				ELSE // ((nBtnIdx MOD 2)=0) // SUDE CISLO - DOWN
				  CALL 'ILIGHT_CHANNEL_LOWER2' (tmpARCH)
			}
  }
  HOLD[5,REPEAT]:
  {
	STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SV_ARR[2]
	nBtnIdx = GET_LAST(nBTN_RGB_2NP_SCHODY)
	SV_ARR[1] = 255
	SWITCH(nBtnIdx)
    {
      CASE    1: 
		CASE    2: SV_ARR = SV_1NP_SCHODY_01		//1851
		CASE    3: 
		CASE    4: SV_ARR = SV_1NP_SCHODY_02		//1853	
		CASE    5: 
		CASE    6: SV_ARR = SV_1NP_SCHODY_03		//1855
		CASE    7: 
		CASE    8: SV_ARR = SV_2NP_SCHODY_01		//1857
		CASE    9: 
		CASE   10: SV_ARR = SV_2NP_SCHODY_02		//1859
		CASE   11: 
		CASE   12: SV_ARR = SV_2NP_SCHODY_03		//1861
    }
	 IF (SV_ARR[1]<>255)
			{
			  tmpARCH = SV_ARR // DULEZITE, PROTOZE V CALL JE WAIT 5 !!!
				IF ((nBtnIdx MOD 2)>0) // LICHE CISLO - UP
				  CALL 'ILIGHT_CHANNEL_RAISE2' (tmpARCH)
				ELSE // ((nBtnIdx MOD 2)=0) // SUDE CISLO - DOWN
				  CALL 'ILIGHT_CHANNEL_LOWER2' (tmpARCH)
			}
  }
  RELEASE:
  {
   STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SV_ARR[2]
	nBtnIdx = GET_LAST(nBTN_RGB_2NP_SCHODY)
	SV_ARR[1] = 255
	SWITCH(nBtnIdx)
    {
		CASE    1: 
		CASE    2: SV_ARR = SV_1NP_SCHODY_01		//1851
		CASE    3: 
		CASE    4: SV_ARR = SV_1NP_SCHODY_02		//1853	
		CASE    5: 
		CASE    6: SV_ARR = SV_1NP_SCHODY_03		//1855
		CASE    7: 
		CASE    8: SV_ARR = SV_2NP_SCHODY_01		//1857
		CASE    9: 
		CASE   10: SV_ARR = SV_2NP_SCHODY_02		//1859
		CASE   11: 
		CASE   12: SV_ARR = SV_2NP_SCHODY_03		//1861
    }
	 IF (SV_ARR[1]<>255)
		  CALL 'ILIGHT_CHANNEL_REQUEST' (SV_ARR)
	//IF (BUTTON.HOLDTIME > 1000) // JEN POKUD TLACITKO BYLO DRZENO DELSI DOBU NEZ 1s - BLBOST PREDELAT
	WAIT 30 'KILL RGB'
	SEND_COMMAND dvMyTP_01, "'@PPK-0_schody_RGB1'"
	SEND_COMMAND dvMyTP_01, "'@PPK-1_schody_RGB2'"
		
  }
}
BUTTON_EVENT[dvMyTP_01,nBTN_1NP_SV_KUCHYN]		/// SV KUCHYN 950-979
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_1NP_SV_KUCHYN)
    SWITCH(nBtnIdx)
    {
      CASE   1: {CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_KUCHYN_01)}		///950
      CASE   2: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KUCHYN_01)}
      CASE   3: {CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_KUCHYN_02)}
      CASE   4: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KUCHYN_02)}
      CASE   5: {CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_KUCHYN_03)}
      CASE   6: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KUCHYN_03)}
      CASE   7: {CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_KUCHYN_04)}
      CASE   8: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KUCHYN_04)}
      CASE   9: {CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_KUCHYN_09)}
      CASE   10: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KUCHYN_09)}
      CASE   11: {CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_KUCHYN_10)}		///960 - NAD SPORAKEM
      CASE   12: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KUCHYN_10)}
      CASE   13: {CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_KUCHYN_11)}		/// 962 - LED PASEK U VCHODU
      CASE   14: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KUCHYN_11)}
      CASE   15: {CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_KUCHYN_12)}		/// 964 - LED PASEK U OKNA 
      CASE   16: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KUCHYN_12)}
      CASE   17: {CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_KUCHYN_13)}		/// 966 - LED PASEK U SCHODU 
      CASE   18: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KUCHYN_13)}
      CASE   19: {CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_KUCHYN_14)}		/// 968 - LED PODLAHA
      CASE   20: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KUCHYN_14)}
      CASE   21: {CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_KUCHYN_05)}		///970
      CASE   22: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KUCHYN_05)}
      CASE   23: {CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_KUCHYN_06)}
      CASE   24: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KUCHYN_06)}
      CASE   25: {CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_KUCHYN_07)}
      CASE   26: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KUCHYN_07)}
      CASE   27: {CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_KUCHYN_08)}
      CASE   28: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KUCHYN_08)}  ////
      CASE  29: {}
      CASE  30: {
				CALL 'ILIGHT_SCENA2' (0,11,1)
				CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KUCHYN_01)	
				CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KUCHYN_02)
				CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KUCHYN_03)
				CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KUCHYN_04)
				CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KUCHYN_05)
				CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KUCHYN_06)
				CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KUCHYN_07)
				CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KUCHYN_08)
				CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KUCHYN_09)
				CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KUCHYN_10)
				CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KUCHYN_11)
				CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KUCHYN_12)
				CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KUCHYN_13)
				CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KUCHYN_14)	  
				}     			///979
    }
  }
  HOLD[5,REPEAT]:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_1NP_SV_KUCHYN)
    SWITCH(nBtnIdx)
    {
      CASE   1: {}
      CASE   2: {}
      CASE   3: {}
      CASE   4: {}
      CASE   5: {}
      CASE   6: {}
      CASE   7: {}
      CASE   8: {}
      CASE   9: {}
      CASE  10: {}
      CASE  11: {}
      CASE  12: {}
      CASE  13: {}
      CASE  14: {}
      CASE  15: {}
      CASE  16: {}
      CASE  17: {}
      CASE  18: {}
      CASE  19: {}
      CASE  20: {}
      CASE  21: {}
      CASE  22: {}
      CASE  23: {}
      CASE  24: {}
      CASE  25: {}
      CASE  26: {}
      CASE  27: {}
      CASE  28: {}
      CASE  29: {}
      CASE  30: {}
    }
  }
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_1NP_SV_KUCHYN)
    SWITCH(nBtnIdx)
    {
      CASE   1: 
      CASE   2: 
      CASE   3: 
      CASE   4: 
      CASE   5: 
      CASE   6: 
      CASE   7: 
      CASE   8: 
      CASE   9:
      CASE  10: 
      CASE  11: 
      CASE  12: 
      CASE  13:
      CASE  14: 
      CASE  15: 
      CASE  16: 
      CASE  17: 
      CASE  18: 
      CASE  19: 
      CASE  20: 
      CASE  21: 
      CASE  22: 
      CASE  23: 
      CASE  24: 
      CASE  25: 
      CASE  26: 
      CASE  27: 
      CASE  28: 
      CASE  29: 
      CASE  30: CALL 'REQUEST_CHANNELS_1NP_KUCHYN'

    }
  }
}

///////////////////////////////////
BUTTON_EVENT[dvMyTP_01,nBTN_1NP_SV_KOUP]		/// SV KOUPELNA 980-999
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_1NP_SV_KOUP)
    SWITCH(nBtnIdx)
    {
      CASE   1: {CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_KOUPELNA_04)}		///980
      CASE   2: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KOUPELNA_04)}
      CASE   3: {CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_KOUPELNA_08)}
      CASE   4: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KOUPELNA_08)}
      CASE   5: {
				CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_KOUPELNA_04)
				CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_KOUPELNA_08)
				}
      CASE   6: {
				CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KOUPELNA_04)
				CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KOUPELNA_08)				
				}
      CASE   7: {CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_KOUPELNA_04)}
      CASE   8: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KOUPELNA_04)}
      CASE   9: {CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_KOUPELNA_05)}
      CASE   10: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KOUPELNA_05)}
      CASE   11: {CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_KOUPELNA_10)}		///990
      CASE   12: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KOUPELNA_10)}
      CASE   13: {CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_KOUPELNA_11)}
      CASE   14: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KOUPELNA_11)}
      CASE   15: {CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_KOUPELNA_01)}
      CASE   16: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KOUPELNA_01)}
      CASE   17: {CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_KOUPELNA_01)}
      CASE   18: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KOUPELNA_01)}
      CASE   19: {CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_KOUPELNA_01)}
      CASE   20: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_KOUPELNA_01)}
    }
  }
  HOLD[5,REPEAT]:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_1NP_SV_KOUP)
    SWITCH(nBtnIdx)
    {
      CASE   1: {}
      CASE   2: {}
      CASE   3: {}
      CASE   4: {}
      CASE   5: {}
      CASE   6: {}
      CASE   7: {}
      CASE   8: {}
      CASE   9: {}
      CASE  10: {}
      CASE  11: {}
      CASE  12: {}
      CASE  13: {}
      CASE  14: {}
      CASE  15: {}
      CASE  16: {}
      CASE  17: {}
      CASE  18: {}
      CASE  19: {}
      CASE  20: {}
    }
  }
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_1NP_SV_KOUP)
    SWITCH(nBtnIdx)
    {
      CASE   1: {}
      CASE   2: {}
      CASE   3: {}
      CASE   4: {}
      CASE   5: {}
      CASE   6: {}
      CASE   7: {}
      CASE   8: {}
      CASE   9: {}
      CASE  10: {}
      CASE  11: {}
      CASE  12: {}
      CASE  13: {}
      CASE  14: {}
      CASE  15: {}
      CASE  16: {}
      CASE  17: {}
      CASE  18: {}
      CASE  19: {}
      CASE  20: {}
    }
  }
}

BUTTON_EVENT[dvMyTP_01,nBTN_RGB_2NP_VRETENO]			/// 2NP VRETENO CHANNEL UP-DOWN
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SV_ARR[2]
    nBtnIdx = GET_LAST(nBTN_RGB_2NP_VRETENO)
	SV_ARR[1] = 255
    SWITCH(nBtnIdx)
		{
		CASE   1: 									// 2600
		CASE   2:	SV_ARR = SV_2NP_VRETENO_01
		CASE   3:  									// 2602
		CASE   4:	SV_ARR = SV_2NP_VRETENO_02
		CASE   5: 									// 2604 
		CASE   6:	SV_ARR = SV_2NP_VRETENO_03
		CASE   7: 									// 2606
		CASE   8:	SV_ARR = SV_2NP_VRETENO_04
		CASE   9: 
		CASE   10:	SV_ARR = SV_2NP_VRETENO_05		// 2609
		}
		CANCEL_WAIT 'KILL RGB'
		IF (SV_ARR[1]<>255)
			{
			  tmpARCH = SV_ARR // DULEZITE, PROTOZE V CALL JE WAIT 5 !!!
				IF ((nBtnIdx MOD 2)>0) // LICHE CISLO - UP
				  CALL 'ILIGHT_CHANNEL_RAISE2' (tmpARCH)
				ELSE // ((nBtnIdx MOD 2)=0) // SUDE CISLO - DOWN
				  CALL 'ILIGHT_CHANNEL_LOWER2' (tmpARCH)
			}
  }
  HOLD[5,REPEAT]:
  {
    STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SV_ARR[2]
    nBtnIdx = GET_LAST(nBTN_RGB_2NP_VRETENO)
	SV_ARR[1] = 255
    SWITCH(nBtnIdx)
		{
		CASE   1: 									// 2600
		CASE   2:	SV_ARR = SV_2NP_VRETENO_01
		CASE   3:  									// 2602
		CASE   4:	SV_ARR = SV_2NP_VRETENO_02
		CASE   5: 									// 2604 
		CASE   6:	SV_ARR = SV_2NP_VRETENO_03
		CASE   7: 									// 2606
		CASE   8:	SV_ARR = SV_2NP_VRETENO_04
		CASE   9: 
		CASE   10:	SV_ARR = SV_2NP_VRETENO_05		// 2609
		}
		IF (SV_ARR[1]<>255)
			{
			  tmpARCH = SV_ARR // DULEZITE, PROTOZE V CALL JE WAIT 5 !!!
				IF ((nBtnIdx MOD 2)>0) // LICHE CISLO - UP
				  CALL 'ILIGHT_CHANNEL_RAISE2' (tmpARCH)
				ELSE // ((nBtnIdx MOD 2)=0) // SUDE CISLO - DOWN
				  CALL 'ILIGHT_CHANNEL_LOWER2' (tmpARCH)
			}
  }
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SV_ARR[2]
    nBtnIdx = GET_LAST(nBTN_RGB_2NP_VRETENO)
	SV_ARR[1] = 255
    SWITCH(nBtnIdx)
    {
		CASE   1: 									// 2600
		CASE   2:	SV_ARR = SV_2NP_VRETENO_01
		CASE   3:  									// 2602
		CASE   4:	SV_ARR = SV_2NP_VRETENO_02
		CASE   5: 									// 2604 
		CASE   6:	SV_ARR = SV_2NP_VRETENO_03
		CASE   7: 									// 2606
		CASE   8:	SV_ARR = SV_2NP_VRETENO_04
		CASE   9: 
		CASE   10:	SV_ARR = SV_2NP_VRETENO_05		// 2609
    }
	IF (SV_ARR[1]<>255)
		  CALL 'ILIGHT_CHANNEL_REQUEST' (SV_ARR)
	//IF (BUTTON.HOLDTIME > 1500) // JEN POKUD TLACITKO BYLO DRZENO DELSI DOBU NEZ 1,5s
	WAIT 30 'KILL RGB'
	SEND_COMMAND dvMyTP_01, "'@PPK-2_vreteno_RGB'"
  }
}

BUTTON_EVENT[dvMyTP_01,nBTN_RGB_2NP_VRETENO]				/// 2NP VRETENO CHANNEL OFF
{
	PUSH:
	{
    STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SV_ARR[2]
    nBtnIdx = GET_LAST(nBTN_RGB_2NP_VRETENO)
	SV_ARR[1] = 255
    SWITCH(nBtnIdx)
		{
		CASE   11: {SV_ARR = SV_2NP_VRETENO_01}		/// 2610
		CASE   12: {SV_ARR = SV_2NP_VRETENO_02}
		CASE   13: {SV_ARR = SV_2NP_VRETENO_03}
		CASE   14: {SV_ARR = SV_2NP_VRETENO_04}
		CASE   15: {SV_ARR = SV_2NP_VRETENO_05}		/// 2614
		}
		CANCEL_WAIT 'KILL RGB'
		CALL 'ILIGHT_CHANNEL_VALUE' (SV_ARR,0,1)
	}
	RELEASE:
	{
    STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SV_ARR[2]
    nBtnIdx = GET_LAST(nBTN_RGB_2NP_VRETENO)
	SV_ARR[1] = 255
    SWITCH(nBtnIdx)
		{
		CASE   11: {SV_ARR = SV_2NP_VRETENO_01}		/// 2610
		CASE   12: {SV_ARR = SV_2NP_VRETENO_02}
		CASE   13: {SV_ARR = SV_2NP_VRETENO_03}
		CASE   14: {SV_ARR = SV_2NP_VRETENO_04}
		CASE   15: {SV_ARR = SV_2NP_VRETENO_05}		/// 2614
		}
		IF (SV_ARR[1]<>255)
			  CALL 'ILIGHT_CHANNEL_REQUEST' (SV_ARR)
		//IF (BUTTON.HOLDTIME > 1500) // JEN POKUD TLACITKO BYLO DRZENO DELSI DOBU NEZ 1,5s
		WAIT 30 'KILL RGB'
		SEND_COMMAND dvMyTP_01, "'@PPK-2_vreteno_RGB'"
	}
}

BUTTON_EVENT[dvMyTP_01,nBTN_RGB_2NP_VRETENO]
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SC[2]
    nBtnIdx = GET_LAST(nBTN_RGB_2NP_VRETENO)
	SC[1] = ILT_2NP_SCHODY_AREA
    SWITCH(nBtnIdx)
		{
		CASE   16: 	{	
					SC[2] = 82								/// SCENA 1
					CALL 'ILIGHT_SCENA' (SC,1)								
					}	
		CASE   17: 	{	
					SC[2] = 82								/// SCENA 1
					CALL 'ILIGHT_SAVE_SCENE' (SC)
					}	
		CASE   18: 	{	
					SC[2] = 83								/// SCENA 2
					CALL 'ILIGHT_SCENA' (SC,1)								
					}
		CASE   19:	{	
					SC[2] = 83								/// SCENA 2	2618
					CALL 'ILIGHT_SAVE_SCENE' (SC)
					}
		CASE   20: {CALL 'SEKVENCE_2NP_VRETENO_STOP'}		//SRDCE TMAVE 1
		CASE   21: {CALL 'SEKVENCE_2NP_VRETENO_STOP'}		//SRDCE TMAVE 2
		CASE   22: {CALL 'SEKVENCE_2NP_VRETENO_STOP'}		//SRDCE SVETLE 1
		CASE   23: {CALL 'SEKVENCE_2NP_VRETENO_STOP'}		//SRDCE SVETLE 2
		CASE   24: {CALL 'SrdceTep_OFF'; RGB_2NP_VRETENO_MOD=RGB_2VRETENO_08}		/// Bila
		CASE   25: {CALL 'SrdceTep_OFF'; RGB_2NP_VRETENO_MOD=RGB_2VRETENO_06}
		CASE   26: {CALL 'SrdceTep_OFF'; RGB_2NP_VRETENO_MOD=RGB_2VRETENO_07}
		CASE   27: {CALL 'SrdceTep_OFF'; RGB_2NP_VRETENO_MOD=RGB_2VRETENO_05}		// 2626
		CASE   28: {CALL 'SrdceTep_OFF'; RGB_2NP_VRETENO_MOD=RGB_2VRETENO_09}
		CASE   29: {CALL 'SrdceTep_OFF'; RGB_2NP_VRETENO_MOD=RGB_2VRETENO_10}
		CASE   30: {CALL 'SrdceTep_OFF'; RGB_2NP_VRETENO_MOD=RGB_2VRETENO_11}
		CASE   31: {CALL 'SrdceTep_OFF'; RGB_2NP_VRETENO_MOD=RGB_2VRETENO_12}
		CASE   32: {}
		CASE   33: {}
		CASE   34: {}
		CASE   37: {
					CALL 'SEKVENCE_2NP_VRETENO_STOP'
					CALL 'SrdceTep_OFF'
					}	/// 2636  ALL OFF
				
		}
		RGB_2NP_VRETENO_KROK=1
  }
 
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SV_ARR[2]
    nBtnIdx = GET_LAST(nBTN_RGB_2NP_VRETENO)
	SV_ARR[1] = 255
    SWITCH(nBtnIdx)
    {
      CASE   11: {}
      CASE   12: {}
      CASE   13: {}
      CASE   14: {}
      CASE   15: {}
      CASE   16: {}
      CASE   17: {}
      CASE   18: {}
      CASE   19: {}
      CASE   20: {
				SQ_CHOD_VRETENO=CH_2NP_VRETENO_01
				CALL 'SrdceTep_ON'
				}
      CASE   21: {
				SQ_CHOD_VRETENO=CH_2NP_VRETENO_02
				CALL 'SrdceTep_ON'
				}
      CASE   22: {
				SQ_CHOD_VRETENO=CH_2NP_VRETENO_03
				CALL 'SrdceTep_ON'
				}
      CASE   23: {
				SQ_CHOD_VRETENO=CH_2NP_VRETENO_04
				CALL 'SrdceTep_ON'
				}
      CASE   24: {RGB_2NP_VRETENO_WAIT_TIME=200;  	RGB_2NP_VRETENO8_KROK=1;	CANCEL_WAIT 'SEKVENCE_2NP_VRETENO_STMIVA_WAIT'
					WAIT 20
					CALL 'SEKVENCE_2NP_VRETENO_STMIVA4'}	// BILA - KRYSTAL
      CASE   25: {RGB_2NP_VRETENO_WAIT_TIME=200;	RGB_2NP_VRETENO6_KROK=1;	CANCEL_WAIT 'SEKVENCE_2NP_VRETENO_STMIVA_WAIT'	
					WAIT 20
					CALL 'SEKVENCE_2NP_VRETENO_STMIVA2'}	// MODRA - KRYSTAL
      CASE   26: {RGB_2NP_VRETENO_WAIT_TIME=200;	RGB_2NP_VRETENO7_KROK=1;	CANCEL_WAIT 'SEKVENCE_2NP_VRETENO_STMIVA_WAIT'
					WAIT 20
					CALL 'SEKVENCE_2NP_VRETENO_STMIVA3'}	// ZELENA - KRYSTAL
      CASE   27: {RGB_2NP_VRETENO_WAIT_TIME=200;	RGB_2NP_VRETENO5_KROK=1;	CANCEL_WAIT 'SEKVENCE_2NP_VRETENO_STMIVA_WAIT'	
					WAIT 20
					CALL 'SEKVENCE_2NP_VRETENO_STMIVA1'}	// CERVENA - KRYSTAL
      CASE   28: {RGB_2NP_VRETENO_WAIT_TIME=200;	RGB_2NP_VRETENO9_KROK=1;	CANCEL_WAIT 'SEKVENCE_2NP_VRETENO_STMIVA_WAIT'	
					WAIT 20
					CALL 'SEKVENCE_2NP_VRETENO_STMIVA5'}	// MODRA - ANGEL
      CASE   29: {RGB_2NP_VRETENO_WAIT_TIME=200;	RGB_2NP_VRETENO10_KROK=1;	CANCEL_WAIT 'SEKVENCE_2NP_VRETENO_STMIVA_WAIT'	
					WAIT 20
					CALL 'SEKVENCE_2NP_VRETENO_STMIVA6'}	// ZELENA - ANGEL
      CASE   30: {RGB_2NP_VRETENO_WAIT_TIME=200;	RGB_2NP_VRETENO11_KROK=1;	CANCEL_WAIT 'SEKVENCE_2NP_VRETENO_STMIVA_WAIT'	
					WAIT 20
					CALL 'SEKVENCE_2NP_VRETENO_STMIVA7'}	// CERVENA - ANGEL
      CASE   31: {RGB_2NP_VRETENO_WAIT_TIME=200;	RGB_2NP_VRETENO12_KROK=1;	CANCEL_WAIT 'SEKVENCE_2NP_VRETENO_STMIVA_WAIT'	
					WAIT 20
					CALL 'SEKVENCE_2NP_VRETENO_STMIVA8'}	// BILA - ANGEL
      CASE   32: {}
      CASE   33: {}
      CASE   34: {}
      CASE   35: {}
    }
	WAIT 10 // PRO REALNOU ZPETNOU VAZBU
	CALL 'REQUEST_CHANNELS_SCHODY_VRETENO'
  }
}

BUTTON_EVENT[dvMyTP_02,nBTN_2NP_VRETENO_SRDCE]		/// 2NP VRETENO SCENY PRO SRDCE  2637-2641
{
  PUSH:
	{
    STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SC[2]
	nBtnIdx = GET_LAST(nBTN_2NP_VRETENO_SRDCE)
	SC[1] = ILT_2NP_SCHODY_AREA
	SC[2] = 0
    SWITCH(nBtnIdx)
		{
		CASE 1: {}
		CASE 2: {}
		CASE 3: {}
		CASE 4: {}
		CASE 5: {}
		CASE 6: {}
		}
	}
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SC[2]
    nBtnIdx = GET_LAST(nBTN_2NP_VRETENO_SRDCE)
	SC[1] = ILT_2NP_SCHODY_AREA
	SC[2] = 0
    SWITCH(nBtnIdx)
    {
	  CASE 1: {SC[2] = 85}
      CASE 2: {SC[2] = 86}
      CASE 3: {SC[2] = 87}
	  CASE 4: {SC[2] = 88}
      CASE 5: {SC[2] = 89}
      CASE 6: {SC[2] = 90}
	}
	IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
			{ // VYVOLEJ SCENU
				CALL 'ILIGHT_SCENA' (SC,1)
			}
			ELSE
			{ // ULOZ SCENU
			  CALL 'ILIGHT_SAVE_SCENE' (SC)
				SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA CISLO ',ITOA(nBtnIdx)"
				SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			}
  }
}

BUTTON_EVENT[dvMyTP_01,nBTN_0NP_KAMEN_SCHODY]					/// 0NP KAMENY SVETLA
{
  PUSH:
  {
	STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SV_ARR[2]
	nBtnIdx = GET_LAST(nBTN_0NP_KAMEN_SCHODY)
	SV_ARR[1] = 255
	SWITCH(nBtnIdx)
		{
		CASE    1: 
		CASE    2: SV_ARR = SV_1PP_SCHODY_01		//1917
		CASE    3: 
		CASE    4: SV_ARR = SV_1PP_SCHODY_02		//1919	
		}
	 IF (SV_ARR[1]<>255)
			{
			  tmpARCH = SV_ARR // DULEZITE, PROTOZE V CALL JE WAIT 5 !!!
				IF ((nBtnIdx MOD 2)>0) // LICHE CISLO 
				  CALL 'ILIGHT_CHANNEL_RAISE2' (tmpARCH)
				ELSE // ((nBtnIdx MOD 2)=0) // SUDE CISLO 
				  CALL 'ILIGHT_CHANNEL_LOWER2' (tmpARCH)
			}
  }
  HOLD[5,REPEAT]:
	 {
	 STACK_VAR INTEGER nBtnIdx
	 STACK_VAR CHAR SV_ARR[2]
	 nBtnIdx = GET_LAST(nBTN_0NP_KAMEN_SCHODY)
	 SV_ARR[1] = 255
	 SWITCH(nBtnIdx)
		  {
		  CASE    1: 
		  CASE    2: SV_ARR = SV_1PP_SCHODY_01		//1917
		  CASE    3: 
		  CASE    4: SV_ARR = SV_1PP_SCHODY_02		//1919	
		  }
	 IF (SV_ARR[1]<>255)
		  {
		  tmpARCH = SV_ARR // DULEZITE, PROTOZE V CALL JE WAIT 5 !!!
		  IF ((nBtnIdx MOD 2)>0) // LICHE CISLO 
			 CALL 'ILIGHT_CHANNEL_RAISE2' (tmpARCH)
		  ELSE // ((nBtnIdx MOD 2)=0) // SUDE CISLO
			 CALL 'ILIGHT_CHANNEL_LOWER2' (tmpARCH)
		  }
	 }
  RELEASE:
		  {
		  WAIT 10
		  CALL 'REQUEST_CHANNELS_SCHODY_KAMEN'
		  }
}

BUTTON_EVENT[dvMyTP_01,nBTN_0NP_KAMEN_SCHODY]					/// 0NP KAMENY SCENY
{
  RELEASE:
	{
    STACK_VAR INTEGER nBtnIdx
	 STACK_VAR CHAR SC[2]	  
    nBtnIdx = GET_LAST(nBTN_0NP_KAMEN_SCHODY)
	 IF (nBtnIdx = 5)
		{
		  SC[1] = ILT_0NP_CHODBA_AREA
		  SC[2] = 1
			IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
			{ // VYVOLEJ SCENU
				CALL 'ILIGHT_SCENA' (SC,1)
			}
			ELSE
			{ // ULOZ SCENU
			  CALL 'ILIGHT_SAVE_SCENE' (SC)
				SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA V DP CISLO ',ITOA(nBtnIdx)"
				SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			}
			WAIT 10 // PRO REALNOU ZPETNOU VAZBU
				CALL 'ILIGHT_SCENA_REQUEST'(ILT_0NP_CHODBA_AREA) 
		}
	}
}
BUTTON_EVENT[dvMyTP_01,1921]									/// Kamen vypnout
{
	 PUSH:
		  {
		  CALL 'ILIGHT_CHANNEL_OFF' (SV_1PP_SCHODY_01)
		  CALL 'ILIGHT_CHANNEL_OFF' (SV_1PP_SCHODY_02)
		  }
	 RELEASE:
		  {
		  WAIT 5
		  CALL 'REQUEST_CHANNELS_SCHODY_KAMEN'
		  }
}
BUTTON_EVENT[dvMyTP_01,nBTN_RGB_2NP_SCHODY]						/// SCHODY POZICNI 1870-1876
{
	 PUSH:
	 {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_RGB_2NP_SCHODY)
    SWITCH(nBtnIdx)
		  {
		  CASE 21:{ 																	/// 1870
					 CALL 'ILIGHT_CHANNEL_RAISE' (SV_1NP_SCHODY_01)
					 CALL 'ILIGHT_CHANNEL_RAISE' (SV_1NP_SCHODY_02)
					 CALL 'ILIGHT_CHANNEL_RAISE' (SV_1NP_SCHODY_03)
					 } 
		  CASE 22:{ 																	/// 1871
					 CALL 'ILIGHT_CHANNEL_LOWER' (SV_1NP_SCHODY_01)
					 CALL 'ILIGHT_CHANNEL_LOWER' (SV_1NP_SCHODY_02)
					 CALL 'ILIGHT_CHANNEL_LOWER' (SV_1NP_SCHODY_03)
					 }
			CASE 23:{ 																	/// 1872
					 CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_SCHODY_01)
					 CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_SCHODY_02)
					 CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_SCHODY_03)
					 } 
		  CASE 24:{ 																	/// 1873
					 CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_SCHODY_01)
					 CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_SCHODY_02)
					 CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_SCHODY_03)
					 }
			CASE 25:{ 																	/// 1874 OFF
					 CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_SCHODY_01)
					 CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_SCHODY_02)
					 CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_SCHODY_03)
					 //CALL 'ILIGHT_SEQ_START' (SEQ_CIDLO_SCHODY,55)						/// ON PRO CIDLA SCHODY
					 }
			CASE 26:{ 																	/// 1875 OFF
					 CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_SCHODY_01)
					 CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_SCHODY_02)
					 CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_SCHODY_03)
					 //CALL 'ILIGHT_SEQ_START' (SEQ_CIDLO_SCHODY,55)						/// ON PRO CIDLA SCHODY
					 }
			CASE 27:{ 																	/// 1876
					 CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_VRETENO_01)
					 CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_VRETENO_02)
					 CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_VRETENO_03)
					 CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_VRETENO_04)
					 }
			}
		}
		HOLD[5,REPEAT]:
		{
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_RGB_2NP_SCHODY)
    SWITCH(nBtnIdx)
		  {
		  CASE 21:{ 																	/// 1870
					 CALL 'ILIGHT_CHANNEL_RAISE' (SV_1NP_SCHODY_01)
					 CALL 'ILIGHT_CHANNEL_RAISE' (SV_1NP_SCHODY_02)
					 CALL 'ILIGHT_CHANNEL_RAISE' (SV_1NP_SCHODY_03)
					 } 
		  CASE 22:{ 																	/// 1871
					 CALL 'ILIGHT_CHANNEL_LOWER' (SV_1NP_SCHODY_01)
					 CALL 'ILIGHT_CHANNEL_LOWER' (SV_1NP_SCHODY_02)
					 CALL 'ILIGHT_CHANNEL_LOWER' (SV_1NP_SCHODY_03)
					 }
			CASE 23:{ 																	/// 1872
					 CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_SCHODY_01)
					 CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_SCHODY_02)
					 CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_SCHODY_03)
					 } 
		  CASE 24:{ 																	/// 1873
					 CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_SCHODY_01)
					 CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_SCHODY_02)
					 CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_SCHODY_03)
					 }
			}
		}
	 RELEASE:
	 {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_RGB_2NP_SCHODY)
    SWITCH(nBtnIdx)
		  {
		  CASE 21:{ 																	/// 1870
					 CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_SCHODY_01)
					 CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_SCHODY_02)
					 CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_SCHODY_03)
					 } 
		  CASE 22:{ 																	/// 1871
					 CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_SCHODY_01)
					 CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_SCHODY_02)
					 CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_SCHODY_03)
					 }
			CASE 23:{ 																	/// 1872
					 CALL 'ILIGHT_CHANNEL_REQUEST' (SV_2NP_SCHODY_01)
					 CALL 'ILIGHT_CHANNEL_REQUEST' (SV_2NP_SCHODY_02)
					 CALL 'ILIGHT_CHANNEL_REQUEST' (SV_2NP_SCHODY_03)
					 } 
		  CASE 24:{ 																	/// 1873
					 CALL 'ILIGHT_CHANNEL_REQUEST' (SV_2NP_SCHODY_01)
					 CALL 'ILIGHT_CHANNEL_REQUEST' (SV_2NP_SCHODY_02)
					 CALL 'ILIGHT_CHANNEL_REQUEST' (SV_2NP_SCHODY_03)
					 }
		  }
	 }

}
		
//***************************************** SCHODY 1PP-2NP SCENY  *******************************************************//


BUTTON_EVENT[dvMyTP_01,nBTN_SCENY_1NP_SCHODY]					/// SCHODY 1880-1897
{
	 PUSH:
		  {
		  STACK_VAR INTEGER nBtnIdx
		  STACK_VAR CHAR SC[2]	
		  SC[1] = ILT_1NP_SCHODY_AREA
		  nBtnIdx = GET_LAST(nBTN_SCENY_1NP_SCHODY)
		  SWITCH(nBtnIdx)
				{
				  CASE    1: {SC[2] = 28}			//PO
				  CASE    2: {SC[2] = 29}			
				  CASE    3: {SC[2] = 30}
				  CASE    4: {SC[2] = 31}
				  CASE    5: {SC[2] = 32}
				  CASE    6: {SC[2] = 33}
				  CASE    7: {SC[2] = 34}			/// NE 1886
				  CASE    8: {SC[2] = 36} 			/// 1887 Pozicni ON, 
				  CASE    9: {SC[2] = 37}			/// 1888
				  CASE   10: {SC[2] = 38}			/// 1889
				  CASE   11: {SC[1] = ILT_2NP_SCHODY_AREA SC[2] = 79}	/// 1890 2NP
				  CASE   12: {SC[1] = ILT_2NP_SCHODY_AREA SC[2] = 80}	/// 1891
				  CASE   13: {SC[2] = 1}
				  CASE   14: {SC[2] = 1}
				  CASE   15: {SC[2] = 1}
				  CASE   16: {SC[2] = 1}
				  CASE   17: {SC[2] = 1}
				  CASE   18: {SC[2] = 1}
				}
		  }
	 RELEASE:
		  {
		  STACK_VAR INTEGER nBtnIdx
		  STACK_VAR CHAR SC[2]	
		  SC[1] = ILT_1NP_SCHODY_AREA
		  nBtnIdx = GET_LAST(nBTN_SCENY_1NP_SCHODY)
		  SWITCH(nBtnIdx)
				{
				  CASE    1: {SC[2] = 28}			//PO
				  CASE    2: {SC[2] = 29}			
				  CASE    3: {SC[2] = 30}
				  CASE    4: {SC[2] = 31}
				  CASE    5: {SC[2] = 32}
				  CASE    6: {SC[2] = 33}
				  CASE    7: {SC[2] = 34}			//NE
				  CASE    8: {SC[2] = 36}			//Pozicni
				  CASE    9: {SC[2] = 38}
				  CASE   10: {SC[2] = 38}
				  CASE   11: {SC[1] = ILT_2NP_SCHODY_AREA SC[2] = 79}	/// 1890 2NP
				  CASE   12: {SC[1] = ILT_2NP_SCHODY_AREA SC[2] = 80}	/// 1891
				  CASE   13: {SC[2] = 1}
				  CASE   14: {SC[2] = 1}
				  CASE   15: {SC[2] = 1}
				  CASE   16: {SC[2] = 1}
				  CASE   17: {SC[2] = 1}
				  CASE   18: {SC[2] = 1}
				}
	 IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
			{ // VYVOLEJ SCENU
				CALL 'ILIGHT_SCENA' (SC,1)
				SEND_STRING 0,"'BYLA VYVOLANA SVETELNA SCENA PRO SCHODY CISLO ',ITOA(nBtnIdx)"
			}
			ELSE
			{ // ULOZ SCENU
			  CALL 'ILIGHT_SAVE_SCENE' (SC)
				SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA PRO SCHODY CISLO ',ITOA(nBtnIdx)"
				SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			}
			WAIT 10 // PRO REALNOU ZPETNOU VAZBU
				CALL 'ILIGHT_SCENA_REQUEST'(ILT_1NP_SCHODY_AREA) 
  }
}

BUTTON_EVENT[dvMyTP_01,nBTN_SCENY_2NP_SCHODY]					/// 1900-1915
{
  PUSH:
	 {
	 STACK_VAR INTEGER nBtnIdx
	 STACK_VAR CHAR SC[2]	
	 SC[1] = ILT_2NP_SCHODY_AREA
	 nBtnIdx = GET_LAST(nBTN_SCENY_2NP_SCHODY)
	 SWITCH(nBtnIdx)
		  {
		  CASE    1: {SC[2] = 32}			//PO
		  CASE    2: {SC[2] = 33}			
		  CASE    3: {SC[2] = 34}
		  CASE    4: {SC[2] = 35}
		  CASE    5: {SC[2] = 36}
		  CASE    6: {SC[2] = 37}
		  CASE    7: {SC[2] = 38}			//NE
		  CASE    8: {SC[2] = 39}  //CALL 'ILIGHT_SEQ_START' (SEQ_CIDLO_SCHODY,57		//Pozicni ON, 
		  CASE    9: {SC[2] = 69}
		  CASE   10: {SC[2] = 70}
		  CASE   11: {SC[2] = 71}
		  CASE   12: {SC[2] = 72}
		  CASE   13: {SC[2] = 73}
		  CASE   14: {SC[2] = 74}
		  CASE   15: {SC[2] = 75}
		  CASE   16: {SC[2] = 76}	// vlastni scena
		  }
	 }
	 RELEASE:
		  {
		  STACK_VAR INTEGER nBtnIdx
		  STACK_VAR CHAR SC[2]	
		  SC[1] = ILT_2NP_SCHODY_AREA
		  nBtnIdx = GET_LAST(nBTN_SCENY_2NP_SCHODY)
		  SWITCH(nBtnIdx)
				{
				CASE    1: {SC[2] = 32}			//PO
				CASE    2: {SC[2] = 33}			
				CASE    3: {SC[2] = 34}
				CASE    4: {SC[2] = 35}
				CASE    5: {SC[2] = 36}
				CASE    6: {SC[2] = 37}
				CASE    7: {SC[2] = 38}			//NE
				CASE    8: {SC[2] = 39}			//Pozicni
				CASE    9: {SC[2] = 69}
				CASE   10: {SC[2] = 70}
				CASE   11: {SC[2] = 71}
				CASE   12: {SC[2] = 72}
				CASE   13: {SC[2] = 73}
				CASE   14: {SC[2] = 74}
				CASE   15: {SC[2] = 75}
				CASE   16: {SC[2] = 76}
				CASE   17: {SC[2] = 1}
				CASE   18: {SC[2] = 1}
				}
				IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
					 { // VYVOLEJ SCENU
					 CALL 'ILIGHT_SCENA' (SC,1)
					 }
				ELSE
					 { // ULOZ SCENU
					 CALL 'ILIGHT_SAVE_SCENE' (SC)
					 SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA PRO SCHODY CISLO ',ITOA(nBtnIdx)"
					 SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
					 }
					 WAIT 10 // PRO REALNOU ZPETNOU VAZBU
						  CALL 'ILIGHT_SCENA_REQUEST'(ILT_2NP_SCHODY_AREA) 
		  }
}

//***************************************** SVETLA 1NP *******************************************************//
BUTTON_EVENT[dvMyTP_01,nBTN_1NP_SV_VCHOD]						/// 1000-1029
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_1NP_SV_VCHOD)
    SWITCH(nBtnIdx)
    {
		CASE    1:  {CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_CHODBA_05)}
		CASE    2:  {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_CHODBA_05)}
		CASE    3:  {CALL 'ILIGHT_CHANNEL_RAISE' (SV_1NP_CHODBA_07)}
		CASE    4:  {CALL 'ILIGHT_CHANNEL_LOWER' (SV_1NP_CHODBA_07)}
		CASE    5:  {CALL 'ILIGHT_CHANNEL_RAISE' (SV_1NP_CHODBA_08)}
		CASE    6:  {CALL 'ILIGHT_CHANNEL_LOWER' (SV_1NP_CHODBA_08)}
		CASE    7:  {CALL 'ILIGHT_CHANNEL_RAISE' (SV_1NP_CHODBA_09)}
		CASE    8:  {CALL 'ILIGHT_CHANNEL_LOWER' (SV_1NP_CHODBA_09)}
		CASE    9:  {CALL 'ILIGHT_CHANNEL_RAISE' (SV_1NP_CHODBA_05)}
		CASE   	10: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_1NP_CHODBA_05)}
		CASE    11: {CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_CHODBA_01)}
		CASE    12: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_CHODBA_01)}
		CASE    13: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_1NP_CHODBA_02)}
		CASE    14: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_1NP_CHODBA_02)}
		CASE    15: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_1NP_CHODBA_03)}
		CASE    16: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_1NP_CHODBA_03)}
		CASE    17: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_1NP_CHODBA_04)}
		CASE    18: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_1NP_CHODBA_04)}
		CASE    19: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_1NP_CHODBA_01)}
		CASE   	20: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_1NP_CHODBA_01)}
		CASE   	21: {CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_CHODBA_10)}		/// Budha
		CASE   	22: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_CHODBA_10)}		/// 1021 BUDHA OFF
		CASE   	25: {}
		CASE   	26: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_1NP_CHODBA_10)}
		CASE   	27: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_1NP_CHODBA_10)}
		CASE   	28: {}
		CASE   	29: {CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_CHODBA_01); CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_CHODBA_05); CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_CHODBA_10)}
		CASE   	30: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_CHODBA_01); CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_CHODBA_05); CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_CHODBA_10); CALL 'ILIGHT_CHANNEL_OFF2' (SV_1NP_CHODBA_11)}
    }
  }
  HOLD[2,REPEAT]:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_1NP_SV_VCHOD)
    SWITCH(nBtnIdx)
    {
		CASE    1: {}
		CASE    2: {}
		CASE    3: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_CHODBA_07)}
		CASE    4: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_CHODBA_07)}
		CASE    5: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_CHODBA_08)}
		CASE    6: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_CHODBA_08)}
		CASE    7: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_CHODBA_09)}
		CASE    8: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_CHODBA_09)}
		CASE    9: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_CHODBA_05)}
		CASE   	10: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_CHODBA_05)}
		CASE    11: {}
		CASE    12: {}
		CASE    13: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_CHODBA_02)}
		CASE    14: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_CHODBA_02)}
		CASE    15: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_CHODBA_03)}
		CASE    16: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_CHODBA_03)}
		CASE    17: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_CHODBA_04)}
		CASE    18: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_CHODBA_04)}
		CASE    19: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_CHODBA_01)}
		CASE   	20: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_CHODBA_01)}
		CASE    21: {BUDHA_AUTOMAT = FALSE}	//BUDHA ZAP MANUAL
		CASE    22: {}
		CASE    25: {}
		CASE   	26: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_CHODBA_10)}
		CASE   	27: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_CHODBA_10)}
		CASE    28: {}
		CASE    29: {}
		CASE    30: {}
    }
 
  }
}

BUTTON_EVENT[dvMyTP_01,1022]									/// BUDHA VSTUP SCENY
BUTTON_EVENT[dvMyTP_01,1023]									/// BUDHA VSTUP SCENY
BUTTON_EVENT[dvMyTP_01,1034]									/// BUDHA VSTUP AUTOMAT
{
	 PUSH:
		{
		 STACK_VAR INTEGER nBtnIdx
		nBtnIdx = GET_LAST(nBTN_1NP_SV_VCHOD)
		SWITCH(nBtnIdx)
			{
			CASE 1022:{
					BUDHA_AUTOMAT = FALSE
					nVSTUP = VS_1NP_BUDHA_01
					PERSIST_IN=VSTUP_1NP_BUDHA_A
					}
			CASE 1023:{
					BUDHA_AUTOMAT = FALSE
					nVSTUP = VS_1NP_BUDHA_02
					PERSIST_IN=VSTUP_1NP_BUDHA_B
					}
			CASE 1034:{
					BUDHA_AUTOMAT = TRUE
					nVSTUP = VS_1NP_BUDHA_03
					PERSIST_IN=VSTUP_1NP_BUDHA_C
					}
			}
		  IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
				{ 
				CALL 'VYVOLEJ_PERSIST_LEVEL' (CHANNEL_IN, PERSIST_IN)
				}
			ELSE
				{ 
				  UKLADANI_ACTIVE=TRUE
				  CALL 'ILIGHT_CHANNEL_REQUEST' (CHANNEL_IN)
				SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
				}
			}
}

BUTTON_EVENT[dvMyTP_01,1036]									/// SKLO VSTUP ON
BUTTON_EVENT[dvMyTP_01,1037]									/// SKLO VSTUP OFF
{
	 RELEASE:
		{
		SWITCH(BUTTON.INPUT.CHANNEL)
			{
			CASE 1036:{CALL 'ILIGHT_CHANNEL_ON2' (SV_1NP_CHODBA_11)}
			CASE 1037:{CALL 'ILIGHT_CHANNEL_OFF2' (SV_1NP_CHODBA_11)}
			WAIT 10
			CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_CHODBA_11)
			}
		}
}	

BUTTON_EVENT[dvMyTP_01,1038]									/// SKLO VSTUP SCENY BUTTON 1038-1042
BUTTON_EVENT[dvMyTP_01,1039]									/// SCENA 1-5 5=AUTOMAT
BUTTON_EVENT[dvMyTP_01,1040]
BUTTON_EVENT[dvMyTP_01,1041]
BUTTON_EVENT[dvMyTP_01,1042]
{
  PUSH:
	{
	STACK_VAR CHAR SC[2]
	SC[1] = ILT_1NP_VSTUP2_AREA
	SC[2] = 0
    SWITCH(BUTTON.INPUT.CHANNEL)
		{
		CASE 1038: {}
		CASE 1039: {}
		CASE 1040: {}
		CASE 1041: {}
		CASE 1042: {}
		}
	}
  RELEASE:
  {
	STACK_VAR CHAR SC[2]
	SC[1] = ILT_1NP_VSTUP2_AREA
	SC[2] = 0
    SWITCH(BUTTON.INPUT.CHANNEL)
    {
	  CASE 1038: {SC[2] = 1}
      CASE 1039: {SC[2] = 2}
      CASE 1040: {SC[2] = 3}
	  CASE 1041: {SC[2] = 4}
      CASE 1042: {SC[2] = 5}
	}
	IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
			{ // VYVOLEJ SCENU
				CALL 'ILIGHT_SCENA' (SC,1)
				WAIT 9
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_CHODBA_11)
			}
			ELSE
			{ // ULOZ SCENU
			  CALL 'ILIGHT_SAVE_SCENE' (SC)
				//SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA CISLO ',ITOA(BUTTON.INPUT.CHANNEL)"
				SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
				WAIT 9
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_CHODBA_11)
			}
  }
}

	
BUTTON_EVENT[dvMyTP_01,1043]									/// SKLO VSTUP NAHORU / DOLU
BUTTON_EVENT[dvMyTP_01,1044]									/// TLACITKA 1043-44
{
	 PUSH:
		{
		CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_CHODBA_11)
		}
	 RELEASE:
		{
		SWITCH(BUTTON.INPUT.CHANNEL)
			{
			CASE 1043:{CALL 'ILIGHT_CHANNEL_RAISE' (SV_1NP_CHODBA_11)}
			CASE 1044:{CALL 'ILIGHT_CHANNEL_LOWER' (SV_1NP_CHODBA_11)}
			WAIT 5
			CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_CHODBA_11)
			}
		}
			
	HOLD[2,REPEAT]:
		{
		SWITCH(BUTTON.INPUT.CHANNEL)
			{
			CASE 1043:{CALL 'ILIGHT_CHANNEL_RAISE' (SV_1NP_CHODBA_11)}
			CASE 1044:{CALL 'ILIGHT_CHANNEL_LOWER' (SV_1NP_CHODBA_11)}
			}
		}
}		

BUTTON_EVENT[dvMyTP_02,nBTN_SVETLA_WC]						// SVETLA WC PORT 2 250-300
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SV_ARR[2]
    nBtnIdx = GET_LAST(nBTN_SVETLA_WC)
	SV_ARR[1] = 255
	SWITCH(nBtnIdx)
		{
			CASE 1:  								// 200
			CASE 2: SV_ARR = SV_1NP_WC_01			// 
			CASE 3: 								// 	ON
			CASE 4: SV_ARR = SV_1NP_WC_05 			//	OFF
			CASE 5:									// 204
			CASE 6: SV_ARR = SV_1NP_WC_06 			// 205
			CASE 7: 								// 
			CASE 8: SV_ARR = SV_1NP_WC_07			// 
			CASE 9: 								// 
			CASE 10: SV_ARR = SV_1NP_WC_08 			// 209
			CASE 11: 								// 
			CASE 12: SV_ARR = SV_1NP_WC_05 			// 211
			CASE 13: 								// 
			CASE 14: SV_ARR = SV_1NP_WC_07 		/// 
			CASE 15: 								/// 
			CASE 16: SV_ARR = SV_1NP_WC_08  		/// 
		  }
		IF (SV_ARR[1]<>255)
			{
			CALL 'ILIGHT_CHANNEL_REQUEST' (SV_ARR)
			}
  }
  HOLD[2,REPEAT]:
	{
		STACK_VAR INTEGER nBtnIdx
		STACK_VAR CHAR SV_ARR[2]
		IF (BUTTON.HOLDTIME>=300) // JEN POKUD TLACITKO DRZENO DELE NEZ 300ms
			{
			nBtnIdx = GET_LAST(nBTN_SVETLA_WC)
			SV_ARR[1] = 255
			SWITCH(nBtnIdx)
			{
			CASE 1:  								// 200
			CASE 2: SV_ARR = SV_1NP_WC_01			// 
			CASE 3: 								// 	ON
			CASE 4: SV_ARR = SV_1NP_WC_05 			//	OFF
			CASE 5:									// 204
			CASE 6: SV_ARR = SV_1NP_WC_06 			// 205
			CASE 7: 								// 
			CASE 8: SV_ARR = SV_1NP_WC_07			// 
			CASE 9: 								// 
			CASE 10: SV_ARR = SV_1NP_WC_08 			// 209
			CASE 11: 								// 
			CASE 12: SV_ARR = SV_1NP_WC_05 			// 211
			CASE 13: 								// 
			CASE 14: SV_ARR = SV_1NP_WC_07 			/// 
			CASE 15: 								/// 
			CASE 16: SV_ARR = SV_1NP_WC_08  		/// 
			}
			IF (SV_ARR[1]<>255)
				{
				  tmpARCH = SV_ARR // DULEZITE, PROTOZE V CALL JE WAIT 5 !!!
					IF ((nBtnIdx MOD 2)>0) // LICHE CISLO - UP
					  CALL 'ILIGHT_CHANNEL_RAISE2' (tmpARCH)
					ELSE // ((nBtnIdx MOD 2)=0) // SUDE CISLO - DOWN
					  CALL 'ILIGHT_CHANNEL_LOWER2' (tmpARCH)
				}
			}
	}
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
		STACK_VAR CHAR SV_ARR[2]
		IF (BUTTON.HOLDTIME < 300) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 300ms
		{
			nBtnIdx = GET_LAST(nBTN_SVETLA_WC)
			SV_ARR[1] = 255
			SWITCH(nBtnIdx)
				{
				CASE 1:  								// 200
				CASE 2: SV_ARR = SV_1NP_WC_01			// 
				CASE 3: 								// 	ON
				CASE 4: SV_ARR = SV_1NP_WC_05 			//	OFF
				CASE 5:									// 204
				CASE 6: SV_ARR = SV_1NP_WC_06 			// 205
				CASE 7: 								// 
				CASE 8: SV_ARR = SV_1NP_WC_07			// 
				CASE 9: 								// 
				CASE 10: SV_ARR = SV_1NP_WC_08 			// 209
				CASE 11: 								// 
				CASE 12: SV_ARR = SV_1NP_WC_05 			// 211
				CASE 13: 								// 
				CASE 14: SV_ARR = SV_1NP_WC_06 			/// 
				CASE 15: 								/// 
				CASE 16: SV_ARR = SV_1NP_WC_07  		/// 
				}
				IF (SV_ARR[1]<>255)
					{
					IF ((nBtnIdx MOD 2)>0) // LICHE CISLO - ON
					  CALL 'ILIGHT_CHANNEL_ON' (SV_ARR)
					ELSE // ((nBtnIdx MOD 2)=0) // SUDE CISLO - OFF
					  CALL 'ILIGHT_CHANNEL_OFF' (SV_ARR)
					//CALL 'ILIGHT_CHANNEL_REQUEST' (SV_ARR)
					}
		}
	}
}

BUTTON_EVENT[dvMyTP_01,nBTN_SVETLA_1NP_OBYVAK]			/// SVETLA OBYVAK - 1120-1135  - VSE NEVYUZITO!!
{
	PUSH:
	{
	STACK_VAR INTEGER nBtnIdx
	nBtnIdx = GET_LAST(nBTN_SVETLA_1NP_OBYVAK)
	SWITCH(nBtnIdx)
	{
	    CASE 1:{ 																	/// 1120 STROP
		     CANCEL_WAIT 'OBYVAK_STROP_WAIT'
			 CALL 'ILIGHT_CHANNEL_ON2' (SV_1NP_OBYVAK_11)
		     } 
	    CASE 2:{ 																	/// 
		     CANCEL_WAIT 'OBYVAK_STROP_WAIT'
			 CALL 'ILIGHT_CHANNEL_OFF2' (SV_1NP_OBYVAK_11)
		     } 
	    CASE 3:{ 																	/// 
		     CANCEL_WAIT 'OBYVAK_STROP_WAIT'
			 CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_11)
		     } 
	    CASE 4:{ 																	/// 
		     CANCEL_WAIT 'OBYVAK_STROP_WAIT'
			 CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_11)
		     } 
	    CASE 5:{ 																	/// 1124 JIDELNA
			 CANCEL_WAIT 'OBYVAK_JIDELNA_WAIT'
		     CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_OBYVAK_12)
		     } 
	    CASE 6:	{
				CANCEL_WAIT 'OBYVAK_JIDELNA_WAIT'
				CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_OBYVAK_12)
				} 
	    CASE 7:{ 																	///
				CANCEL_WAIT 'OBYVAK_JIDELNA_WAIT'
		     CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_12)
		     } 
	    CASE 8:{ 																	/// 1127
			CANCEL_WAIT 'OBYVAK_JIDELNA_WAIT'
		     CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_12)
		     } 
	    CASE 9:{ 																	/// OBYVAK OBRAZ SEDACKA WHITE ON
		     CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_05)
		     } 
	    CASE 10:{ 																/// OBYVAK OBRAZ SEDACKA WHITE OFF
		     CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_05)
		     } 
	    CASE 11:{ 																/// OBYVAK OBRAZ SEDACKA RED ON
		     CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_06)
		     } 
	    CASE 12:{ 																/// OBYVAK OBRAZ SEDACKA RED OFF
		     CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_06)
		     } 
	    CASE 13:{ 																/// OBYVAK OBRAZ SEDACKA GREEN ON
		     CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_07)
		     } 
	    CASE 14:{ 																/// OBYVAK OBRAZ SEDACKA GREEN OFF
		     CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_07)
		     } 
	    CASE 15:{ 																/// OBYVAK OBRAZ SEDACKA BLUE ON
		     CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_08)
		     } 
	    CASE 16:{ 																/// OBYVAK OBRAZ SEDACKA BLUE OFF
		     CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_08)
		     } 
	}

	}
	 HOLD[2,REPEAT]:
	 {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_SVETLA_1NP_OBYVAK)
    SWITCH(nBtnIdx)
		  {
		CASE 1:{} 
	    CASE 2:{} 
	    CASE 3:{ 																	/// 
		     CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_11)
		     } 
	    CASE 4:{ 																	/// 
		     CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_11)
		     } 
	    CASE 5:{} 
	    CASE 6:{} 
	    CASE 7:{ 																	/// 
		     CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_12)
		     } 
	    CASE 8:{ 																	/// 1127
		     CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_12)
		     } 
		  CASE 9:{ 																	/// OBYVAK OBRAZ SEDACKA WHITE
					 CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_05)
					 }
		  CASE 10:{ 																/// OBYVAK OBRAZ SEDACKA WHITE
					 CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_05)
					 } 
		  CASE 11:{ 																/// OBYVAK OBRAZ SEDACKA RED
					 CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_06)
					 }
		  CASE 12:{ 																/// OBYVAK OBRAZ SEDACKA RED
					 CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_06)
					 } 
		  CASE 13:{ 																/// OBYVAK OBRAZ SEDACKA GREEN
					 CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_07)
					 }
		  CASE 14:{ 																/// OBYVAK OBRAZ SEDACKA GREEN
					 CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_07)
					 } 
		  CASE 15:{ 																/// OBYVAK OBRAZ SEDACKA BLUE
					 CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_08)
					 }
		  CASE 16:{ 																/// OBYVAK OBRAZ SEDACKA BLUE
					 CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_08)
					 } 
		  }
	 }
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_SVETLA_1NP_OBYVAK)
    SWITCH(nBtnIdx)
		  {
		  CASE 1: 
		  CASE 2: 
		  CASE 3:
		  CASE 4:
					CANCEL_WAIT 'OBYVAK_STROP_WAIT'
					WAIT 20 'OBYVAK_STROP_WAIT'
						{
						SEND_COMMAND dvMyTP_01, "'@PPK-1_obyvak_Strop'"
						}
		  CASE 5:
		  CASE 6: 
		  CASE 7: 
		  CASE 8:
					CANCEL_WAIT 'OBYVAK_JIDELNA_WAIT'
					WAIT 20 'OBYVAK_JIDELNA_WAIT'
						{
						SEND_COMMAND dvMyTP_01, "'@PPK-1_obyvak_Jidelna'"
						}
		  CASE 9:{ 																		/// OBYVAK OBRAZ SEDACKA WHITE
					 IF (BUTTON.HOLDTIME>=300) 
					 CALL 'ILIGHT_CHANNEL_STOP' (SV_1NP_OBYVAK_05)
					 ELSE
					 CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_OBYVAK_05)
					 WAIT 5
					 CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_05)
					 } 
		  CASE 10:{ 																	/// OBYVAK OBRAZ SEDACKA WHITE
					 IF (BUTTON.HOLDTIME>=300) 
					 CALL 'ILIGHT_CHANNEL_STOP' (SV_1NP_OBYVAK_05)
					 ELSE
					 CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_OBYVAK_05)
					 WAIT 5
					 CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_05)
					 } 
		  CASE 11:{ 																	/// OBYVAK OBRAZ SEDACKA
					 IF (BUTTON.HOLDTIME>=300) 
					 CALL 'ILIGHT_CHANNEL_STOP' (SV_1NP_OBYVAK_06)
					 ELSE
					 CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_OBYVAK_06)
					 WAIT 5
					 CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_06)
					 } 
		  CASE 12:{ 																	/// OBYVAK OBRAZ SEDACKA
					 IF (BUTTON.HOLDTIME>=300) 
					 CALL 'ILIGHT_CHANNEL_STOP' (SV_1NP_OBYVAK_06)
					 ELSE
					 CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_OBYVAK_06)
					 WAIT 5
					 CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_06)
					 } 
		  CASE 13:{ 																	/// OBYVAK OBRAZ SEDACKA 
					 IF (BUTTON.HOLDTIME>=300) 
					 CALL 'ILIGHT_CHANNEL_STOP' (SV_1NP_OBYVAK_07)
					 ELSE
					 CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_OBYVAK_07)
					 WAIT 5
					 CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_07)
					 } 
		  CASE 14:{ 																	/// OBYVAK OBRAZ SEDACKA 
					 IF (BUTTON.HOLDTIME>=300) 
					 CALL 'ILIGHT_CHANNEL_STOP' (SV_1NP_OBYVAK_07)
					 ELSE
					 CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_OBYVAK_07)
					 WAIT 5
					 CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_07)
					 } 
		  CASE 15:{ 																	/// OBYVAK OBRAZ SEDACKA 
					 IF (BUTTON.HOLDTIME>=300) 
					 CALL 'ILIGHT_CHANNEL_STOP' (SV_1NP_OBYVAK_08)
					 ELSE
					 CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_OBYVAK_08)
					 WAIT 5
					 CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_08)
					 } 
		  CASE 16:{ 																	/// OBYVAK OBRAZ SEDACKA
					 IF (BUTTON.HOLDTIME>=300) 
					 CALL 'ILIGHT_CHANNEL_STOP' (SV_1NP_OBYVAK_08)
					 ELSE
					 CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_OBYVAK_08)
					 WAIT 5
					 CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_08)
					 } 
				}
    }
}

BUTTON_EVENT[dvMyTP_01,nBTN_SVETLA_1NP_OBYVAK]			/// SVETLA OBYVAK - 1139-1144
{
	PUSH:
	{
	STACK_VAR INTEGER nBtnIdx
	nBtnIdx = GET_LAST(nBTN_SVETLA_1NP_OBYVAK)
	SWITCH(nBtnIdx)
		{
		CASE 20:	{CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_09)}	// 1139
		CASE 21:	{CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_09)}	// 1140
		CASE 22:	{CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_10)}	// 1141
		CASE 23:	{CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_10)}	// 1142
		CASE 24:	{CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_OBYVAK_09); CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_OBYVAK_10)}	// 1143 ON
		CASE 25:	{CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_OBYVAK_09); CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_OBYVAK_10)}	// 1144 OFF
		}
	}
	HOLD[2,REPEAT]:
	 {
	STACK_VAR INTEGER nBtnIdx
	nBtnIdx = GET_LAST(nBTN_SVETLA_1NP_OBYVAK)
	SWITCH(nBtnIdx)
		{
		CASE 20:	{CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_09)}	// 1139
		CASE 21:	{CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_09)}	// 1140
		CASE 22:	{CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_10)}	// 1141
		CASE 23:	{CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_10)}	// 1142
		}
	}
}

BUTTON_EVENT[dvMyTP_01,nBTN_SCENY_1NP_OBYVAK1]			/// SCENY OBYVAK1 - 30 BUTTONS 2300-2330
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
	  STACK_VAR CHAR SC[2]	  
	nBtnIdx = GET_LAST(nBTN_SCENY_1NP_OBYVAK1)
		//IF (RGB_1NP_OBYVAK1_SEKVENCE <> RGB_2LOZ_00) // BEZI-LI SEKVENCE, OKAMZITE UKONCI
		//CALL 'SEKVENCE_1NP_OBYVAK1_STOP'  /// mozno pridat do slozene zavorky i zhasnuti svetel 
		IF (nBtnIdx = 30) 
		{		  
			SC[1] = ILT_1NP_OBYVAK1_AREA
			SC[2] = 0
			CALL 'ILIGHT_SCENA' (SC,1) // ALL OFF		
			// JE OTAZKA NA REALNEM FFEDBACKU, JESTLI ZOBRAZIT SCENA:OFF, NEBO SCENA:0
			WAIT 10 // PRO REALNOU ZPETNOU VAZBU
				CALL 'ILIGHT_SCENA_REQUEST'(ILT_1NP_OBYVAK1_AREA) 
			// SEND_COMMAND dvMyTP_01,"'^TXT-52,0,','OFF'" // RADSI NECHAT NA REALNEM FEEDBACKU
		}
	}
  RELEASE:
	{
    STACK_VAR INTEGER nBtnIdx
	  STACK_VAR CHAR SC[2]	  
	nBtnIdx = GET_LAST(nBTN_SCENY_1NP_OBYVAK1)
		IF (nBtnIdx < 31) 
		{
			SC[1] = ILT_1NP_OBYVAK1_AREA
			SC[2] = TYPE_CAST(nBtnIdx) // VIM, ZE nBtnIdx JE URCITE MENSI NEZ 255, TUDIZ SI MOHU DOVOLIT PRETYPOVAT
			IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
			{ // VYVOLEJ SCENU
				CALL 'ILIGHT_SCENA' (SC,1)
				//SEND_COMMAND dvMyTP_01,"'^TXT-52,0,',ITOA(nBtnIdx)" // RADSI NECHAT NA REALNEM FEEDBACKU
			}
			ELSE
			{ // ULOZ SCENU
			  CALL 'ILIGHT_SAVE_SCENE' (SC)
				SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA V OOKOJI CISLO ',ITOA(nBtnIdx)"
				SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			}
			WAIT 10 // PRO REALNOU ZPETNOU VAZBU
				CALL 'ILIGHT_SCENA_REQUEST'(ILT_1NP_OBYVAK1_AREA) 
		}
	}
}


BUTTON_EVENT[dvMyTP_01,nBTN_SCENY_1NP_OBYVAK2]			/// SCENY OBYVAK2 - 30 BUTTONS 2340-2370
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
	  STACK_VAR CHAR SC[2]	  
    nBtnIdx = GET_LAST(nBTN_SCENY_1NP_OBYVAK2)
		//IF (RGB_1NP_OBYVAK1_SEKVENCE <> RGB_2LOZ_00) // BEZI-LI SEKVENCE, OKAMZITE UKONCI
		//CALL 'SEKVENCE_1NP_OBYVAK1_STOP'  /// mozno pridat do slozene zavorky i zhasnuti svetel 
		IF (nBtnIdx = 31) 
		{		  
			SC[1] = ILT_1NP_OBYVAK2_AREA
			SC[2] = 0
			CALL 'ILIGHT_SCENA' (SC,1) // ALL OFF		
			// JE OTAZKA NA REALNEM FFEDBACKU, JESTLI ZOBRAZIT SCENA:OFF, NEBO SCENA:0
			WAIT 10 // PRO REALNOU ZPETNOU VAZBU
				CALL 'ILIGHT_SCENA_REQUEST'(ILT_1NP_OBYVAK2_AREA) 
			// SEND_COMMAND dvMyTP_01,"'^TXT-52,0,','OFF'" // RADSI NECHAT NA REALNEM FEEDBACKU
		}
	}
  RELEASE:
	{
    STACK_VAR INTEGER nBtnIdx
	  STACK_VAR CHAR SC[2]	  
    nBtnIdx = GET_LAST(nBTN_SCENY_1NP_OBYVAK2)
		IF (nBtnIdx < 31) 
		{
			SC[1] = ILT_1NP_OBYVAK2_AREA
			SC[2] = TYPE_CAST(nBtnIdx) // VIM, ZE nBtnIdx JE URCITE MENSI NEZ 255, TUDIZ SI MOHU DOVOLIT PRETYPOVAT
			IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
			{ // VYVOLEJ SCENU
				CALL 'ILIGHT_SCENA' (SC,1)
				//SEND_COMMAND dvMyTP_01,"'^TXT-52,0,',ITOA(nBtnIdx)" // RADSI NECHAT NA REALNEM FEEDBACKU
			}
			ELSE
			{ // ULOZ SCENU
			  CALL 'ILIGHT_SAVE_SCENE' (SC)
				SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA V POKOJI CISLO ',ITOA(nBtnIdx)"
				SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			}
			WAIT 10 // PRO REALNOU ZPETNOU VAZBU
				CALL 'ILIGHT_SCENA_REQUEST'(ILT_1NP_OBYVAK2_AREA) 
		}
	}
}
BUTTON_EVENT[dvMyTP_02,nBTN_OBYVAK_PORT_2]  // PORT2 OBYVAK 150-175
{
  PUSH:
	{
	STACK_VAR CHAR SC[2]
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_OBYVAK_PORT_2)
    SWITCH(nBtnIdx)
		{
		CASE   1: {
				RGB_1NP_OBYVAK_MOD = RGB_1NP_OBYVAK_01
				RGB_1NP_OBYVAK_01_ACTIVE = TRUE
				RGB_1NP_OBYVAK_WAIT_TIME = 200
				RGB_1NP_OBYVAK_KROK = 1
				}
		CASE   2: {
				RGB_1NP_OBYVAK_MOD = RGB_1NP_OBYVAK_02
				RGB_1NP_OBYVAK_01B_ACTIVE = TRUE
				RGB_1NP_OBYVAK_WAIT_TIME = 200
				RGB_1NP_OBYVAK_KROK = 1
				}
		CASE   3:{
				RGB_1NP_OBYVAK_MOD = RGB_1NP_OBYVAK_00
				RGB_1NP_OBYVAK_01_ACTIVE = FALSE
				RGB_1NP_OBYVAK_01B_ACTIVE = FALSE
				SC[1] = ILT_1NP_OBYVAK1_AREA
				SC[2] = 0
				CALL 'ILIGHT_SCENA' (SC,1)
				}
		CASE   4: {}
		CASE   5: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_06)}
		CASE   6: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_06)}
		CASE   7: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_OBYVAK_06)}
		CASE   8: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_07)}
		CASE   9: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_07)}
		CASE  10: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_OBYVAK_07)}
		CASE  11: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_08)} 	//160
		CASE  12: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_08)}
		CASE  13: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_OBYVAK_08)}
		CASE  14: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_05)}
		CASE  15: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_05)}
		CASE  16: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_OBYVAK_05)}
		CASE  17: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_04)}
		CASE  18: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_04)}
		CASE  19: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_OBYVAK_04)}		//168
		}
	}
  HOLD[2,REPEAT]:
	{
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_OBYVAK_PORT_2)
    SWITCH(nBtnIdx)
		{
			CASE   1: {}
			CASE   2: {}
			CASE   3: {}
			CASE   4: {}
			CASE   5: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_06)}
			CASE   6: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_06)}
			CASE   7: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_OBYVAK_06)}
			CASE   8: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_07)}
			CASE   9: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_07)}
			CASE  10: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_OBYVAK_07)}
			CASE  11: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_08)}
			CASE  12: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_08)}
			CASE  13: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_OBYVAK_08)}
			CASE  14: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_05)}
			CASE  15: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_05)}
			CASE  16: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_OBYVAK_05)}
			CASE  17: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_04)}
			CASE  18: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_04)}
			CASE  19: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_OBYVAK_04)}
		}
	}
  RELEASE:
	{
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_OBYVAK_PORT_2)
    SWITCH(nBtnIdx)
		{
		  CASE   1: {CALL 'SEKVENCE_1NP_OBYVAK_1'}
		  CASE   2: {CALL 'SEKVENCE_1NP_OBYVAK_2'}
		  CASE   3: {CALL 'SEKVENCE_1NP_OBYVAK_STOP'}
		  CASE   4: {CALL 'REQUEST_CHANNELS_OBYVAK_RGB'}
		  CASE   5: {}
		  CASE   6: {}
		  CASE   7: {}
		  CASE   8: {}
		  CASE   9: {}
		  CASE  10: {}
		  CASE  11: {}
		  CASE  12: {}
		  CASE  13: {}
		  CASE  14: {}
		  CASE  15: {}
		  CASE  16: {}
		  CASE  17: {}
		  CASE  18: {}
		  CASE  19: {}
		}
	}
}
BUTTON_EVENT[dvMyTP_02,nBTN_ALL_VNP_CHODBA]		/// PORT 2 100-149 TLACITKA SCHODY - CHODBA
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_ALL_VNP_CHODBA)
    SWITCH(nBtnIdx)
    {
      CASE   1: {CALL 'ILIGHT_SEQ_START' (SEQ_CIDLO_SCHODY,57)}			/// 100 CIDLA SCHODY OFF
      CASE   2: {CALL 'SCHODY_SWITCH'}									/// 101 CIDLA SCHODY ON - PREPINANI PODLE DNE A CASU
      CASE   3: {CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_HALA_08)}			/// 102 VYPNOUT NAD VRETENEM
      CASE   4: {}
      CASE   5: {}
      CASE   6: {}
      CASE   7: {}
      CASE   8: {}
      CASE   9: {}
      CASE  10: {}
      CASE  11: {}
      CASE  12: {}
      CASE  13: {}
      CASE  14: {}
      CASE  15: {}
      CASE  16: {}
      CASE  17: {}
      CASE  18: {}
      CASE  19: {}
      CASE  20: {}
      CASE  21: {}
      CASE  22: {}
      CASE  23: {}
      CASE  24: {}
      CASE  25: {}
      CASE  26: {}
      CASE  27: {}
      CASE  28: {}
      CASE  29: {}
      CASE  30: {}
      CASE  31: {}
      CASE  32: {}
      CASE  33: {}
      CASE  34: {}
      CASE  35: {}
      CASE  36: {}
      CASE  37: {}
      CASE  38: {}
      CASE  39: {}
      CASE  40: {}
      CASE  41: {}
      CASE  42: {}
      CASE  43: {}
      CASE  44: {}
      CASE  45: {}
      CASE  46: {}
      CASE  47: {}
      CASE  48: {}
      CASE  49: {}
      CASE  50: {}
    }
  }
  HOLD[2,REPEAT]:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_ALL_VNP_CHODBA)
    SWITCH(nBtnIdx)
    {
      CASE   1: {}
      CASE   2: {}
      CASE   3: {}
      CASE   4: {}
      CASE   5: {}
      CASE   6: {}
      CASE   7: {}
      CASE   8: {}
      CASE   9: {}
      CASE  10: {}
      CASE  11: {}
      CASE  12: {}
      CASE  13: {}
      CASE  14: {}
      CASE  15: {}
      CASE  16: {}
      CASE  17: {}
      CASE  18: {}
      CASE  19: {}
      CASE  20: {}
      CASE  21: {}
      CASE  22: {}
      CASE  23: {}
      CASE  24: {}
      CASE  25: {}
      CASE  26: {}
      CASE  27: {}
      CASE  28: {}
      CASE  29: {}
      CASE  30: {}
      CASE  31: {}
      CASE  32: {}
      CASE  33: {}
      CASE  34: {}
      CASE  35: {}
      CASE  36: {}
      CASE  37: {}
      CASE  38: {}
      CASE  39: {}
      CASE  40: {}
      CASE  41: {}
      CASE  42: {}
      CASE  43: {}
      CASE  44: {}
      CASE  45: {}
      CASE  46: {}
      CASE  47: {}
      CASE  48: {}
      CASE  49: {}
      CASE  50: {}
    }
  }
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_ALL_VNP_CHODBA)
    SWITCH(nBtnIdx)
    {
      CASE   1: {}
      CASE   2: {}
      CASE   3: {}
      CASE   4: {}
      CASE   5: {}
      CASE   6: {}
      CASE   7: {}
      CASE   8: {}
      CASE   9: {}
      CASE  10: {}
      CASE  11: {}
      CASE  12: {}
      CASE  13: {}
      CASE  14: {}
      CASE  15: {}
      CASE  16: {}
      CASE  17: {}
      CASE  18: {}
      CASE  19: {}
      CASE  20: {}
      CASE  21: {}
      CASE  22: {}
      CASE  23: {}
      CASE  24: {}
      CASE  25: {}
      CASE  26: {}
      CASE  27: {}
      CASE  28: {}
      CASE  29: {}
      CASE  30: {}
      CASE  31: {}
      CASE  32: {}
      CASE  33: {}
      CASE  34: {}
      CASE  35: {}
      CASE  36: {}
      CASE  37: {}
      CASE  38: {}
      CASE  39: {}
      CASE  40: {}
      CASE  41: {}
      CASE  42: {}
      CASE  43: {}
      CASE  44: {}
      CASE  45: {}
      CASE  46: {}
      CASE  47: {}
      CASE  48: {}
      CASE  49: {}
      CASE  50: {}
    }
  }
}

BUTTON_EVENT[dvMyTP_02,169]		/// OBYVAK NAD POHOVKOU SCENA 1
{
 RELEASE:
		  {
		  STACK_VAR CHAR SC[2]	
			SC[1] = ILT_1NP_OBYVAK1_AREA
			SC[2] = 130
			IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
					 { // VYVOLEJ SCENU
					 CALL 'ILIGHT_SCENA' (SC,1)
					 }
				ELSE
					 { // ULOZ SCENU
					 CALL 'ILIGHT_SAVE_SCENE' (SC)
					 SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
					 }
					 WAIT 10 // PRO REALNOU ZPETNOU VAZBU
						  CALL 'ILIGHT_SCENA_REQUEST'(ILT_1NP_OBYVAK1_AREA) 
		  }
}
BUTTON_EVENT[dvMyTP_02,171]		/// OBYVAK NAD POHOVKOU SCENA 2
{
 RELEASE:
		  {
		  STACK_VAR CHAR SC[2]	
			SC[1] = ILT_1NP_OBYVAK1_AREA
			SC[2] = 130
			IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
					 { // VYVOLEJ SCENU
					 CALL 'ILIGHT_SCENA' (SC,1)
					 }
				ELSE
					 { // ULOZ SCENU
					 CALL 'ILIGHT_SAVE_SCENE' (SC)
					 SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
					 }
					 WAIT 10 // PRO REALNOU ZPETNOU VAZBU
						  CALL 'ILIGHT_SCENA_REQUEST'(ILT_1NP_OBYVAK1_AREA) 
		  }
}

BUTTON_EVENT[dvMyTP_02,176]									/// KAMEN STRED VLASTNI SCENA 1
{
	RELEASE:
		{
		IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
				{ 
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_10, OB_KAMEN_STRED_2C)
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_09, OB_KAMEN_STRED_1C)
				}
			ELSE
				{ 
				nVSTUP = SCENA_OB_2C
				UKLADANI_ACTIVE=TRUE
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_10)
				WAIT 20
					{
					nVSTUP = SCENA_OB_1C
					UKLADANI_ACTIVE=TRUE
					CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_09)
					SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
					}
				}
		}
}
BUTTON_EVENT[dvMyTP_02,nBTN_OBYVAK_PORT_2]  // PORT2 OBYVAK SCENY KAMENY 177-179 STRED STUDENA	//BACHA TO JE PRO VSECHNY, NUTNO PREDELAT NA KONKRETNI TLACITKA!!
{
	PUSH:
		{
		STACK_VAR INTEGER nBtnIdx
		nBtnIdx = GET_LAST(nBTN_OBYVAK_PORT_2)
		CHANNEL_IN=SV_1NP_OBYVAK_10
		SWITCH(nBtnIdx)
			{
			CASE  28: {PERSIST_IN=OB_KAMEN_STRED_2E}	// 177 DOLNI
			CASE  29: {PERSIST_IN=OB_KAMEN_STRED_2F}	// 178 HORNI
			CASE  30: {PERSIST_IN=OB_KAMEN_STRED_2G}	// 179 TMAVA
			}
		}
	RELEASE:
		{
		STACK_VAR INTEGER nBtnIdx
		nBtnIdx = GET_LAST(nBTN_OBYVAK_PORT_2)
		SWITCH(nBtnIdx)
			{
			CASE  28: {nVSTUP = SCENA_OB_2E}		// 177 DOLNI
			CASE  29: {nVSTUP = SCENA_OB_2F}		// 178 HORNI
			CASE  30: {nVSTUP = SCENA_OB_2G}		// 179 TMAVA
			}
			IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
				{ 
				CALL 'VYVOLEJ_PERSIST_LEVEL' (CHANNEL_IN, PERSIST_IN)
				}
			ELSE
				{ 
				  UKLADANI_ACTIVE=TRUE
				  CALL 'ILIGHT_CHANNEL_REQUEST' (CHANNEL_IN)
				SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
				}
		}
}

BUTTON_EVENT[dvMyTP_02,180]									/// KAMEN STRED VLASTNI SCENA 2
{	
	RELEASE:
		{
		IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
				{ 
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_10, OB_KAMEN_STRED_2D)
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_09, OB_KAMEN_STRED_1D)
				}
			ELSE
				{ 
				nVSTUP = SCENA_OB_2D
				UKLADANI_ACTIVE=TRUE
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_10)
				WAIT 20
					{
					nVSTUP = SCENA_OB_1D
					UKLADANI_ACTIVE=TRUE
					CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_09)
					SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
					}
				}
		}
}
BUTTON_EVENT[dvMyTP_02,181]									/// KAMEN STRED SRDCE TEPLA SPODNI
{	
	RELEASE:
		{
		IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
				{ 
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_10, OB_KAMEN_STRED_2H)
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_09, OB_KAMEN_STRED_1E)
				}
			ELSE
				{ 
				nVSTUP = SCENA_OB_2H
				UKLADANI_ACTIVE=TRUE
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_10)
				WAIT 20
					{
					nVSTUP = SCENA_OB_1E
					UKLADANI_ACTIVE=TRUE
					CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_09)
					SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
					}
				}
		}
}
BUTTON_EVENT[dvMyTP_02,182]									/// KAMEN STRED SRDCE TEPLA HORNI
{	
	RELEASE:
		{
		IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
				{ 
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_10, OB_KAMEN_STRED_2I)
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_09, OB_KAMEN_STRED_1F)
				}
			ELSE
				{ 
				nVSTUP = SCENA_OB_2I
				UKLADANI_ACTIVE=TRUE
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_10)
				WAIT 20
					{
					nVSTUP = SCENA_OB_1F
					UKLADANI_ACTIVE=TRUE
					CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_09)
					SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
					}
				}
		}
}

BUTTON_EVENT[dvMyTP_02,183]									/// KAMEN STRED SRDCE TEPLA TMAVA
{	
	RELEASE:
		{
		IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
				{ 
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_10, OB_KAMEN_STRED_2J)
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_09, OB_KAMEN_STRED_1G)
				}
			ELSE
				{ 
				nVSTUP = SCENA_OB_2J
				UKLADANI_ACTIVE=TRUE
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_10)
				WAIT 20
					{
					nVSTUP = SCENA_OB_1G
					UKLADANI_ACTIVE=TRUE
					CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_09)
					SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
					}
				}
		}
}	
 	 
BUTTON_EVENT[dvMyTP_02,184]									/// KAMEN PRAVA VLASTNI SCENA 1
{
	RELEASE:
		{
		IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
				{ 
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_17, OB_KAMEN_PRAVA_2C)		//17 studena
				wait 5
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_16, OB_KAMEN_PRAVA_1C)		//16 tepla
				}
			ELSE
				{ 
				nVSTUP = SCENA_OB_4C
				UKLADANI_ACTIVE=TRUE
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_17)
				WAIT 20
					{
					nVSTUP = SCENA_OB_3C
					UKLADANI_ACTIVE=TRUE
					CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_16)
					SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
					}
				}
		}
}
BUTTON_EVENT[dvMyTP_02,188]									/// KAMEN PRAVA VLASTNI SCENA 2
{	
	RELEASE:
		{
		IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
				{ 
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_17, OB_KAMEN_PRAVA_2D)	// Studena
				wait 5
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_16, OB_KAMEN_PRAVA_1D)	// Tepla
				}
			ELSE
				{ 
				nVSTUP = SCENA_OB_4D
				UKLADANI_ACTIVE=TRUE
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_17)
				WAIT 20
					{
					nVSTUP = SCENA_OB_3D
					UKLADANI_ACTIVE=TRUE
					CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_16)
					SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
					}
				}
		}
}
BUTTON_EVENT[dvMyTP_02,nBTN_OBYVAK_PORT_2]  // PORT2 OBYVAK SCENY KAMENY 185-187 PRAVA STUDENA
{
	PUSH:
		{
		STACK_VAR INTEGER nBtnIdx
		nBtnIdx = GET_LAST(nBTN_OBYVAK_PORT_2)
		CHANNEL_IN=SV_1NP_OBYVAK_17
		SWITCH(nBtnIdx)
			{
			CASE  36: {PERSIST_IN=OB_KAMEN_PRAVA_2E}	// 185 DOLNI
			CASE  37: {PERSIST_IN=OB_KAMEN_PRAVA_2F}	// 186 HORNI
			CASE  38: {PERSIST_IN=OB_KAMEN_PRAVA_2G}	// 187 TMAVA
			}
		}
	RELEASE:
		{
		STACK_VAR INTEGER nBtnIdx
		nBtnIdx = GET_LAST(nBTN_OBYVAK_PORT_2)
		SWITCH(nBtnIdx)
			{
			CASE  36: {nVSTUP = SCENA_OB_4E}		
			CASE  37: {nVSTUP = SCENA_OB_4F}		
			CASE  38: {nVSTUP = SCENA_OB_4G}		
			}
			IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
				{ 
				CALL 'VYVOLEJ_PERSIST_LEVEL' (CHANNEL_IN, PERSIST_IN)
				}
			ELSE
				{ 
				  UKLADANI_ACTIVE=TRUE
				  CALL 'ILIGHT_CHANNEL_REQUEST' (CHANNEL_IN)
				//SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
				}
		}
}

BUTTON_EVENT[dvMyTP_02,nBTN_OBYVAK_PORT_2]  // PORT2 OBYVAK SCENY KAMENY 189-191 PRAVA TEPLA
{
	PUSH:
		{
		STACK_VAR INTEGER nBtnIdx
		nBtnIdx = GET_LAST(nBTN_OBYVAK_PORT_2)
		CHANNEL_IN=SV_1NP_OBYVAK_16
		SWITCH(nBtnIdx)
			{
			CASE  40: {PERSIST_IN=OB_KAMEN_PRAVA_1E}	// 189 DOLNI
			CASE  41: {PERSIST_IN=OB_KAMEN_PRAVA_1F}	// 190 HORNI
			CASE  42: {PERSIST_IN=OB_KAMEN_PRAVA_1G}	// 191 TMAVA
			}
		}
	RELEASE:
		{
		STACK_VAR INTEGER nBtnIdx
		nBtnIdx = GET_LAST(nBTN_OBYVAK_PORT_2)
		SWITCH(nBtnIdx)
			{
			CASE  40: {nVSTUP = SCENA_OB_3E}
			CASE  41: {nVSTUP = SCENA_OB_3F}
			CASE  42: {nVSTUP = SCENA_OB_3G}
			}
			IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
				{ 
				CALL 'VYVOLEJ_PERSIST_LEVEL' (CHANNEL_IN, PERSIST_IN)
				}
			ELSE
				{ 
				  UKLADANI_ACTIVE=TRUE
				  CALL 'ILIGHT_CHANNEL_REQUEST' (CHANNEL_IN)
				//SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
				}
		}
}

BUTTON_EVENT[dvMyTP_02,192]									/// KAMEN LEVA VLASTNI SCENA 1
{
	RELEASE:
		{
		IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
				{ 
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_15, OB_KAMEN_LEVA_2C)
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_14, OB_KAMEN_LEVA_1C)
				}
			ELSE
				{ 
				nVSTUP = SCENA_OB_6C
				UKLADANI_ACTIVE=TRUE
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_15)
				WAIT 20
					{
					nVSTUP = SCENA_OB_5C
					UKLADANI_ACTIVE=TRUE
					CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_14)
					SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
					}
				}
		}
}
BUTTON_EVENT[dvMyTP_02,193]									/// KAMEN LEVA VLASTNI SCENA 2
{	
	RELEASE:
		{
		IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
				{ 
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_15, OB_KAMEN_LEVA_2D)
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_14, OB_KAMEN_LEVA_1D)
				}
			ELSE
				{ 
				nVSTUP = SCENA_OB_6D
				UKLADANI_ACTIVE=TRUE
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_15)
				WAIT 20
					{
					nVSTUP = SCENA_OB_5D
					UKLADANI_ACTIVE=TRUE
					CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_14)
					SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
					}
				}
		}
}

BUTTON_EVENT[dvMyTP_02,194]									/// KAMEN VSE SPOLECNA SCENA 1
{
	RELEASE:
		{
		IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
			{
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_10, OB_KAMEN_STRED_2A)
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_09, OB_KAMEN_STRED_1A)
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_17, OB_KAMEN_PRAVA_2A)
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_16, OB_KAMEN_PRAVA_1A)
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_15, OB_KAMEN_LEVA_2A)
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_14, OB_KAMEN_LEVA_1A)
			}
		ELSE
			{
			SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			nVSTUP = SCENA_OB_6A
			UKLADANI_ACTIVE=TRUE
			CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_15)
			WAIT 10
				{
				nVSTUP = SCENA_OB_5A
				UKLADANI_ACTIVE=TRUE
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_14)
				WAIT 10
					{
					nVSTUP = SCENA_OB_4A
					UKLADANI_ACTIVE=TRUE
					CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_17)
					WAIT 10
						{
						nVSTUP = SCENA_OB_3A
						UKLADANI_ACTIVE=TRUE
						CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_16)
						WAIT 10
							{
							nVSTUP = SCENA_OB_2A
							UKLADANI_ACTIVE=TRUE
							CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_10)
							WAIT 10
								{
								nVSTUP = SCENA_OB_1A
								UKLADANI_ACTIVE=TRUE
								CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_09)
								}
							}
						}
					}
				}
			}
		}
}
BUTTON_EVENT[dvMyTP_02,195]									/// KAMEN VSE SPOLECNA SCENA 1
{
	RELEASE:
		{
		IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
			{
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_10, OB_KAMEN_STRED_2B)
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_09, OB_KAMEN_STRED_1B)
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_17, OB_KAMEN_PRAVA_2B)
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_16, OB_KAMEN_PRAVA_1B)
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_15, OB_KAMEN_LEVA_2B)
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_14, OB_KAMEN_LEVA_1B)
			}
		ELSE
			{
			SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			nVSTUP = SCENA_OB_6B
			UKLADANI_ACTIVE=TRUE
			CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_15)
			WAIT 10
				{
				nVSTUP = SCENA_OB_5B
				UKLADANI_ACTIVE=TRUE
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_14)
				WAIT 10
					{
					nVSTUP = SCENA_OB_4B
					UKLADANI_ACTIVE=TRUE
					CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_17)
					WAIT 10
						{
						nVSTUP = SCENA_OB_3B
						UKLADANI_ACTIVE=TRUE
						CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_16)
						WAIT 10
							{
							nVSTUP = SCENA_OB_2B
							UKLADANI_ACTIVE=TRUE
							CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_10)
							WAIT 10
								{
								nVSTUP = SCENA_OB_1B
								UKLADANI_ACTIVE=TRUE
								CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_09)
								}
							}
						}
					}
				}
			}
		}
}
BUTTON_EVENT[dvMyTP_02,nBTN_OBYVAK_PORT_2]  // PORT2 OBYVAK SEQUENCE KAMENY 200-230
{
	PUSH:
		{
		STACK_VAR INTEGER nBtnIdx
		STACK_VAR CHAR SC[2]
		SC[1] = ILT_1NP_OBYVAK2_AREA
		SC[2] = 0
		nBtnIdx = GET_LAST(nBTN_OBYVAK_PORT_2)
		SWITCH(nBtnIdx)
			{
			CASE  51: {CALL 'SEKVENCE_1NP_KRB_VPRAVO_NO_ACTIVE'}		// 200 
			CASE  52: {CALL 'SEKVENCE_1NP_KRB_VPRAVO_NO_ACTIVE'}
			CASE  53: {CALL 'SEKVENCE_1NP_KRB_VPRAVO_NO_ACTIVE'}		// KOMBI
			CASE  54: {CALL 'SEKVENCE_1NP_KRB_VPRAVO_NO_ACTIVE'}
			CASE  55: {CALL 'SEKVENCE_1NP_KRB_VPRAVO_NO_ACTIVE'}
			CASE  56: {CALL 'SEKVENCE_1NP_KRB_VPRAVO_NO_ACTIVE'}		// POMALA KOMBI
			CASE  57: {CALL 'SEKVENCE_1NP_KRB_VPRAVO_NO_ACTIVE'}		// 206 SRDCE PRAVE 1
			CASE  58: {CALL 'SEKVENCE_1NP_KRB_VPRAVO_NO_ACTIVE'}		// SRDCE PRAVE 2
			CASE  59: {CALL 'SEKVENCE_1NP_KRB_VPRAVO_NO_ACTIVE'}		// SRDCE PRAVE 3
			CASE  60: {CALL 'SEKVENCE_1NP_KRB_VPRAVO_NO_ACTIVE'}		// 209 SRDCE PRAVE 4
			CASE  61: {CALL 'SEKVENCE_1NP_KRB_VPRAVO_STOP'}				// 210 PRAVA OFF
			CASE  62: {CALL 'SEKVENCE_1NP_KRB_VLEVO_NO_ACTIVE'}			
			CASE  63: {CALL 'SEKVENCE_1NP_KRB_VLEVO_NO_ACTIVE'}
			CASE  64: {CALL 'SEKVENCE_1NP_KRB_VLEVO_NO_ACTIVE'}
			CASE  65: {CALL 'SEKVENCE_1NP_KRB_VLEVO_NO_ACTIVE'}
			CASE  66: {CALL 'SEKVENCE_1NP_KRB_VLEVO_NO_ACTIVE'}
			CASE  67: {CALL 'SEKVENCE_1NP_KRB_VLEVO_NO_ACTIVE'}
			CASE  68: {CALL 'SEKVENCE_1NP_KRB_VLEVO_STOP'}
			CASE  69: {CALL 'SEKVENCE_1NP_KRB_VSTREDU_NO_ACTIVE'}		// !! STRED 218 
			CASE  70: {CALL 'SEKVENCE_1NP_KRB_VSTREDU_NO_ACTIVE'}
			CASE  71: {CALL 'SEKVENCE_1NP_KRB_VSTREDU_NO_ACTIVE'}		// KOMBI
			CASE  72: {CALL 'SEKVENCE_1NP_KRB_VSTREDU_NO_ACTIVE'}
			CASE  73: {CALL 'SEKVENCE_1NP_KRB_VSTREDU_NO_ACTIVE'}
			CASE  74: {CALL 'SEKVENCE_1NP_KRB_VSTREDU_NO_ACTIVE'}		// POMALA KOMBI
			CASE  75: {CALL 'SEKVENCE_1NP_KRB_VSTREDU_NO_ACTIVE'}		// SRDCE  1
			CASE  76: {CALL 'SEKVENCE_1NP_KRB_VSTREDU_NO_ACTIVE'}		// SRDCE  2
			CASE  77: {CALL 'SEKVENCE_1NP_KRB_VSTREDU_NO_ACTIVE'}		// SRDCE  3
			CASE  78: {CALL 'SEKVENCE_1NP_KRB_VSTREDU_NO_ACTIVE'}		// 227 SRDCE  4
			CASE  79: {CALL 'SEKVENCE_1NP_KRB_VSTREDU_STOP'}				// 228 STRED OFF
			CASE  80: {}
			CASE  81: {}
			}
		}
	RELEASE:
		{
		STACK_VAR INTEGER nBtnIdx
		STACK_VAR CHAR SC[2]
		SC[1] = ILT_1NP_OBYVAK2_AREA
		SC[2] = 0
		nBtnIdx = GET_LAST(nBTN_OBYVAK_PORT_2)
		SWITCH(nBtnIdx)
			{
			CASE  51: {													// 200 
						WAIT 15
							{
							STM_KRB_PRAVA_ON=TRUE 
							STM_1NP_KRB_PRAVA_02_ACTIVE=TRUE 
							CALL '1NP_KRB_VPRAVO_TIMER' (230)
							}
						}
			CASE  52: {													// 201 
						WAIT 15
							{
							STM_KRB_PRAVA_ON=TRUE 
							STM_1NP_KRB_PRAVA_01_ACTIVE=TRUE 
							CALL '1NP_KRB_VPRAVO_TIMER' (230)
							}
						}
			CASE  53: {													
						WAIT 15
							{
							STM_KRB_PRAVA_ON=TRUE 
							STM_1NP_KRB_PRAVA_03_ACTIVE=TRUE 
							CALL '1NP_KRB_VPRAVO_TIMER' (198)
							}
						}
			CASE  54: {													
						WAIT 15
							{
							STM_KRB_PRAVA_ON=TRUE 
							STM_1NP_KRB_PRAVA_05_ACTIVE=TRUE 
							CALL '1NP_KRB_VPRAVO_TIMER' (187)
							}
						}
			CASE  55: {													
						WAIT 15
							{
							STM_KRB_PRAVA_ON=TRUE 
							STM_1NP_KRB_PRAVA_04_ACTIVE=TRUE 
							CALL '1NP_KRB_VPRAVO_TIMER' (187)
							}
						}	
			CASE  56: {															// POMALA KOMBI									
						WAIT 15
							{
							STM_KRB_PRAVA_ON=TRUE 
							STM_1NP_KRB_PRAVA_06_ACTIVE=TRUE 
							CALL '1NP_KRB_VPRAVO_TIMER' (255)
							}
						}				
			CASE  57: {																// 206 SRDCE PRAVE STUDENA SVETLA
						WAIT 15
							{
							STM_KRB_PRAVA_ON=TRUE 
							STM_1NP_KRB_PRAVA_07_ACTIVE=TRUE
							SQ_OBYV_KAM_PRAVA=OB_1NP_KPRAVA_03
							CALL 'SrdceTep_ON'
							
							}
						}			
			CASE  58: {
						WAIT 15 
							{
							STM_KRB_PRAVA_ON=TRUE
							STM_1NP_KRB_PRAVA_08_ACTIVE=TRUE
							SQ_OBYV_KAM_PRAVA=OB_1NP_KPRAVA_04
							CALL 'SrdceTep_ON'
							}
						}				// SRDCE PRAVE 2
			CASE  59: {
						WAIT 15 
							{
							STM_KRB_PRAVA_ON=TRUE
							STM_1NP_KRB_PRAVA_09_ACTIVE=TRUE
							SQ_OBYV_KAM_PRAVA=OB_1NP_KPRAVA_01
							CALL 'SrdceTep_ON'
							}
						}				// SRDCE PRAVE 3
			CASE  60: {
						WAIT 15 
							{
							STM_KRB_PRAVA_ON=TRUE 
							STM_1NP_KRB_PRAVA_10_ACTIVE=TRUE
							SQ_OBYV_KAM_PRAVA=OB_1NP_KPRAVA_02
							CALL 'SrdceTep_ON'
							}
						}				// 209 SRDCE PRAVE 4
			CASE  61: {SQ_OBYV_KAM_PRAVA=OB_1NP_KPRAVA_00}						// 210 PRAVA OFF
			CASE  62: {															// 211 LEVA TEPLA RYCHKE
						WAIT 15
							{
							STM_KRB_LEVA_ON=TRUE 
							STM_1NP_KRB_LEVA_02_ACTIVE=TRUE 
							CALL '1NP_KRB_VLEVO_TIMER' (230)
							}
						}
			CASE  63: {													// 212 LEVA STUDENA RYCHLE
						WAIT 15
							{
							STM_KRB_LEVA_ON=TRUE 
							STM_1NP_KRB_LEVA_01_ACTIVE=TRUE 
							CALL '1NP_KRB_VLEVO_TIMER' (230)
							}
						}
			CASE  64: {													// 213 LEVA KOMBI RYCHLE
						WAIT 15
							{
							STM_KRB_LEVA_ON=TRUE 
							STM_1NP_KRB_LEVA_03_ACTIVE=TRUE 
							CALL '1NP_KRB_VLEVO_TIMER' (198)
							}
						}
			CASE  65: {													// 214 LEVA TEPLA POMALU
						WAIT 15
							{
							STM_KRB_LEVA_ON=TRUE 
							STM_1NP_KRB_LEVA_05_ACTIVE=TRUE 
							CALL '1NP_KRB_VLEVO_TIMER' (187)
							}
						}
			CASE  66: {													// 215 LEVA STUDENA POMALU
						WAIT 15
							{
							STM_KRB_LEVA_ON=TRUE 
							STM_1NP_KRB_LEVA_04_ACTIVE=TRUE 
							CALL '1NP_KRB_VLEVO_TIMER' (187)
							}
						}
			CASE  67: {													// 216 LEVA KOMBI POMALU
						WAIT 15
							{
							STM_KRB_LEVA_ON=TRUE 
							STM_1NP_KRB_LEVA_06_ACTIVE=TRUE 
							CALL '1NP_KRB_VLEVO_TIMER' (255)
							}
						}
			CASE  68: {}												/// 217 LEVA OFF
			CASE  69: {													// !!! 	218 STRED
						WAIT 15
							{
							STM_KRB_STRED_ON=TRUE 
							STM_1NP_KRB_STRED_02_ACTIVE=TRUE 
							CALL '1NP_KRB_VSTREDU_TIMER' (230)
							}
						}
			CASE  70: {													// 219 
						WAIT 15
							{
							STM_KRB_STRED_ON=TRUE 
							STM_1NP_KRB_STRED_01_ACTIVE=TRUE 
							CALL '1NP_KRB_VSTREDU_TIMER' (230)
							}
						}
			CASE  71: {													
						WAIT 15
							{
							STM_KRB_STRED_ON=TRUE; 
							STM_1NP_KRB_STRED_03_ACTIVE=TRUE 
							CALL '1NP_KRB_VSTREDU_TIMER' (198)
							}
						}
			CASE  72: {													
						WAIT 15
							{
							STM_KRB_STRED_ON=TRUE 
							STM_1NP_KRB_STRED_05_ACTIVE=TRUE 
							CALL '1NP_KRB_VSTREDU_TIMER' (187)
							}
						}
			CASE  73: {													
						WAIT 15
							{
							STM_KRB_STRED_ON=TRUE 
							STM_1NP_KRB_STRED_04_ACTIVE=TRUE 
							CALL '1NP_KRB_VSTREDU_TIMER' (187)
							}
						}	
			CASE  74: {															// POMALA KOMBI									
						WAIT 15
							{
							STM_KRB_STRED_ON=TRUE 
							STM_1NP_KRB_STRED_06_ACTIVE=TRUE 
							CALL '1NP_KRB_VSTREDU_TIMER' (255)
							}
						}				
			CASE  75: {
						WAIT 15
							{						
							STM_KRB_STRED_ON=TRUE
							STM_1NP_KRB_STRED_07_ACTIVE=TRUE 
							SQ_OBYV_KAM_STRED=OB_1NP_KSTRED_03
							CALL 'SrdceTep_ON'
							}
						}				// SRDCE STRED 1
			CASE  76: {
						WAIT 15 
							{
							STM_KRB_STRED_ON=TRUE
							STM_1NP_KRB_STRED_08_ACTIVE=TRUE
							SQ_OBYV_KAM_STRED=OB_1NP_KSTRED_04
							CALL 'SrdceTep_ON'
							}
						}				// SRDCE STRED 2
			CASE  77: {
						WAIT 15
							{
							STM_KRB_STRED_ON=TRUE 
							STM_1NP_KRB_STRED_09_ACTIVE=TRUE
							SQ_OBYV_KAM_STRED=OB_1NP_KSTRED_01
							CALL 'SrdceTep_ON'
							}
						}				// SRDCE STRED 3
			CASE  78: {
						WAIT 15 
							{
							STM_KRB_STRED_ON=TRUE 
							STM_1NP_KRB_STRED_10_ACTIVE=TRUE
							SQ_OBYV_KAM_STRED=OB_1NP_KSTRED_02
							CALL 'SrdceTep_ON'
							}
						}				//  SRDCE STRED 4
			CASE  79: {SQ_OBYV_KAM_STRED=OB_1NP_KSTRED_00; CALL 'SrdceTep_OFF'}														// STRED OFF
			CASE  80: {}
			CASE  81: {}
			}
			WAIT 20
			CALL 'REQUEST_CHANNELS_1NP_OBYVAK_KAMENY'
		}
}

BUTTON_EVENT[dvMyTP_01,nBTN_1NPOBYV_KAMENY]				/// OBYVAK KAMENY + BUDHA 3900-3934
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_1NPOBYV_KAMENY)
    SWITCH(nBtnIdx)
    {
		CASE 	1:	{CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_OBYVAK_16); CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_OBYVAK_17)} // 3900
		CASE 	2:	{CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_OBYVAK_16); CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_OBYVAK_17); STM_KRB_PRAVA_ON=FALSE} 
		CASE 	3:	{CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_16)} 		// 3902 Kamen vpravo aquamarin tepla+
		CASE 	4:	{CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_16)} 
		CASE    5: 	{CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_17)}		// 3904 Kamen vpravo aquamarin studena+
		CASE    6: 	{CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_17)}		// 3905 
		CASE    7: {STM_KRB_PRAVA_KROK=1; STM_KRB_PRAVA_ON=TRUE}
		CASE    8: {STM_KRB_PRAVA_KROK=1; STM_KRB_PRAVA_ON=TRUE}
		CASE    9: {}
		CASE 	10:	{CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_OBYVAK_14); CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_OBYVAK_15)} // 3909 NAD SEDACKOU
		CASE 	11:	{CALL 'SEKVENCE_1NP_KRB_VLEVO_STOP'; STM_KRB_LEVA_ON=FALSE}  
		CASE 	12:	{CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_14)} 
		CASE 	13:	{CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_14)} 
		CASE    14: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_15)}
		CASE    15: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_15)}	// 3914
		CASE   16: {CALL 'SEKVENCE_1NP_KRB_VLEVO_STOP'}
		CASE   17: {CALL 'SEKVENCE_1NP_KRB_VLEVO_STOP'}
		CASE   18: {CALL 'SEKVENCE_1NP_KRB_VLEVO_STOP'}
		CASE   19: {CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_OBYVAK_03)}		// 3918 SV NAD SEDACKOU
		CASE   20: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_OBYVAK_03)}
		CASE   21: {													// 3920 BUDHA STMIVANI HLAVNI Rychle ON
					BUDHA_1NP_OBYVAK_MOD=BUDHA_1NP_OBYVAK_01
					CALL 'SEKVENCE_1NP_BUDHA1'
					}
		CASE   22: {													// 3921 BUDHA STMIVANI OFF
					BUDHA_1NP_OBYVAK_MOD=BUDHA_1NP_OBYVAK_00
					BUDHA_1NP_OBYVAK_KROK = 1
					CANCEL_WAIT 'SEKVENCE_1NP_BUDHA_WAIT'
					CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_OBYVAK_01)
					CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_OBYVAK_02)
					}
		CASE   23: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_02)}
		CASE   24: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_02)} 
		CASE   25: {CALL 'ILIGHT_CHANNEL_ON' (SV_1NP_OBYVAK_02)}		//	3924
		CASE   26: {CALL 'ILIGHT_CHANNEL_OFF' (SV_1NP_OBYVAK_02)}
		CASE   27: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_02)}
		CASE   28: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_02)} 
		CASE   29: {{CALL 'SEKVENCE_1NP_KRB_VLEVO_STOP'}}
		CASE   30: {{CALL 'SEKVENCE_1NP_KRB_VLEVO_STOP'}}		//3929
		CASE   31: {													// 3930 BUDHA STMIVANI HLAVNI Pomalu ON
					BUDHA_1NP_OBYVAK_MOD=BUDHA_1NP_OBYVAK_02
					CALL 'SEKVENCE_1NP_BUDHA1'
					}
		CASE   32: {													// 3920 BUDHA STMIVANI BODOVKY Rychle ON
					BUDHA_1NP_OBYVAK_MOD=BUDHA_1NP_OBYVAK_03
					CALL 'SEKVENCE_1NP_BUDHA1'
					}
		CASE   33: {													// 3920 BUDHA STMIVANI BODOVKY Pomalu ON
					BUDHA_1NP_OBYVAK_MOD=BUDHA_1NP_OBYVAK_04
					CALL 'SEKVENCE_1NP_BUDHA1'
					}
		CASE   34: {													// 3920 BUDHA STMIVANI VSE Rychle ON
					BUDHA_1NP_OBYVAK_MOD=BUDHA_1NP_OBYVAK_05
					CALL 'SEKVENCE_1NP_BUDHA1'
					}
		CASE   35: {													// 3920 BUDHA STMIVANI VSE Pomalu ON
					BUDHA_1NP_OBYVAK_MOD=BUDHA_1NP_OBYVAK_06
					CALL 'SEKVENCE_1NP_BUDHA1'
					}
    }
  }
  HOLD[2,REPEAT]:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_1NPOBYV_KAMENY)
    SWITCH(nBtnIdx)
    {
		CASE    1: {}
		CASE    2: {}
		CASE 	3:	{CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_16)} 
		CASE 	4:	{CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_16)} 
		CASE    5: 	{CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_17)}
		CASE    6: 	{CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_17)}		// 3905
		CASE    7: {}
		CASE    8: {}
		CASE    9: {}
		CASE   	10: {}
		CASE   	11: {}
		CASE 	12:	{CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_14)} // 3911
		CASE 	13:	{CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_14)} 
		CASE    14: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_15)}
		CASE    15: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_15)}	// 3914
		CASE   	16: {}
		CASE   	17: {}
		CASE   	18: {}
		CASE   	19: {}
		CASE   	20: {}
		CASE   	21: {}
		CASE   	22: {}
		CASE   23: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_02)}
		CASE   24: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_02)} 
		CASE   25: {}
		CASE   26: {}
		CASE   27: {}
		CASE   28: {}
		CASE   29: {}
		CASE   30: {}
		CASE   31: {}
		CASE   32: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_01)}
		CASE   33: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_01)}
		CASE   34: {}
		CASE   35: {}
    }
  }
  RELEASE:
	{
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_1NPOBYV_KAMENY)
    SWITCH(nBtnIdx)
		{
		CASE    1: {}
		CASE    2: {CALL 'SEKVENCE_1NP_KRB_VPRAVO_STOP'}
		CASE    3: {}
		CASE    4: {}
		CASE    5: {}
		CASE    6: {}
		CASE    7: {}		//3906 PRESUNUTO
		CASE    8: {}		//3907 PRESUNUTO
		CASE    9: {}
		CASE   10: {}
		CASE   11: {}
		CASE   12: {}
		CASE   13: {}
		CASE   14: {}
		CASE   15: {}
		CASE   16: {}
		CASE   17: {}
		CASE   18: {}
		CASE   19: {}
		CASE   20: {}
		CASE   21: {}
		CASE   22: {SEND_COMMAND dvMyTP_01,"'^UNI-1550,0,'"}
		CASE   23: {}
		CASE   24: {}
		CASE   25: {}
		CASE   26: {}
		CASE   27: {}
		CASE   28: {}
		CASE   29: {}
		CASE   30: {}
		CASE   31: {}
		CASE   32: {}
		CASE   33: {}
		CASE   34: {}
		CASE   35: {}
		}
	WAIT 5
	CALL 'REQUEST_CHANNELS_1NP_OBYVAK_KAMENY'
	}
}

BUTTON_EVENT[dvMyTP_02,231]									/// OBYVAK ANGEL SCENA 1
{
	RELEASE:
		{
		IF (BUTTON.HOLDTIME < 500) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
				{ 
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_01, OB_DREVO_BOD_2A)
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_02, OB_DREVO_HLAV_1A)
				}
			ELSE
				{ 
				nVSTUP = SCENA_OB_7A
				UKLADANI_ACTIVE=TRUE
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_02)
				WAIT 20
					{
					nVSTUP = SCENA_OB_8A
					UKLADANI_ACTIVE=TRUE
					CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_01)
					SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
					}
				}
		}
}
BUTTON_EVENT[dvMyTP_02,232]									/// OBYVAK ANGEL SCENA 2
{
	RELEASE:
		{
		IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
				{ 
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_01, OB_DREVO_BOD_2B)
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_02, OB_DREVO_HLAV_1B)
				}
			ELSE
				{ 
				nVSTUP = SCENA_OB_7B
				UKLADANI_ACTIVE=TRUE
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_02)
				WAIT 20
					{
					nVSTUP = SCENA_OB_8B
					UKLADANI_ACTIVE=TRUE
					CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_01)
					SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
					}
				}
		}
}
BUTTON_EVENT[dvMyTP_02,233]									/// OBYVAK ANGEL Hlavni nahoru
{
	 PUSH:
		{
		CALL 'ILIGHT_CHANNEL_RAISE' (SV_1NP_OBYVAK_02)
		}
	HOLD[2,REPEAT]:
		{
		CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_02)
		}
	RELEASE:
		{
		CALL 'REQUEST_CHANNELS_1NP_OBYVAK_ANGEL'
		}
}
BUTTON_EVENT[dvMyTP_02,234]									/// OBYVAK ANGEL Hlavni dolu
{
	 PUSH:
		{
		CALL 'ILIGHT_CHANNEL_LOWER' (SV_1NP_OBYVAK_02)
		}
	HOLD[2,REPEAT]:
		{
		CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_02)
		}
	RELEASE:
		{
		CALL 'REQUEST_CHANNELS_1NP_OBYVAK_ANGEL'
		}
}
BUTTON_EVENT[dvMyTP_02,235]									/// OBYVAK ANGEL bodovka nahoru
{
	 PUSH:
		{
		CALL 'ILIGHT_CHANNEL_RAISE' (SV_1NP_OBYVAK_01)
		}
	HOLD[2,REPEAT]:
		{
		CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1NP_OBYVAK_01)
		}
	RELEASE:
		{
		CALL 'REQUEST_CHANNELS_1NP_OBYVAK_ANGEL'
		}
}
BUTTON_EVENT[dvMyTP_02,236]									/// OBYVAK ANGEL bodovka dolu
{
	 PUSH:
		{
		CALL 'ILIGHT_CHANNEL_LOWER' (SV_1NP_OBYVAK_01)
		}
	HOLD[2,REPEAT]:
		{
		CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1NP_OBYVAK_01)
		}
	RELEASE:
		{
		CALL 'REQUEST_CHANNELS_1NP_OBYVAK_ANGEL'
		}
}

BUTTON_EVENT[dvMyTP_02,237]									/// TEST UKLADANI SCENY
{
	 PUSH:
		{
		nVSTUP = SCENA_OB_7B
		UKLADANI_ACTIVE=TRUE
		CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_02)
		WAIT 20
			{
			nVSTUP = SCENA_OB_8B
			UKLADANI_ACTIVE=TRUE
			CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_OBYVAK_01)
			SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			}
		}
	
}
BUTTON_EVENT[dvMyTP_01,1144]									/// OFF RGB Kamen Stred
{
	PUSH:	{
			EFEKT_SRDCE_01_ACTIVE=FALSE
			EFEKT_SRDCE_02_ACTIVE=FALSE
			EFEKT_SRDCE_03_ACTIVE=FALSE
			EFEKT_SRDCE_04_ACTIVE=FALSE
			EFEKT_SRDCE_TIMER_ACTIVE = FALSE
			CALL 'SrdceTep_OFF'
			CALL 'ILIGHT_CHANNEL_VALUE' (SV_1NP_OBYVAK_09,0,0)	
			CALL 'ILIGHT_CHANNEL_VALUE' (SV_1NP_OBYVAK_10,0,0)	
			OFF [dvMyTP_01,1136]
			}
}
BUTTON_EVENT[dvMyTP_01,2330]			/// SCENY OBYVAK OFF
{
  PUSH:
	{
	CALL 'SEKVENCE_1NP_OBYVAK_STOP'
	CALL 'SrdceTep_OFF'
	WAIT 15
	CALL 'ILIGHT_SCENA2' (0,ILT_1NP_OBYVAK1_AREA,0) // ALL OFF
	CALL 'ILIGHT_SCENA2' (0,ILT_1NP_OBYVAK2_AREA,0) // ALL OFF
	}
}	
////////////////////////// ----------ZIMNI ZAHRADA------------   //////////////////////////////////
BUTTON_EVENT[dvMyTP_02,270]	// ZIMNI ZAHRADA
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_RAISE2' ( SV_1NP_ZZAHRAD_01)
	  }
  HOLD[5,REPEAT]:
	  {
		CALL 'ILIGHT_CHANNEL_RAISE2' ( SV_1NP_ZZAHRAD_01)	
	  }
   RELEASE:
	  {
	    IF (BUTTON.HOLDTIME < 1000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 1s
				{ 
				CALL 'ILIGHT_CHANNEL_ON2' ( SV_1NP_ZZAHRAD_01)
				}
	  }
 
}
BUTTON_EVENT[dvMyTP_02,271]	// ZIMNI ZAHRADA
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_LOWER2' ( SV_1NP_ZZAHRAD_01)
	  }
  HOLD[5,REPEAT]:
	  {
		CALL 'ILIGHT_CHANNEL_LOWER2' ( SV_1NP_ZZAHRAD_01)	
	  }
   RELEASE:
	  {
	    IF (BUTTON.HOLDTIME < 1000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 1s
				{ 
				CALL 'ILIGHT_CHANNEL_OFF2' ( SV_1NP_ZZAHRAD_01)
				}
	  }
 
}
BUTTON_EVENT[dvMyTP_02,272]	// ZIMNI ZAHRADA
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_RAISE2' ( SV_1NP_ZZAHRAD_02)
	  }
  HOLD[5,REPEAT]:
	  {
		CALL 'ILIGHT_CHANNEL_RAISE2' ( SV_1NP_ZZAHRAD_02)	
	  }
   RELEASE:
	  {
	    IF (BUTTON.HOLDTIME < 1000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 1s
				{ 
				CALL 'ILIGHT_CHANNEL_ON2' ( SV_1NP_ZZAHRAD_02)
				}
	  }
 
}
BUTTON_EVENT[dvMyTP_02,273]	// ZIMNI ZAHRADA
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_LOWER2' ( SV_1NP_ZZAHRAD_02)
	  }
  HOLD[5,REPEAT]:
	  {
		CALL 'ILIGHT_CHANNEL_LOWER2' ( SV_1NP_ZZAHRAD_02)	
	  }
   RELEASE:
	  {
	    IF (BUTTON.HOLDTIME < 1000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 1s
				{ 
				CALL 'ILIGHT_CHANNEL_OFF2' ( SV_1NP_ZZAHRAD_02)
				}
	  }
 
}
BUTTON_EVENT[dvMyTP_02,274]	// ZIMNI ZAHRADA
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_RAISE2' ( SV_1NP_ZZAHRAD_03)
	  }
  HOLD[5,REPEAT]:
	  {
		CALL 'ILIGHT_CHANNEL_RAISE2' ( SV_1NP_ZZAHRAD_03)	
	  }
   RELEASE:
	  {
	    IF (BUTTON.HOLDTIME < 1000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 1s
				{ 
				CALL 'ILIGHT_CHANNEL_ON2' ( SV_1NP_ZZAHRAD_03)
				}
	  }
 
}
BUTTON_EVENT[dvMyTP_02,275]	// ZIMNI ZAHRADA
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_LOWER2' ( SV_1NP_ZZAHRAD_03)
	  }
  HOLD[5,REPEAT]:
	  {
		CALL 'ILIGHT_CHANNEL_LOWER2' ( SV_1NP_ZZAHRAD_03)	
	  }
   RELEASE:
	  {
	    IF (BUTTON.HOLDTIME < 1000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 1s
				{ 
				CALL 'ILIGHT_CHANNEL_OFF2' ( SV_1NP_ZZAHRAD_03)
				}
	  }
 
}
BUTTON_EVENT[dvMyTP_02,276]	// ZIMNI ZAHRADA ALL ON
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_ON' ( SV_1NP_ZZAHRAD_01)
		CALL 'ILIGHT_CHANNEL_ON' ( SV_1NP_ZZAHRAD_02)
		CALL 'ILIGHT_CHANNEL_ON' ( SV_1NP_ZZAHRAD_03)
	  }
  
}
BUTTON_EVENT[dvMyTP_02,277]	// ZIMNI ZAHRADA ALL OFF
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_OFF' ( SV_1NP_ZZAHRAD_01)
		CALL 'ILIGHT_CHANNEL_OFF' ( SV_1NP_ZZAHRAD_02)
		CALL 'ILIGHT_CHANNEL_OFF' ( SV_1NP_ZZAHRAD_03)
	  }
  
}		
		
//***************************************** SVETLA 2NP *******************************************************//
BUTTON_EVENT[dvMyTP_01,1200]									/// Dotaz Svìtla sceny v ložnici
{
  PUSH:
	{
	  // ZEPTAM SE NA CISLO SCENY. TOTO ALE NEMUSI BYT TO SPRAVNE, CO SE MA ZOBRAZIT.
		// VYHODNOCENI TOHO, CO SE MA ZOBRAZIT, ALE NECHAM NA ZOBRAZ_SCENU.
		// BEZI-LI SEKVENCE, IGNORUJE SE ODPOVED NA TENTO DOTAZ, K OBNOVENI TEXTU DOJDE 
		// PRES PORCEDURU AKTUALNI SEKVENCE, NEBEZI-LI, PAK ODPOVED NA TENTO DOTAZ
		// - TEDY CISLO SCENY - SE ZOBRAZI NA TP
	  CALL 'ILIGHT_SCENA_REQUEST' (ILT_2NP_LOZNICE_AREA) 
	}
}

BUTTON_EVENT[dvMyTP_01,nBTN_SVETLA_2NP_LOZNICE]		/// SVETLA LOZNICE - 51 BUTTONS 1219-1268
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
		STACK_VAR CHAR SV_ARR[2]
    nBtnIdx = GET_LAST(nBTN_SVETLA_2NP_LOZNICE)
		SV_ARR[1] = 255
		SWITCH(nBtnIdx)
		// SLO BY JESTE VICE ZOBECNIT, POKUD BY SE URCITE VEDELO, ZE CASE 1,2 ODPOVIDA 
		// SVETLU C.1, CASE 3,4 ODPOVIDA SVETLU C.2 ATD. ALE TO BY ASI BYLO UZ NA UKOR 
		// MOZNYCH UPRAV V BUDOUCNU, KDY BY MOHLO DOJIT K POTREBE PORUSENI TOHOTO 
		// PRAVIDLA - TAKZE TADY BY DALSI ZOBECNENI BYLO ASI SPISE NA SKODU
		{
		  CASE 1:  								// LOZNICE STROP STRED STM ON			//1219
		  CASE 2: SV_ARR = SV_2NP_LOZNICE_01	// LOZNICE STROP STRED STM  OFF
		  CASE 3: 								// LOZNICE SIKMINA NAD POSTELI RED ON - RGB1
		  CASE 4: SV_ARR = SV_2NP_LOZNICE_02 	// LOZNICE SIKMINA NAD POSTELI RED OFF
		  CASE 5:								// LOZNICE SIKMINA NAD POSTELI GREEN ON
		  CASE 6: SV_ARR = SV_2NP_LOZNICE_03 	// LOZNICE SIKMINA NAD POSTELI GREEN OFF
		  CASE 7: 								// LOZNICE SIKMINA NAD POSTELI BLUE ON
		  CASE 8: SV_ARR = SV_2NP_LOZNICE_04	// LOZNICE SIKMINA NAD POSTELI BLUE OFF
		  CASE 9: 								// LOZNICE SIKMINA NAD TV STM ON
		  CASE 10: SV_ARR = SV_2NP_LOZNICE_05 	// LOZNICE SIKMINA NAD TV STM OFF		//1228
		  CASE 11: 								// LOZNICE ZASUVKA POSTEL VPRAVO ON
		  CASE 12: SV_ARR = SV_2NP_LOZNICE_06 	// LOZNICE ZASUVKA POSTEL VPRAVO OFF
		  CASE 13: 								// LOZNICE ZASUVKA POSTEL VLEVO ON
		  CASE 14: SV_ARR = SV_2NP_LOZNICE_07 	/// LOZNICE ZASUVKA POSTEL VLEVO OFF	//1232
		  CASE 15: 								/// REZERVA 1 ON
		  CASE 16: SV_ARR = SV_2NP_LOZNICE_08 	/// p 1 OFF
		  CASE 17: 								/// LOZNICE SVETLO NAD POSTELI STM ON
		  CASE 18: SV_ARR = SV_2NP_LOZNICE_09 	/// LOZNICE SVETLO NAD POSTELI STM OFF	//1236
		  CASE 19:  							/// LOZNICE MEZI OKNY RED - RGB2 ON
		  CASE 20: SV_ARR = SV_2NP_LOZNICE_10 	/// LOZNICE MEZI OKNY RED OFF
		  CASE 21:  							/// LOZNICE MEZI OKNY GREEN ON
		  CASE 22: SV_ARR = SV_2NP_LOZNICE_11 	/// LOZNICE MEZI OKNY GREEN OFF
		  CASE 23:  							/// LOZNICE MEZI OKNY BLUE ON
		  CASE 24: SV_ARR = SV_2NP_LOZNICE_12 	/// LOZNICE MEZI OKNY BLUE OFF			//1242
		  CASE 25:  							/// LOZNICE REZERVA 2 ON
		  CASE 26: SV_ARR = SV_2NP_LOZNICE_13 	/// LOZNICE REZERVA 2 OFF
		  CASE 27:  							/// LOZNICE MENHIR RED - RGB3 ON	
		  CASE 28: SV_ARR = SV_2NP_LOZNICE_14 	/// LOZNICE MENHIR RED OFF
		  CASE 29:  							/// LOZNICE MENHIR GREEN ON
		  CASE 30: SV_ARR = SV_2NP_LOZNICE_15 	/// LOZNICE MENHIR GREEN OFF
		  CASE 31:  							/// LOZNICE MENHIR BLUE ON
		  CASE 32: SV_ARR = SV_2NP_LOZNICE_16 	/// LOZNICE MENHIR BLUE OFF			//1250
		  CASE 33:  							/// LOZNICE REZERVA 3 ON
		  CASE 34: SV_ARR = SV_2NP_LOZNICE_17 	/// LOZNICE REZERVA 3 OFF
		  CASE 35:  							/// LOZNICE VSTUP RED - RGB4 ON
		  CASE 36: SV_ARR = SV_2NP_LOZNICE_18 	/// LOZNICE VSTUP RED OFF
		  CASE 37:  							/// LOZNICE VSTUP GREEN ON
		  CASE 38: SV_ARR = SV_2NP_LOZNICE_19 	/// LOZNICE VSTUP GREEN OFF
		  CASE 39:  							/// LOZNICE VSTUP BLUE ON
		  CASE 40: SV_ARR = SV_2NP_LOZNICE_20 	/// LOZNICE VSTUP BLUE OFF				//1258
		  CASE 41:  							/// LOZNICE REZERVA 4 ON				//REZERVA 1259
		  CASE 42: SV_ARR = SV_2NP_LOZNICE_21 	/// LOZNICE REZERVA 4 OFF				//REZERVA 1260
		  CASE 43:  							/// LOZNICE KRYSTAL RED - RGB5 ON		//REZERVA 1261
		  CASE 44: SV_ARR = SV_2NP_LOZNICE_22 	/// LOZNICE KRYSTAL RED OFF				//1262
		  CASE 45:  							/// LOZNICE KRYSTAL GREEN ON			//1263
		  CASE 46: SV_ARR = SV_2NP_LOZNICE_23 	/// LOZNICE KRYSTAL GREEN OFF			//1264
		  CASE 47:  							/// LOZNICE KRYSTAL BLUE ON				///1265
		  CASE 48: SV_ARR = SV_2NP_LOZNICE_24 	/// LOZNICE KRYSTAL BLUE OFF			///1266
		  CASE 49:  							/// LOZNICE KRYSTAL WHITE ON			///1267
		  CASE 50: SV_ARR = SV_2NP_LOZNICE_25 	/// LOZNICE KRYSTAL WHITE OFF			///1268
		  //CASE 51: CALL 'SAVE_LOZNICE_SCENE'
		}
		CANCEL_WAIT 'KILL RGB'
		IF (SV_ARR[1]<>255)
		  CALL 'ILIGHT_CHANNEL_REQUEST' (SV_ARR)
	}
	 HOLD[2,REPEAT]:
		{
		STACK_VAR INTEGER nBtnIdx
		STACK_VAR CHAR SV_ARR[2]
		IF (BUTTON.HOLDTIME>=300) // JEN POKUD TLACITKO DRZENO DELE NEZ 300ms
			{
			nBtnIdx = GET_LAST(nBTN_SVETLA_2NP_LOZNICE)
			SV_ARR[1] = 255
			SWITCH(nBtnIdx)
				{
				CASE 1:  														// LOZNICE STROP STRED STM ON			//1219
				CASE 2: SV_ARR = SV_2NP_LOZNICE_01	// LOZNICE STROP STRED STM  OFF
				CASE 3: 														// LOZNICE SIKMINA NAD POSTELI RED ON - RGB1
				CASE 4: SV_ARR = SV_2NP_LOZNICE_02 	// LOZNICE SIKMINA NAD POSTELI RED OFF
				CASE 5:															// LOZNICE SIKMINA NAD POSTELI GREEN ON
				CASE 6: SV_ARR = SV_2NP_LOZNICE_03 	// LOZNICE SIKMINA NAD POSTELI GREEN OFF
				CASE 7: 														// LOZNICE SIKMINA NAD POSTELI BLUE ON
				CASE 8: SV_ARR = SV_2NP_LOZNICE_04	// LOZNICE SIKMINA NAD POSTELI BLUE OFF
				CASE 9: 														// LOZNICE SIKMINA NAD TV STM ON
				CASE 10: SV_ARR = SV_2NP_LOZNICE_05 // LOZNICE SIKMINA NAD TV STM OFF	//1228
				CASE 11: 														// LOZNICE ZASUVKA POSTEL VPRAVO ON
				CASE 12: SV_ARR = SV_2NP_LOZNICE_06 // LOZNICE ZASUVKA POSTEL VPRAVO OFF
				CASE 13: 														// LOZNICE ZASUVKA POSTEL VLEVO ON
				CASE 14: SV_ARR = SV_2NP_LOZNICE_07 /// LOZNICE ZASUVKA POSTEL VLEVO OFF	//1232
				CASE 15: 														/// REZERVA 1 ON
				CASE 16: SV_ARR = SV_2NP_LOZNICE_08 /// REZERVA 1 OFF
				CASE 17: 														/// LOZNICE SVETLO NAD POSTELI STM ON
				CASE 18: SV_ARR = SV_2NP_LOZNICE_09 /// LOZNICE SVETLO NAD POSTELI STM OFF		//1236
				CASE 19:  													/// LOZNICE MEZI OKNY RED - RGB2 ON
				CASE 20: SV_ARR = SV_2NP_LOZNICE_10 /// LOZNICE MEZI OKNY RED OFF
				CASE 21:  													/// LOZNICE MEZI OKNY GREEN ON
				CASE 22: SV_ARR = SV_2NP_LOZNICE_11 /// LOZNICE MEZI OKNY GREEN OFF
				CASE 23:  													/// LOZNICE MEZI OKNY BLUE ON
				CASE 24: SV_ARR = SV_2NP_LOZNICE_12 /// LOZNICE MEZI OKNY BLUE OFF	//1242
				CASE 25:  													/// LOZNICE REZERVA 2 ON
				CASE 26: SV_ARR = SV_2NP_LOZNICE_13 /// LOZNICE REZERVA 2 OFF
				CASE 27:  													/// LOZNICE MENHIR RED - RGB3 ON	
				CASE 28: SV_ARR = SV_2NP_LOZNICE_14 /// LOZNICE MENHIR RED OFF
				CASE 29:  													/// LOZNICE MENHIR GREEN ON
				CASE 30: SV_ARR = SV_2NP_LOZNICE_15 /// LOZNICE MENHIR GREEN OFF
				CASE 31:  													/// LOZNICE MENHIR BLUE ON
				CASE 32: SV_ARR = SV_2NP_LOZNICE_16 /// LOZNICE MENHIR BLUE OFF		//1250
				CASE 33:  													/// LOZNICE REZERVA 3 ON
				CASE 34: SV_ARR = SV_2NP_LOZNICE_17 /// LOZNICE REZERVA 3 OFF
				CASE 35:  													/// LOZNICE VSTUP RED - RGB4 ON
				CASE 36: SV_ARR = SV_2NP_LOZNICE_18 /// LOZNICE VSTUP RED OFF
				CASE 37:  													/// LOZNICE VSTUP GREEN ON
				CASE 38: SV_ARR = SV_2NP_LOZNICE_19 /// LOZNICE VSTUP GREEN OFF
				CASE 39:  													/// LOZNICE VSTUP BLUE ON
				CASE 40: SV_ARR = SV_2NP_LOZNICE_20 /// LOZNICE VSTUP BLUE OFF				//1258
				CASE 41:  													/// LOZNICE REZERVA 4 ON				//1259
				CASE 42: SV_ARR = SV_2NP_LOZNICE_21 /// LOZNICE REZERVA 4 OFF				//1260
				CASE 43:  													/// LOZNICE KRYSTAL RED - RGB5 ON	//1261
				CASE 44: SV_ARR = SV_2NP_LOZNICE_22 /// LOZNICE KRYSTAL RED OFF			//1262
				CASE 45:  													/// LOZNICE KRYSTAL GREEN ON			//1263
				CASE 46: SV_ARR = SV_2NP_LOZNICE_23 /// LOZNICE KRYSTAL GREEN OFF			//1264
				CASE 47:  													/// LOZNICE KRYSTAL BLUE ON			///1265
				CASE 48: SV_ARR = SV_2NP_LOZNICE_24 /// LOZNICE KRYSTAL BLUE OFF			///1266
				CASE 49:  													/// LOZNICE KRYSTAL WHITE ON			///1267
				CASE 50: SV_ARR = SV_2NP_LOZNICE_25 /// LOZNICE KRYSTAL WHITE OFF			///1268
				//CASE 51: CALL 'SAVE_LOZNICE_SCENE'
			}
			IF (SV_ARR[1]<>255)
			{
			  tmpARCH = SV_ARR // DULEZITE, PROTOZE V CALL JE WAIT 5 !!!
				IF ((nBtnIdx MOD 2)>0) // LICHE CISLO - UP
				  CALL 'ILIGHT_CHANNEL_RAISE2' (tmpARCH)
				ELSE // ((nBtnIdx MOD 2)=0) // SUDE CISLO - DOWN
				  CALL 'ILIGHT_CHANNEL_LOWER2' (tmpARCH)
			}
		}
  }
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
		STACK_VAR CHAR SV_ARR[2]
		IF (BUTTON.HOLDTIME < 300) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 300ms
		{
			nBtnIdx = GET_LAST(nBTN_SVETLA_2NP_LOZNICE)
			SV_ARR[1] = 255
			SWITCH(nBtnIdx)
			{
				CASE 1:  														// LOZNICE STROP STRED STM ON			//1219
				CASE 2: SV_ARR = SV_2NP_LOZNICE_01	// LOZNICE STROP STRED STM  OFF
				CASE 3: 														// LOZNICE SIKMINA NAD POSTELI RED ON - RGB1
				CASE 4: SV_ARR = SV_2NP_LOZNICE_02 	// LOZNICE SIKMINA NAD POSTELI RED OFF
				CASE 5:															// LOZNICE SIKMINA NAD POSTELI GREEN ON
				CASE 6: SV_ARR = SV_2NP_LOZNICE_03 	// LOZNICE SIKMINA NAD POSTELI GREEN OFF
				CASE 7: 														// LOZNICE SIKMINA NAD POSTELI BLUE ON
				CASE 8: SV_ARR = SV_2NP_LOZNICE_04	// LOZNICE SIKMINA NAD POSTELI BLUE OFF
				CASE 9: 														// LOZNICE SIKMINA NAD TV STM ON
				CASE 10: SV_ARR = SV_2NP_LOZNICE_05 // LOZNICE SIKMINA NAD TV STM OFF	//1228
				CASE 11: 														// LOZNICE ZASUVKA POSTEL VPRAVO ON
				CASE 12: SV_ARR = SV_2NP_LOZNICE_06 // LOZNICE ZASUVKA POSTEL VPRAVO OFF
				CASE 13: 														// LOZNICE ZASUVKA POSTEL VLEVO ON
				CASE 14: SV_ARR = SV_2NP_LOZNICE_07 /// LOZNICE ZASUVKA POSTEL VLEVO OFF	//1232
				CASE 15: 														/// POUZITO 1 ON //1233
				CASE 16: SV_ARR = SV_2NP_LOZNICE_08 /// POUZITO 1 OFF
				CASE 17: 														/// LOZNICE SVETLO NAD POSTELI STM ON
				CASE 18: SV_ARR = SV_2NP_LOZNICE_09 /// LOZNICE SVETLO NAD POSTELI STM OFF		//1236
				CASE 19:  													/// LOZNICE MEZI OKNY RED - RGB2 ON
				CASE 20: SV_ARR = SV_2NP_LOZNICE_10 /// LOZNICE MEZI OKNY RED OFF
				CASE 21:  													/// LOZNICE MEZI OKNY GREEN ON
				CASE 22: SV_ARR = SV_2NP_LOZNICE_11 /// LOZNICE MEZI OKNY GREEN OFF
				CASE 23:  													/// LOZNICE MEZI OKNY BLUE ON
				CASE 24: SV_ARR = SV_2NP_LOZNICE_12 /// LOZNICE MEZI OKNY BLUE OFF	//1242
				CASE 25:  													/// LOZNICE REZERVA 2 ON
				CASE 26: SV_ARR = SV_2NP_LOZNICE_13 /// LOZNICE REZERVA 2 OFF
				CASE 27:  													/// LOZNICE MENHIR RED - RGB3 ON	
				CASE 28: SV_ARR = SV_2NP_LOZNICE_14 /// LOZNICE MENHIR RED OFF
				CASE 29:  													/// LOZNICE MENHIR GREEN ON
				CASE 30: SV_ARR = SV_2NP_LOZNICE_15 /// LOZNICE MENHIR GREEN OFF
				CASE 31:  													/// LOZNICE MENHIR BLUE ON
				CASE 32: SV_ARR = SV_2NP_LOZNICE_16 /// LOZNICE MENHIR BLUE OFF		//1250
				CASE 33:  													/// LOZNICE REZERVA 3 ON
				CASE 34: SV_ARR = SV_2NP_LOZNICE_17 /// LOZNICE REZERVA 3 OFF
				CASE 35:  													/// LOZNICE VSTUP RED - RGB4 ON
				CASE 36: SV_ARR = SV_2NP_LOZNICE_18 /// LOZNICE VSTUP RED OFF
				CASE 37:  													/// LOZNICE VSTUP GREEN ON
				CASE 38: SV_ARR = SV_2NP_LOZNICE_19 /// LOZNICE VSTUP GREEN OFF
				CASE 39:  													/// LOZNICE VSTUP BLUE ON
				CASE 40: SV_ARR = SV_2NP_LOZNICE_20 /// LOZNICE VSTUP BLUE OFF				//1258
				CASE 41:  													/// LOZNICE REZERVA 4 ON				//1259
				CASE 42: SV_ARR = SV_2NP_LOZNICE_21 /// LOZNICE REZERVA 4 OFF				//1260
				CASE 43:  													/// LOZNICE KRYSTAL RED - RGB5 ON	//1261
				CASE 44: SV_ARR = SV_2NP_LOZNICE_22 /// LOZNICE KRYSTAL RED OFF			//1262
				CASE 45:  													/// LOZNICE KRYSTAL GREEN ON			//1263
				CASE 46: SV_ARR = SV_2NP_LOZNICE_23 /// LOZNICE KRYSTAL GREEN OFF			//1264
				CASE 47:  													/// LOZNICE KRYSTAL BLUE ON			///1265
				CASE 48: SV_ARR = SV_2NP_LOZNICE_24 /// LOZNICE KRYSTAL BLUE OFF			///1266
				CASE 49:  													/// LOZNICE KRYSTAL WHITE ON			///1267
				CASE 50: SV_ARR = SV_2NP_LOZNICE_25 /// LOZNICE KRYSTAL WHITE OFF			///1268
			}
			IF (SV_ARR[1]<>255)
				{
				IF ((nBtnIdx MOD 2)>0) // LICHE CISLO - ON
				  CALL 'ILIGHT_CHANNEL_RAISE2' (SV_ARR)
				ELSE // ((nBtnIdx MOD 2)=0) // SUDE CISLO - OFF
				  CALL 'ILIGHT_CHANNEL_LOWER2' (SV_ARR)
				//CALL 'ILIGHT_CHANNEL_REQUEST' (SV_ARR)
				}
		}
		WAIT 30 'KILL RGB'
					{
					SEND_COMMAND dvMyTP_01, "'@PPK-2_loznice_RGB1'"
					SEND_COMMAND dvMyTP_01, "'@PPK-2_loznice_RGB2'"
					SEND_COMMAND dvMyTP_01, "'@PPK-2_loznice_RGB3'"
					SEND_COMMAND dvMyTP_01, "'@PPK-2_loznice_RGB4'"
					SEND_COMMAND dvMyTP_01, "'@PPK-2_loznice_RGB5'"
					}
  }
}

BUTTON_EVENT[dvMyTP_02,nBTN_2NP_LOZ_SV_ON]		/// 2NP LOZ ON/OFF  PORT 2 50-89
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_2NP_LOZ_SV_ON)
    SWITCH(nBtnIdx)
		{
		CASE  1: CALL 'ILIGHT_CHANNEL_ON' (SV_2NP_LOZNICE_01)	//50
		CASE  2: CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_01)	//51
		CASE  3: CALL 'ILIGHT_CHANNEL_ON' (SV_2NP_LOZNICE_05)	//52
		CASE  4: CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_05)	//53
		CASE  5: CALL 'ILIGHT_CHANNEL_ON' (SV_2NP_LOZNICE_09)		//54
		CASE  6: CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_09)	//55
		}
	}
}	
 
BUTTON_EVENT[dvMyTP_02,nBTN_2NP_LOZ_SV_ON]		/// 2NP LOZ ON/OFF  PORT 2 50-89
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SV_ARR[2]
    nBtnIdx = GET_LAST(nBTN_2NP_LOZ_SV_ON)
	SV_ARR[1] = 255
    SWITCH(nBtnIdx)
    {
      CASE  7: 
      CASE  8: SV_ARR = SV_2NP_LOZNICE_07
      CASE  9: 
      CASE 10: SV_ARR = SV_2NP_LOZNICE_06
      CASE 11: {}
      CASE 12: {}
      CASE 13: {}
      CASE 14: {}
      CASE 15: {}
      CASE 16: {}
      CASE 17: {}
      CASE 18: {}
      CASE 19: {}
      CASE 20: {}
      CASE 21: {}
      CASE 22: {}
      CASE 23: {}
      CASE 24: {}
      CASE 25: {}
      CASE 26: {}
      CASE 27: {}
      CASE 28: {}
      CASE 29: {}
      CASE 30: {}
      CASE 31: {}
      CASE 32: {}
      CASE 33: {}
      CASE 34: {}
      CASE 35: {}
      CASE 36: {}
      CASE 37: {}
      CASE 38: {}
      CASE 39: {}
      CASE 40: {}
    }
	IF (SV_ARR[1]<>255)
				{
				IF ((nBtnIdx MOD 2)>0) // LICHE CISLO - OFF
				  CALL 'ILIGHT_CHANNEL_ON' (SV_ARR)
				ELSE // ((nBtnIdx MOD 2)=0) // SUDE CISLO - ON
				  CALL 'ILIGHT_CHANNEL_OFF' (SV_ARR)
				}
  }
  HOLD[2,REPEAT]:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_2NP_LOZ_SV_ON)
    SWITCH(nBtnIdx)
    {
      CASE  7: {}
      CASE  8: {}
      CASE  9: {}
      CASE 10: {}
      CASE 11: {}
      CASE 12: {}
      CASE 13: {}
      CASE 14: {}
      CASE 15: {}
      CASE 16: {}
      CASE 17: {}
      CASE 18: {}
      CASE 19: {}
      CASE 20: {}
      CASE 21: {}
      CASE 22: {}
      CASE 23: {}
      CASE 24: {}
      CASE 25: {}
      CASE 26: {}
      CASE 27: {}
      CASE 28: {}
      CASE 29: {}
      CASE 30: {}
      CASE 31: {}
      CASE 32: {}
      CASE 33: {}
      CASE 34: {}
      CASE 35: {}
      CASE 36: {}
      CASE 37: {}
      CASE 38: {}
      CASE 39: {}
      CASE 40: {}
    }
  }
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SV_ARR[2]
    nBtnIdx = GET_LAST(nBTN_2NP_LOZ_SV_ON)
	SV_ARR[1] = 255
    SWITCH(nBtnIdx)
    {
      CASE  7: 
      CASE  8: SV_ARR = SV_2NP_LOZNICE_07
      CASE  9: 
      CASE 10: SV_ARR = SV_2NP_LOZNICE_06
      CASE 11: {}
      CASE 12: {}
      CASE 13: {}
      CASE 14: {}
      CASE 15: {}
      CASE 16: {}
      CASE 17: {}
      CASE 18: {}
      CASE 19: {}
      CASE 20: {}
      CASE 21: {}
      CASE 22: {}
      CASE 23: {}
      CASE 24: {}
      CASE 25: {}
      CASE 26: {}
      CASE 27: {}
      CASE 28: {}
      CASE 29: {}
      CASE 30: {}
      CASE 31: {}
      CASE 32: {}
      CASE 33: {}
      CASE 34: {}
      CASE 35: {}
      CASE 36: {}
      CASE 37: {}
      CASE 38: {}
      CASE 39: {}
      CASE 40: {}
    }
	//WAIT 5
	CALL 'ILIGHT_CHANNEL_REQUEST' (SV_ARR)
  }
}

BUTTON_EVENT[dvMyTP_02,nBTN_2NP_LOZ_SCENY]		/// 2NP LOZ SCENY PRO ANGEL - SRDCE  PORT 2 90-99
{
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SC[2]
    nBtnIdx = GET_LAST(nBTN_2NP_LOZ_SCENY)
	SC[1] = ILT_2NP_LOZNICE_AREA
	SC[2] = 0
    SWITCH(nBtnIdx)
    {
	  CASE 1: {SC[2] = 99}		//
      CASE 2: {SC[2] = 100}
      CASE 3: {SC[2] = 101}
	}
	IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
			{ // VYVOLEJ SCENU
				CALL 'ILIGHT_SCENA' (SC,1)
			}
			ELSE
			{ // ULOZ SCENU
			  CALL 'ILIGHT_SAVE_SCENE' (SC)
				SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA CISLO ',ITOA(nBtnIdx)"
				SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			}
  }
}
BUTTON_EVENT[dvMyTP_02,90]		// 2NP LOZNICE ANGEL SC1						
{
  RELEASE:
		{
		  IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
				{ 
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_2NP_LOZNICE_25, LOZ_2NP_ANGEL_WHITE_1)
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_2NP_LOZNICE_22, LOZ_2NP_ANGEL_RED_1)
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_2NP_LOZNICE_23, LOZ_2NP_ANGEL_GREEN_1)
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_2NP_LOZNICE_24, LOZ_2NP_ANGEL_BLUE_1)
				}
			ELSE
				{ 
				nVSTUP = SCENA_LOZ_ANGEL_W1
				UKLADANI_ACTIVE=TRUE
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_2NP_LOZNICE_25)
				WAIT 15
					{
					nVSTUP = SCENA_LOZ_ANGEL_R1
					UKLADANI_ACTIVE=TRUE
					CALL 'ILIGHT_CHANNEL_REQUEST' (SV_2NP_LOZNICE_22)
					WAIT 15
						{
						nVSTUP = SCENA_LOZ_ANGEL_G1
						UKLADANI_ACTIVE=TRUE
						CALL 'ILIGHT_CHANNEL_REQUEST' (SV_2NP_LOZNICE_23)
						WAIT 15
							{
							nVSTUP = SCENA_LOZ_ANGEL_B1
							UKLADANI_ACTIVE=TRUE
							CALL 'ILIGHT_CHANNEL_REQUEST' (SV_2NP_LOZNICE_24)
							SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
							}
						}
					}
				}
			}
}

BUTTON_EVENT[dvMyTP_02,91]		// 2NP LOZNICE ANGEL SC2								
{
  RELEASE:
		{
		  IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
				{ 
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_2NP_LOZNICE_25, LOZ_2NP_ANGEL_WHITE_2)
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_2NP_LOZNICE_22, LOZ_2NP_ANGEL_RED_2)
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_2NP_LOZNICE_23, LOZ_2NP_ANGEL_GREEN_2)
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_2NP_LOZNICE_24, LOZ_2NP_ANGEL_BLUE_2)
				}
			ELSE
				{ 
				nVSTUP = SCENA_LOZ_ANGEL_W2
				UKLADANI_ACTIVE=TRUE
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_2NP_LOZNICE_25)
				WAIT 15
					{
					nVSTUP = SCENA_LOZ_ANGEL_R2
					UKLADANI_ACTIVE=TRUE
					CALL 'ILIGHT_CHANNEL_REQUEST' (SV_2NP_LOZNICE_22)
					WAIT 15
						{
						nVSTUP = SCENA_LOZ_ANGEL_G2
						UKLADANI_ACTIVE=TRUE
						CALL 'ILIGHT_CHANNEL_REQUEST' (SV_2NP_LOZNICE_23)
						WAIT 15
							{
							nVSTUP = SCENA_LOZ_ANGEL_B2
							UKLADANI_ACTIVE=TRUE
							CALL 'ILIGHT_CHANNEL_REQUEST' (SV_2NP_LOZNICE_24)
							SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
							}
						}
					}
				}
			}
}
BUTTON_EVENT[dvMyTP_02,92]		// 2NP LOZNICE ANGEL SRDCE DOLNI						
{
  RELEASE:
		{
		  IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
				{ 
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_2NP_LOZNICE_25, LOZ_2NP_ANGEL_WHITE_3)
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_2NP_LOZNICE_22, LOZ_2NP_ANGEL_RED_3)
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_2NP_LOZNICE_23, LOZ_2NP_ANGEL_GREEN_3)
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_2NP_LOZNICE_24, LOZ_2NP_ANGEL_BLUE_3)
				}
			ELSE
				{ 
				nVSTUP = SCENA_LOZ_ANGEL_W3
				UKLADANI_ACTIVE=TRUE
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_2NP_LOZNICE_25)
				WAIT 15
					{
					nVSTUP = SCENA_LOZ_ANGEL_R3
					UKLADANI_ACTIVE=TRUE
					CALL 'ILIGHT_CHANNEL_REQUEST' (SV_2NP_LOZNICE_22)
					WAIT 15
						{
						nVSTUP = SCENA_LOZ_ANGEL_G3
						UKLADANI_ACTIVE=TRUE
						CALL 'ILIGHT_CHANNEL_REQUEST' (SV_2NP_LOZNICE_23)
						WAIT 15
							{
							nVSTUP = SCENA_LOZ_ANGEL_B3
							UKLADANI_ACTIVE=TRUE
							CALL 'ILIGHT_CHANNEL_REQUEST' (SV_2NP_LOZNICE_24)
							SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
							}
						}
					}
				}
			}
}

BUTTON_EVENT[dvMyTP_02,93]		// 2NP LOZNICE ANGEL SRDCE HORNI								
{
  RELEASE:
		{
		  IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
				{ 
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_2NP_LOZNICE_25, LOZ_2NP_ANGEL_WHITE_4)
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_2NP_LOZNICE_22, LOZ_2NP_ANGEL_RED_4)
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_2NP_LOZNICE_23, LOZ_2NP_ANGEL_GREEN_4)
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_2NP_LOZNICE_24, LOZ_2NP_ANGEL_BLUE_4)
				}
			ELSE
				{ 
				nVSTUP = SCENA_LOZ_ANGEL_W4
				UKLADANI_ACTIVE=TRUE
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_2NP_LOZNICE_25)
				WAIT 15
					{
					nVSTUP = SCENA_LOZ_ANGEL_R4
					UKLADANI_ACTIVE=TRUE
					CALL 'ILIGHT_CHANNEL_REQUEST' (SV_2NP_LOZNICE_22)
					WAIT 15
						{
						nVSTUP = SCENA_LOZ_ANGEL_G4
						UKLADANI_ACTIVE=TRUE
						CALL 'ILIGHT_CHANNEL_REQUEST' (SV_2NP_LOZNICE_23)
						WAIT 15
							{
							nVSTUP = SCENA_LOZ_ANGEL_B4
							UKLADANI_ACTIVE=TRUE
							CALL 'ILIGHT_CHANNEL_REQUEST' (SV_2NP_LOZNICE_24)
							SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
							}
						}
					}
				}
			}
}
BUTTON_EVENT[dvMyTP_02,94]		// 2NP LOZNICE ANGEL SRDCE TMAVE						
{
  RELEASE:
		{
		  IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
				{ 
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_2NP_LOZNICE_25, LOZ_2NP_ANGEL_WHITE_5)
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_2NP_LOZNICE_22, LOZ_2NP_ANGEL_RED_5)
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_2NP_LOZNICE_23, LOZ_2NP_ANGEL_GREEN_5)
				CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_2NP_LOZNICE_24, LOZ_2NP_ANGEL_BLUE_5)
				}
			ELSE
				{ 
				nVSTUP = SCENA_LOZ_ANGEL_W5
				UKLADANI_ACTIVE=TRUE
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_2NP_LOZNICE_25)
				WAIT 15
					{
					nVSTUP = SCENA_LOZ_ANGEL_R5
					UKLADANI_ACTIVE=TRUE
					CALL 'ILIGHT_CHANNEL_REQUEST' (SV_2NP_LOZNICE_22)
					WAIT 15
						{
						nVSTUP = SCENA_LOZ_ANGEL_G5
						UKLADANI_ACTIVE=TRUE
						CALL 'ILIGHT_CHANNEL_REQUEST' (SV_2NP_LOZNICE_23)
						WAIT 15
							{
							nVSTUP = SCENA_LOZ_ANGEL_B5
							UKLADANI_ACTIVE=TRUE
							CALL 'ILIGHT_CHANNEL_REQUEST' (SV_2NP_LOZNICE_24)
							SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
							}
						}
					}
				}
			}
}
BUTTON_EVENT[dvMyTP_02,95]		// OBNOV ANGEL LOZNICE								
{
  RELEASE:
		{
		CALL 'OBNOV_PERSIST_LOZNICE_ANGEL'
		}
}
BUTTON_EVENT[dvMyTP_01,nBTN_SCENY_2NP_LOZNICE]			/// SCENY LOZNICE - 71 BUTTONS 1270-1334
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
	  STACK_VAR CHAR SC[2]	  
    nBtnIdx = GET_LAST(nBTN_SCENY_2NP_LOZNICE)
		IF (RGB_2NP_LOZNICE_SEKVENCE <> RGB_2LOZ_00) // BEZI-LI SEKVENCE, OKAMZITE UKONCI
			CALL 'SEKVENCE_2NP_LOZNICE_STOP'  /// mozno pridat do slozene zavorky i zhasnuti svetel 
		IF (nBtnIdx = 65) 
		{		  
			SC[1] = ILT_2NP_LOZNICE_AREA
			SC[2] = 0
			CALL 'ILIGHT_SCENA' (SC,1) // ALL OFF	
			CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_01)
			CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_02)
			CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_03)
			CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_04)
			CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_05)
			CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_06)
			CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_07)
			CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_08)
			CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_09)
			CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_10)
			CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_11)
			CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_12)
			CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_13)
			CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_14)
			CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_15)
			CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_16)
			CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_17)
			CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_18)
			CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_19)
			CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_20)
			CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_21)
			CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_22)
			CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_23)
			CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_24)
			CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_25)
			CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_26)
			CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_27)
			CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_28)
			CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_29)
			CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_30)
			CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_LOZNICE_31)
			//WAIT 15
			CALL 'SEKVENCE_2NP_LOZNICE_STOP'     /// neco zlobi tak test 1
			//WAIT 20
			CALL 'SEKVENCE_2NP_LOZ_ANGEL_STOP'  /// neco zlobi tak test 1
			// JE OTAZKA NA REALNEM FFEDBACKU, JESTLI ZOBRAZIT SCENA:OFF, NEBO SCENA:0
			WAIT 60 // PRO REALNOU ZPETNOU VAZBU
				CALL 'ILIGHT_SCENA_REQUEST'(ILT_2NP_LOZNICE_AREA) 
			// SEND_COMMAND dvMyTP_01,"'^TXT-52,0,','OFF'" // RADSI NECHAT NA REALNEM FEEDBACKU
		}
	}
  RELEASE:
	{
    STACK_VAR INTEGER nBtnIdx
	  STACK_VAR CHAR SC[2]	  
    nBtnIdx = GET_LAST(nBTN_SCENY_2NP_LOZNICE)
		IF (nBtnIdx < 65) 
		{
			SC[1] = ILT_2NP_LOZNICE_AREA
			SC[2] = TYPE_CAST(nBtnIdx) // VIM, ZE nBtnIdx JE URCITE MENSI NEZ 255, TUDIZ SI MOHU DOVOLIT PRETYPOVAT
			IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
			{ // VYVOLEJ SCENU
				CALL 'ILIGHT_SCENA' (SC,1)
				//SEND_COMMAND dvMyTP_01,"'^TXT-52,0,',ITOA(nBtnIdx)" // RADSI NECHAT NA REALNEM FEEDBACKU
			}
			ELSE
			{ // ULOZ SCENU
			  CALL 'ILIGHT_SAVE_SCENE' (SC)
				SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA V LOZNICI CISLO ',ITOA(nBtnIdx)"
				SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			}
			WAIT 10 // PRO REALNOU ZPETNOU VAZBU
				CALL 'ILIGHT_SCENA_REQUEST'(ILT_2NP_LOZNICE_AREA) 
		}
	}
}

BUTTON_EVENT[dvMyTP_01,nBTN_RGB_2NP_LOZNICE]			/// RGB AUTOMAT LOZNICE		1335-1348
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_RGB_2NP_LOZNICE)
	RGB_2NP_LOZNICE_KROK = 1
    SWITCH(nBtnIdx)
		{
		CASE 1: {RGB_2NP_LOZNICE_01_ACTIVE = TRUE}
		CASE 2: {RGB_2NP_LOZNICE_01B_ACTIVE = TRUE}	//1336
		CASE 3: {RGB_2NP_LOZNICE_02_ACTIVE = TRUE}
		CASE 4: {RGB_2NP_LOZNICE_02B_ACTIVE = TRUE}	//1338
		CASE 5: {RGB_2NP_LOZNICE_03_ACTIVE = TRUE}
		CASE 6: {RGB_2NP_LOZNICE_03B_ACTIVE = TRUE}	//1340
		CASE 7: {RGB_2NP_LOZNICE_03_ACTIVE = TRUE; RGB_2NP_LOZNICE_01_ACTIVE = TRUE}
		CASE 8: {RGB_2NP_LOZNICE_03B_ACTIVE = TRUE; RGB_2NP_LOZNICE_01B_ACTIVE = TRUE}	//1342
		}			
		RGB_2NP_LOZNICE_SEKVENCE = RGB_2LOZ_01 /// JE TO UZ RESENO JINAK, TOTO JE ALE POUZITO V ZPRACOVANI ZPRAVY, TAK JSEM ZACHOVAL 	
		RGB_2NP_LOZNICE_TIMER_ACTIVE=TRUE
		IF ((nBtnIdx MOD 2)>0) // LICHE CISLO - KRATKY
			CALL 'RGB_2NP_LOZNICE_TIMER'(200)
		ELSE // ((nBtnIdx MOD 2)=0) // SUDE CISLO - DLOUHY
			CALL 'RGB_2NP_LOZNICE_TIMER_DOUBLE'
	}
}

BUTTON_EVENT[dvMyTP_01,nBTN_RGB2_2NP_LOZNICE]		/// LOZNICE RGB STOP - BACHA NA CISLA !! 1343-1345
{
	 PUSH:
	 {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_RGB2_2NP_LOZNICE)
    SWITCH(nBtnIdx)
			{
			CASE 1: {RGB_2NP_LOZNICE_01_ACTIVE = FALSE; RGB_2NP_LOZNICE_01B_ACTIVE = FALSE}		//1343
			CASE 2: {RGB_2NP_LOZNICE_02_ACTIVE = FALSE; RGB_2NP_LOZNICE_02B_ACTIVE = FALSE}
			CASE 3: {RGB_2NP_LOZNICE_03_ACTIVE = FALSE; RGB_2NP_LOZNICE_03B_ACTIVE = FALSE} 	//1345
			}
		CALL 'RGB_2NP_LOZNICE_TIMER_STOP'
	 }
	 RELEASE:
	 {
	STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_RGB_2NP_LOZNICE)
    SWITCH(nBtnIdx)
				{
				CASE 1: {
						CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_10,0,3)								///	Cervena
						CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_11,0,3)								///	Zelena 
						CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_12,0,3)								///	Modra 
						CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_26,0,3)								///	Stud. bila
						CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_27,0,3)								///	Tepl. bila 
						}		//1343
			CASE 2: {
						CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_14,0,3)								/// Cervena
						CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_15,0,3)								///	Zelena 
						CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_16,0,3)
						CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_28,0,3)								///	Stud. bila
						CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_29,0,3)								///	Tepl. bila 
					}
			CASE 3: {
						CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_18,0,3)								/// 	Cervena
						CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_19,0,3)								///	Zelena 
						CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_20,0,3)								///	Modra 
						CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_30,0,3)								///	Stud. bila
						CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_31,0,3)								///	Tepl. bila
					} 	
			}
	 }
				 
}
BUTTON_EVENT[dvMyTP_01,1346]									/// OFF RGB Auto v ložnici
	{
	PUSH:	{CALL 'SEKVENCE_2NP_LOZNICE_STOP'; CALL 'SEKVENCE_2NP_LOZ_ANGEL_STOP'}
	}
BUTTON_EVENT[dvMyTP_01,nBTN_2NPLOZ_RGB_STRED]
{
  PUSH:
		{
		STACK_VAR INTEGER nBtnIdx
		STACK_VAR CHAR SC[2]
		nBtnIdx = GET_LAST(nBTN_2NPLOZ_RGB_STRED)
		SC[1] = ILT_2NP_LOZNICE_AREA
		SWITCH(nBtnIdx)
			{
			  CASE    1: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_LOZNICE_10)}		
			  CASE    2: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_LOZNICE_10)}
			  CASE    3: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_10,00,0)} 
			  CASE    4: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_LOZNICE_11)}		
			  CASE    5: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_LOZNICE_11)}
			  CASE    6: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_11,00,0)} 
			  CASE    7: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_LOZNICE_12)}		
			  CASE    8: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_LOZNICE_12)}
			  CASE    9: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_12,00,0)} 
			  CASE    10: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_LOZNICE_27)}		
			  CASE    11: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_LOZNICE_27)}
			  CASE    12: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_27,00,0)} 
			  CASE    13: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_LOZNICE_26)}		
			  CASE    14: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_LOZNICE_26)}
			  CASE    15: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_26,00,0)} 
			  CASE    16: {	SC[2] = 90								/// SCENA NA ILIGHT PRO RGB 1
							CALL 'ILIGHT_SCENA' (SC,1)							//3079	
							}							
			  CASE    17: {	SC[2] = 90								/// SCENA NA ILIGHT PRO RGB 1
							CALL 'ILIGHT_SAVE_SCENE' (SC)}	
			  CASE    18: {	SC[2] = 91								//3081	/// SCENA NA ILIGHT PRO RGB 2
							CALL 'ILIGHT_SCENA' (SC,1)							
							}							
			  CASE    19: { SC[2] = 91								/// SCENA NA ILIGHT PRO RGB 2
							CALL 'ILIGHT_SAVE_SCENE' (SC)}	
						
			  CASE    20: {CALL 'REQUEST_CHANNELS_2NP_LOZNICE_RGB_STRED'} 		//3083
			}
			CANCEL_WAIT 'KILL RGB'
		}
	HOLD[2,REPEAT]:
		{
		STACK_VAR INTEGER nBtnIdx
		nBtnIdx = GET_LAST(nBTN_2NPLOZ_RGB_STRED)
		SWITCH(nBtnIdx)
			{
			CASE  1: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_LOZNICE_10)}			
			CASE  2: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_LOZNICE_10)}
			CASE  4: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_LOZNICE_11)}			
			CASE  5: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_LOZNICE_11)}
			CASE  7: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_LOZNICE_12)}			
			CASE  8: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_LOZNICE_12)}
			CASE  10: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_LOZNICE_27)}			
			CASE  11: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_LOZNICE_27)}
			CASE  13: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_LOZNICE_26)}			
			CASE  14: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_LOZNICE_26)}
			}
		}
	RELEASE:
		  {
		  STACK_VAR INTEGER nBtnIdx
		  nBtnIdx = GET_LAST(nBTN_2NPLOZ_RGB_STRED)
		  SWITCH(nBtnIdx)
				{
				CASE    3: 
				CASE    6: 
				CASE    9: 
				CASE    12: 
				CASE    15: 
				CASE    16: 
				CASE    17: 
				CASE    18: 
				CASE    19: WAIT 20
								{
								CALL 'REQUEST_CHANNELS_2NP_LOZNICE_RGB_STRED'
								}
				}
				WAIT 30 'KILL RGB'
					{
					SEND_COMMAND dvMyTP_01, "'@PPK-2_loznice_RGB1'"
					SEND_COMMAND dvMyTP_01, "'@PPK-2_loznice_RGB2'"
					SEND_COMMAND dvMyTP_01, "'@PPK-2_loznice_RGB3'"
					SEND_COMMAND dvMyTP_01, "'@PPK-2_loznice_RGB4'"
					SEND_COMMAND dvMyTP_01, "'@PPK-2_loznice_RGB5'"
					}
				
			}
}

BUTTON_EVENT[dvMyTP_01,nBTN_2NPLOZ_RGB_LEVA]
{
  PUSH:
		{
		STACK_VAR INTEGER nBtnIdx
		STACK_VAR CHAR SC[2]
		nBtnIdx = GET_LAST(nBTN_2NPLOZ_RGB_LEVA)
		SC[1] = ILT_2NP_LOZNICE_AREA
		SWITCH(nBtnIdx)
			{
			  CASE    1: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_LOZNICE_14)}		//3064
			  CASE    2: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_LOZNICE_14)}
			  CASE    3: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_14,00,0)} 
			  CASE    4: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_LOZNICE_15)}		//3067
			  CASE    5: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_LOZNICE_15)}
			  CASE    6: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_15,00,0)} 
			  CASE    7: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_LOZNICE_16)}		//3070
			  CASE    8: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_LOZNICE_16)}
			  CASE    9: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_16,00,0)} 
			  CASE    10: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_LOZNICE_29)}		//3073
			  CASE    11: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_LOZNICE_29)}
			  CASE    12: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_29,00,0)} 
			  CASE    13: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_LOZNICE_28)}		//3076
			  CASE    14: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_LOZNICE_28)}
			  CASE    15: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_28,00,0)} 
			  CASE    16: {	SC[2] = 94								/// SCENA NA ILIGHT PRO RGB 1
							CALL 'ILIGHT_SCENA' (SC,1)							//3079	
							}							
			  CASE    17: {	SC[2] = 94								/// SCENA NA ILIGHT PRO RGB 1
							CALL 'ILIGHT_SAVE_SCENE' (SC)}	
			  CASE    18: {	SC[2] = 95								//3081	/// SCENA NA ILIGHT PRO RGB 2
							CALL 'ILIGHT_SCENA' (SC,1)							
							}							
			  CASE    19: { SC[2] = 95								/// SCENA NA ILIGHT PRO RGB 2
							CALL 'ILIGHT_SAVE_SCENE' (SC)}	
						
			  CASE    20: {CALL 'REQUEST_CHANNELS_2NP_LOZNICE_RGB_LEVA'} 		//3083
			}
			CANCEL_WAIT 'KILL RGB'
		}
	HOLD[2,REPEAT]:
		{
		STACK_VAR INTEGER nBtnIdx
		nBtnIdx = GET_LAST(nBTN_2NPLOZ_RGB_LEVA)
		SWITCH(nBtnIdx)
			{
			CASE  1: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_LOZNICE_14)}			
			CASE  2: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_LOZNICE_14)}
			CASE  4: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_LOZNICE_15)}			
			CASE  5: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_LOZNICE_15)}
			CASE  7: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_LOZNICE_16)}			
			CASE  8: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_LOZNICE_16)}
			CASE  10: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_LOZNICE_29)}			
			CASE  11: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_LOZNICE_29)}
			CASE  13: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_LOZNICE_28)}			
			CASE  14: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_LOZNICE_28)}
			}
		}
	RELEASE:
		  {
		  STACK_VAR INTEGER nBtnIdx
		  nBtnIdx = GET_LAST(nBTN_2NPLOZ_RGB_LEVA)
		  SWITCH(nBtnIdx)
				{
				CASE    3: 
				CASE    6: 
				CASE    9: 
				CASE    12: 
				CASE    15: 
				CASE    16: 
				CASE    17: 
				CASE    18: 
				CASE    19: WAIT 20
								{
								CALL 'REQUEST_CHANNELS_2NP_LOZNICE_RGB_LEVA'
								}
				}
				WAIT 30 'KILL RGB'
					{
					SEND_COMMAND dvMyTP_01, "'@PPK-2_loznice_RGB1'"
					SEND_COMMAND dvMyTP_01, "'@PPK-2_loznice_RGB2'"
					SEND_COMMAND dvMyTP_01, "'@PPK-2_loznice_RGB3'"
					SEND_COMMAND dvMyTP_01, "'@PPK-2_loznice_RGB4'"
					SEND_COMMAND dvMyTP_01, "'@PPK-2_loznice_RGB5'"
					}
			}
}

BUTTON_EVENT[dvMyTP_01,nBTN_2NPLOZ_RGB_PRAVA]
{
PUSH:
		{
		STACK_VAR INTEGER nBtnIdx
		STACK_VAR CHAR SC[2]
		nBtnIdx = GET_LAST(nBTN_2NPLOZ_RGB_PRAVA)
		SC[1] = ILT_2NP_LOZNICE_AREA
		SWITCH(nBtnIdx)
			{
			  CASE    1: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_LOZNICE_18)}		//3064
			  CASE    2: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_LOZNICE_18)}
			  CASE    3: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_18,00,0)} 
			  CASE    4: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_LOZNICE_19)}		//3067
			  CASE    5: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_LOZNICE_19)}
			  CASE    6: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_19,00,0)} 
			  CASE    7: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_LOZNICE_20)}		//3070
			  CASE    8: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_LOZNICE_20)}
			  CASE    9: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_20,00,0)} 
			  CASE    10: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_LOZNICE_31)}		//3073
			  CASE    11: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_LOZNICE_31)}
			  CASE    12: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_31,00,0)} 
			  CASE    13: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_LOZNICE_30)}		//3076
			  CASE    14: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_LOZNICE_30)}
			  CASE    15: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_30,00,0)} 
			  CASE    16: {	SC[2] = 92								/// SCENA NA ILIGHT PRO RGB 1
							CALL 'ILIGHT_SCENA' (SC,1)							//3079	
							}							
			  CASE    17: {	SC[2] = 92								/// SCENA NA ILIGHT PRO RGB 1
							CALL 'ILIGHT_SAVE_SCENE' (SC)}	
			  CASE    18: {	SC[2] = 93								//3081	/// SCENA NA ILIGHT PRO RGB 2
							CALL 'ILIGHT_SCENA' (SC,1)							
							}							
			  CASE    19: { SC[2] = 93								/// SCENA NA ILIGHT PRO RGB 2
							CALL 'ILIGHT_SAVE_SCENE' (SC)}	
						
			  CASE    20: {CALL 'REQUEST_CHANNELS_2NP_LOZNICE_RGB_PRAVA'} 		//3083
			}
			CANCEL_WAIT 'KILL RGB'
		}
	HOLD[2,REPEAT]:
		{
		STACK_VAR INTEGER nBtnIdx
		nBtnIdx = GET_LAST(nBTN_2NPLOZ_RGB_PRAVA)
		SWITCH(nBtnIdx)
			{
			CASE  1: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_LOZNICE_18)}			
			CASE  2: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_LOZNICE_18)}
			CASE  4: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_LOZNICE_19)}			
			CASE  5: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_LOZNICE_19)}
			CASE  7: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_LOZNICE_20)}			
			CASE  8: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_LOZNICE_20)}
			CASE  10: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_LOZNICE_31)}			
			CASE  11: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_LOZNICE_31)}
			CASE  13: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_LOZNICE_30)}			
			CASE  14: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_LOZNICE_30)}
			}
		}
	RELEASE:
		  {
		  STACK_VAR INTEGER nBtnIdx
		  nBtnIdx = GET_LAST(nBTN_2NPLOZ_RGB_PRAVA)
		  SWITCH(nBtnIdx)
				{
				CASE    3: 
				CASE    6: 
				CASE    9: 
				CASE    12: 
				CASE    15: 
				CASE    16: 
				CASE    17: 
				CASE    18: 
				CASE    19: WAIT 20
								{
								CALL 'REQUEST_CHANNELS_2NP_LOZNICE_RGB_PRAVA'
								}
				}
				WAIT 30 'KILL RGB'
					{
					SEND_COMMAND dvMyTP_01, "'@PPK-2_loznice_RGB1'"
					SEND_COMMAND dvMyTP_01, "'@PPK-2_loznice_RGB2'"
					SEND_COMMAND dvMyTP_01, "'@PPK-2_loznice_RGB3'"
					SEND_COMMAND dvMyTP_01, "'@PPK-2_loznice_RGB4'"
					SEND_COMMAND dvMyTP_01, "'@PPK-2_loznice_RGB5'"
					}
			}
}
BUTTON_EVENT[dvMyTP_01,nBTN_2NPLOZ_RGB3]					/// OVLADANI LOZNICE ANGEL 3730-3744
{
	PUSH:
	{
	STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SC[2]
	nBtnIdx = GET_LAST(nBTN_2NPLOZ_RGB3)
	SC[1] = ILT_2NP_LOZNICE_AREA
	SWITCH(nBtnIdx)
			{
			  CASE    1: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_22,00,1)} 	///3730
			  CASE    2: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_23,00,1)} 
			  CASE    3: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_24,00,1)} 
			  CASE    4: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_LOZNICE_25,00,1)} 	///3733
			  CASE    5: {	
							//SC[2] = 96								/// SCENA 3734
							//CALL 'ILIGHT_SCENA' (SC,1)								
						}																
			  CASE    6: {	
							//SC[2] = 96								/// SCENA 3735
							//CALL 'ILIGHT_SAVE_SCENE' (SC)
						}															 
			  CASE    7: {	
							//SC[2] = 97								//	SCENA 3736
							//CALL 'ILIGHT_SCENA' (SC,1)							
							}															
			  CASE    8: { 
							//SC[2] = 97								/// SCENA 3737
							//CALL 'ILIGHT_SAVE_SCENE' (SC)}
							}
				////  SRDCE START	///
			  CASE    9:  {RGB_2NP_HEART_01_ACTIVE=TRUE; RGB_2NP_HEART_02_ACTIVE=FALSE; RGB_2NP_HEART_03_ACTIVE=FALSE; RGB_2NP_HEART_04_ACTIVE=FALSE; RGB_2NP_HEART_05_ACTIVE=FALSE; RGB_2NP_HEART_06_ACTIVE=FALSE}	// 3738
			  CASE    10: {RGB_2NP_HEART_01_ACTIVE=FALSE; RGB_2NP_HEART_02_ACTIVE=TRUE; RGB_2NP_HEART_03_ACTIVE=FALSE; RGB_2NP_HEART_04_ACTIVE=FALSE; RGB_2NP_HEART_05_ACTIVE=FALSE; RGB_2NP_HEART_06_ACTIVE=FALSE}		
			  CASE    11: {RGB_2NP_HEART_01_ACTIVE=FALSE; RGB_2NP_HEART_02_ACTIVE=FALSE; RGB_2NP_HEART_03_ACTIVE=TRUE; RGB_2NP_HEART_04_ACTIVE=FALSE; RGB_2NP_HEART_05_ACTIVE=FALSE; RGB_2NP_HEART_06_ACTIVE=FALSE}	// 3740
			  CASE    12: {RGB_2NP_HEART_01_ACTIVE=FALSE; RGB_2NP_HEART_02_ACTIVE=FALSE; RGB_2NP_HEART_03_ACTIVE=FALSE; RGB_2NP_HEART_04_ACTIVE=TRUE; RGB_2NP_HEART_05_ACTIVE=FALSE; RGB_2NP_HEART_06_ACTIVE=FALSE}	// 3741
			   ////  SRDCE KONEC  ///		
			  CASE    13: {RGB_2NP_HEART_01_ACTIVE=FALSE; RGB_2NP_HEART_02_ACTIVE=FALSE; RGB_2NP_HEART_03_ACTIVE=FALSE; RGB_2NP_HEART_04_ACTIVE=FALSE; RGB_2NP_HEART_05_ACTIVE=TRUE; RGB_2NP_HEART_06_ACTIVE=FALSE}		
			  CASE    14: {RGB_2NP_HEART_01_ACTIVE=FALSE; RGB_2NP_HEART_02_ACTIVE=FALSE; RGB_2NP_HEART_03_ACTIVE=FALSE; RGB_2NP_HEART_04_ACTIVE=FALSE; RGB_2NP_HEART_05_ACTIVE=FALSE; RGB_2NP_HEART_06_ACTIVE=TRUE}
			  CASE    15: {CALL 'SEKVENCE_2NP_LOZ_ANGEL_STOP'} 	//3744
			  CASE    16: {}							
			  CASE    17: {}	
			  CASE    18: {}
			  CASE    19: {}
			  CASE    20: {CALL 'REQUEST_CHANNELS_2NP_LOZNICE_RGB_ANGEL'} 		//3749
			}
			CANCEL_WAIT 'EFEKT_2NP_LOZNICE_ANGEL'
			CANCEL_WAIT 'KILL RGB'
	}
	HOLD[2]:
	{
	}
	RELEASE:
	{
	STACK_VAR INTEGER nBtnIdx
	nBtnIdx = GET_LAST(nBTN_2NPLOZ_RGB3)
	SWITCH(nBtnIdx)
			{
			CASE    9:  {RGB_2NP_LOZ_ANDEL_KROK=1; RGB_2NP_HEART_TIMER_ACTIVE=TRUE; CALL 'RGB_2NP_HEART_TIMER'}		//SRDCE1
			CASE    10: {RGB_2NP_LOZ_ANDEL_KROK=1; RGB_2NP_HEART_TIMER_ACTIVE=TRUE; CALL 'RGB_2NP_HEART_TIMER'}		//SRDCE2	
			CASE    11: {RGB_2NP_LOZ_ANDEL_KROK=1; RGB_2NP_HEART_TIMER_ACTIVE=TRUE; CALL 'RGB_2NP_HEART_TIMER'}		//SRDCE3
			CASE    12: {RGB_2NP_LOZ_ANDEL_KROK=1; RGB_2NP_HEART_TIMER_ACTIVE=TRUE; CALL 'RGB_2NP_HEART_TIMER'}		//SRDCE4
			CASE    13: {RGB_2NP_LOZ_ANDEL_KROK=1; RGB_2NP_HEART_TIMER_ACTIVE=TRUE; CALL 'RGB_2NP_HEART_TIMER'}		
			CASE    14: {RGB_2NP_LOZ_ANDEL_KROK=1; RGB_2NP_HEART_TIMER_ACTIVE=TRUE; CALL 'RGB_2NP_HEART_TIMER'}
			}
		WAIT 10
		//CALL 'REQUEST_CHANNELS_2NP_LOZNICE_RGB_ANGEL'
		WAIT 30 'KILL RGB'
			{
			SEND_COMMAND dvMyTP_01, "'@PPK-2_loznice_RGB1'"
			SEND_COMMAND dvMyTP_01, "'@PPK-2_loznice_RGB2'"
			SEND_COMMAND dvMyTP_01, "'@PPK-2_loznice_RGB3'"
			SEND_COMMAND dvMyTP_01, "'@PPK-2_loznice_RGB4'"
			SEND_COMMAND dvMyTP_01, "'@PPK-2_loznice_RGB5'"
			}
	}
}

////////////////////////////////////////////////		DETSKY POKOJ		//////////////////////////////////////
BUTTON_EVENT[dvMyTP_01,1399]									/// Dotaz Svìtla v Detskem pokoji
{
  PUSH:
	{
	  // ZEPTAM SE NA CISLO SCENY. TOTO ALE NEMUSI BYT TO SPRAVNE, CO SE MA ZOBRAZIT.
		// VYHODNOCENI TOHO, CO SE MA ZOBRAZIT, ALE NECHAM NA ZOBRAZ_SCENU.
		// BEZI-LI SEKVENCE, IGNORUJE SE ODPOVED NA TENTO DOTAZ, K OBNOVENI TEXTU DOJDE 
		// PRES PORCEDURU AKTUALNI SEKVENCE, NEBEZI-LI, PAK ODPOVED NA TENTO DOTAZ
		// - TEDY CISLO SCENY - SE ZOBRAZI NA TP
	  CALL 'ILIGHT_SCENA_REQUEST' (ILT_2NP_DETPOK_AREA) 
	  wait 20
	  CALL 'REQUEST_CHANNELS_2NP_DET_POKOJ'
	}
}

BUTTON_EVENT[dvMyTP_01,nBTN_SVETLA_2NP_DETI]			/// SVETLA DETI - 51 BUTTONS 1404-1420
{
  PUSH:
  {
	STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SV_ARR[2]
	nBtnIdx = GET_LAST(nBTN_SVETLA_2NP_DETI)
	SV_ARR[1] = 255
	SWITCH(nBtnIdx)
		{
		  CASE 1:  											/// DETSKY STROP	 			//1404			
		  CASE 2: SV_ARR = SV_2NP_DETSKY_11			
		  CASE 3: 											/// DETSKY RED 	//1406			
		  CASE 4: SV_ARR = SV_2NP_DETSKY_04			
		  CASE 5: 											/// DETSKY GREEN			
		  CASE 6: SV_ARR = SV_2NP_DETSKY_05 		
		  CASE 7: 											/// DETSKY BLUE			
		  CASE 8: SV_ARR = SV_2NP_DETSKY_06 		 
		  CASE 9: 											/// DETSKY LAMPICKA OKNO ON	//1412			
		  CASE 10: SV_ARR = SV_2NP_DETSKY_07 
		  CASE 11: 											/// DETSKY LAMPICKA STRED ON			
		  CASE 12: SV_ARR = SV_2NP_DETSKY_08 
		  CASE 13: 														
		  CASE 14: SV_ARR = SV_2NP_DETSKY_09 		/// DETSKY LAMPICKA KOUPELNA OFF		//1417
		}
	IF (SV_ARR[1]<>255)
		CALL 'ILIGHT_CHANNEL_REQUEST' (SV_ARR)
	}
	 HOLD[2,REPEAT]:
	 {
    STACK_VAR INTEGER nBtnIdx
		STACK_VAR CHAR SV_ARR[2]
		IF (BUTTON.HOLDTIME>=300) // JEN POKUD TLACITKO DRZENO DELE NEZ 300ms
		{
			nBtnIdx = GET_LAST(nBTN_SVETLA_2NP_DETI)
			SV_ARR[1] = 255
			SWITCH(nBtnIdx)
				{
				CASE 1:  											/// DETSKY STROP	 			//1404			
				CASE 2: SV_ARR = SV_2NP_DETSKY_11			
				CASE 3: 											/// DETSKY RED 	//1406			
				CASE 4: SV_ARR = SV_2NP_DETSKY_04			
				CASE 5: 											/// DETSKY GREEN			
				CASE 6: SV_ARR = SV_2NP_DETSKY_05 		
				CASE 7: 											/// DETSKY BLUE			
				CASE 8: SV_ARR = SV_2NP_DETSKY_06 		 
				CASE 9: 											/// DETSKY LAMPICKA OKNO ON	//1412			
				CASE 10: SV_ARR = SV_2NP_DETSKY_07 
				CASE 11: 											/// DETSKY LAMPICKA STRED ON			
				CASE 12: SV_ARR = SV_2NP_DETSKY_08 
				CASE 13: 														
				CASE 14: SV_ARR = SV_2NP_DETSKY_09 		/// DETSKY LAMPICKA KOUPELNA OFF		//1417
				}
			IF (SV_ARR[1]<>255)
			{
			  tmpARCH = SV_ARR // DULEZITE, PROTOZE V CALL JE WAIT 5 !!!
				IF ((nBtnIdx MOD 2)>0) // LICHE CISLO - UP
				  CALL 'ILIGHT_CHANNEL_RAISE2' (tmpARCH)
				ELSE // ((nBtnIdx MOD 2)=0) // SUDE CISLO - DOWN
				  CALL 'ILIGHT_CHANNEL_LOWER2' (tmpARCH)
			}
		}
  }
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
		STACK_VAR CHAR SV_ARR[2]
		IF (BUTTON.HOLDTIME < 300) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 300ms
		{
			nBtnIdx = GET_LAST(nBTN_SVETLA_2NP_DETI)
			SV_ARR[1] = 255
			SWITCH(nBtnIdx)
				{
				CASE 1:  											/// DETSKY STROP	 			//1404			
				CASE 2: SV_ARR = SV_2NP_DETSKY_11			
				CASE 3: 											/// DETSKY RED 	//1406			
				CASE 4: SV_ARR = SV_2NP_DETSKY_04			
				CASE 5: 											/// DETSKY GREEN			
				CASE 6: SV_ARR = SV_2NP_DETSKY_05 		
				CASE 7: 											/// DETSKY BLUE			
				CASE 8: SV_ARR = SV_2NP_DETSKY_06 		 
				CASE 9: 											/// DETSKY LAMPICKA OKNO ON	//1412			
				CASE 10: SV_ARR = SV_2NP_DETSKY_07 
				CASE 11: 											/// DETSKY LAMPICKA STRED ON			
				CASE 12: SV_ARR = SV_2NP_DETSKY_08 
				CASE 13: 														
				CASE 14: SV_ARR = SV_2NP_DETSKY_09 		/// DETSKY LAMPICKA KOUPELNA OFF		//1417
				}
			IF (SV_ARR[1]<>255)
				{
				IF ((nBtnIdx MOD 2)>0) // LICHE CISLO - ON
				  CALL 'ILIGHT_CHANNEL_RAISE2' (SV_ARR)
				ELSE // ((nBtnIdx MOD 2)=0) // SUDE CISLO - OFF
				  CALL 'ILIGHT_CHANNEL_LOWER2' (SV_ARR)
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_ARR)
				}
		}
  }
}

BUTTON_EVENT[dvMyTP_01,nBTN_SVETLA2_2NP_DETI]			/// PREDELAVKA - SVETLA DETI ON/OFF 1400-1403
{
PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_SVETLA2_2NP_DETI)
		SWITCH(nBtnIdx)
				{
				CASE 1:{
						CALL 'ILIGHT_CHANNEL_ON' (SV_2NP_DETSKY_12)		/// DETSKY SIKMINA LEVA
						WAIT 1
						CALL 'ILIGHT_CHANNEL_ON' (SV_2NP_DETSKY_01)	
						}
				CASE 2: {
						CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_DETSKY_12)		/// DETSKY SIKMINA LEVA	
						WAIT 1
						CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_DETSKY_01)	
						} 		
				CASE 3:	{
						CALL 'ILIGHT_CHANNEL_ON' (SV_2NP_DETSKY_13)		/// DETSKY SIKMINA PRAVA
						WAIT 1
						CALL 'ILIGHT_CHANNEL_ON' (SV_2NP_DETSKY_02)	
						}														/// DETSKY SIKMINA PRAVA  /// 1402				
				CASE 4: {
						CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_DETSKY_13)		/// DETSKY SIKMINA PRAVA
						WAIT 1
						CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_DETSKY_02)	
						}	
				}
	}
}

(*		ELEGANTNI ALE MUSEL BYCH PRIZPUSOBIT PRO DVA KANALY
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
		STACK_VAR CHAR SV_ARR[2]
    nBtnIdx = GET_LAST(nBTN_SVETLA_2NP_DETI)
		SV_ARR[1] = 255
		SWITCH(nBtnIdx)
				{
				CASE 3: 										/// DETSKY SIKMINA LEVA		
				CASE 4: SV_ARR = SV_2NP_DETSKY_12 		
				CASE 5:											/// DETSKY SIKMINA PRAVA  /// 1402				
				CASE 6: SV_ARR = SV_2NP_DETSKY_13 	
				}
			IF (SV_ARR[1]<>255)
				{
				IF ((nBtnIdx MOD 2)>0) // LICHE CISLO - ON
				  CALL 'ILIGHT_CHANNEL_ON' (SV_ARR)
				ELSE // ((nBtnIdx MOD 2)=0) // SUDE CISLO - OFF
				  CALL 'ILIGHT_CHANNEL_OFF' (SV_ARR)
				}
	}


BUTTON_EVENT[dvMyTP_01,1400]									/// Svìtla v Detskem pokoji
{
  PUSH:
	{
	  	  CALL 'ILIGHT_CHANNEL_ON' (SV_2NP_DETSKY_12) 
	}
}

BUTTON_EVENT[dvMyTP_01,1401]									/// Svìtla v Detskem pokoji
{
  PUSH:
	{
	  	  CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_DETSKY_12) 
	}
}


BUTTON_EVENT[dvMyTP_01,1402]									/// Svìtla v Detskem pokoji
{
  PUSH:
	{
	  	  CALL 'ILIGHT_CHANNEL_ON' (SV_2NP_DETSKY_13) 
	}
}

BUTTON_EVENT[dvMyTP_01,1403]									/// Svìtla v Detskem pokoji
{
  PUSH:
	{
	  	  CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_DETSKY_13) 
	}
}
*)




BUTTON_EVENT[dvMyTP_01,nBTN_SCENY_2NP_DETI]				/// SCENY DETI - 55 BUTTONS 1430-1484 OMEZIL JSEM NA 
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
	  STACK_VAR CHAR SC[2]	  
    nBtnIdx = GET_LAST(nBTN_SCENY_2NP_DETI)
		IF (RGB_2NP_DETI_SEKVENCE <> RGB_2DET_00) // BEZI-LI SEKVENCE, OKAMZITE UKONCI
			CALL 'SEKVENCE_2NP_DETI_STOP'  /// mozno pridat do slozene zavorky i zhasnuti svetel 
		IF (nBtnIdx = 33) 
		{		  
			SC[1] = ILT_2NP_DETPOK_AREA
			SC[2] = 0
			CALL 'ILIGHT_SCENA' (SC,0) // ALL OFF		
			// JE OTAZKA NA REALNEM FFEDBACKU, JESTLI ZOBRAZIT SCENA:OFF, NEBO SCENA:0
			WAIT 15 // PRO REALNOU ZPETNOU VAZBU
			CALL 'POWER_OFF_2NP_DET_POKOJ'
			WAIT 30 // PRO REALNOU ZPETNOU VAZBU
			CALL 'ILIGHT_SCENA_REQUEST'(ILT_2NP_DETPOK_AREA) 
			//CALL 'ILIGHT_SCENA_REQUEST'(ILT_2NP_DETI_AREA) 
		}
	}
  RELEASE:
	{
    STACK_VAR INTEGER nBtnIdx
	  STACK_VAR CHAR SC[2]	  
    nBtnIdx = GET_LAST(nBTN_SCENY_2NP_DETI)
		IF (nBtnIdx < 33) 
		{
			SC[1] = ILT_2NP_DETPOK_AREA
			SC[2] = TYPE_CAST(nBtnIdx) // VIM, ZE nBtnIdx JE URCITE MENSI NEZ 255, TUDIZ SI MOHU DOVOLIT PRETYPOVAT
			IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
			{ // VYVOLEJ SCENU
				CALL 'ILIGHT_SCENA' (SC,1)
			}
			ELSE
			{ // ULOZ SCENU
			  CALL 'ILIGHT_SAVE_SCENE' (SC)
				SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA V DP CISLO ',ITOA(nBtnIdx)"
				SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			}
			WAIT 20 // PRO REALNOU ZPETNOU VAZBU
				CALL 'ILIGHT_SCENA_REQUEST'(ILT_2NP_DETPOK_AREA) 
		}
	}
}
BUTTON_EVENT[dvMyTP_01,1484]									/// ALL OFF DP
{
	PUSH: 
		{
		STACK_VAR CHAR SC[2]	
		SC[1] = ILT_2NP_DETPOK_AREA
		SC[2] = 0
		CALL 'ILIGHT_SCENA' (SC,0) // ALL OFF
		WAIT 15
		CALL 'SEKVENCE_2NP_DETI_STOP'
		WAIT 30
		CALL 'POWER_OFF_2NP_DET_POKOJ'
		}
}

BUTTON_EVENT[dvMyTP_01,nBTN_RGB_2NP_DETI]				/// 1490 - 1491  RGB AUTOMAT DETI
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_RGB_2NP_DETI)
    SWITCH(nBtnIdx)
		{
		CASE 1: // POUZIJE SE HODNOTA NIZE
		CASE 2: {RGB_2NP_DETI_01_ACTIVE = TRUE}
		}
		RGB_2NP_DETI_SEKVENCE = RGB_2DET_01 /// JE TO UZ RESENO JINAK, TOTO JE ALE POUZITO V ZPRACOVANI ZPRAVY, TAK JSEM ZACHOVAL 	
		RGB_2NP_DETI_TIMER_ACTIVE=TRUE
		IF ((nBtnIdx MOD 2)>0) // LICHE CISLO - UP
			CALL 'RGB_2NP_DETI_TIMER'(50)
		ELSE // ((nBtnIdx MOD 2)=0) // SUDE CISLO - DOWN
			CALL 'RGB_2NP_DETI_TIMER'(250)
	}
}

BUTTON_EVENT[dvMyTP_01,1494]									/// OFF RGB 1 v DP
{
	PUSH: {RGB_2NP_DETI_01_ACTIVE = FALSE; CALL 'RGB_2NP_DETI_TIMER_STOP'}
}
BUTTON_EVENT[dvMyTP_01,1495]									/// OFF RGB AUTO v DP
{
	PUSH: {CALL 'SEKVENCE_2NP_DETI_STOP'}
}

BUTTON_EVENT[dvMyTP_01,1835]									/// Dotaz Svìtla v Koupelne 2NP
{
  PUSH:
	{
	  CALL 'ILIGHT_SCENA_REQUEST' (ILT_2NP_KOUPELNA_AREA) 
	}
}
BUTTON_EVENT[dvMyTP_01,nBTN_SVETLA_2NP_KOUPEL]			/// SVETLA KOUPELNA 2NP - 30 BUTTONS 1500-1529 
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
		STACK_VAR CHAR SV_ARR[2]
    nBtnIdx = GET_LAST(nBTN_SVETLA_2NP_KOUPEL)
		SV_ARR[1] = 255
		SWITCH(nBtnIdx)
		{
			CASE 1:  														
			CASE 2: SV_ARR = SV_2NP_KOUPELNA_01			//1501	
			CASE 3: 												
			CASE 4: SV_ARR = SV_2NP_KOUPELNA_02 		
			CASE 5:															
			CASE 6: SV_ARR = SV_2NP_KOUPELNA_03 		
			CASE 7: 														
			CASE 8: SV_ARR = SV_2NP_KOUPELNA_04			
			CASE 9: 													
			CASE 10: SV_ARR = SV_2NP_KOUPELNA_05 		
			CASE 11: 														
			CASE 12: SV_ARR = SV_2NP_KOUPELNA_06 		//1511		 
			CASE 13: 														
			CASE 14: SV_ARR = SV_2NP_KOUPELNA_07 
			CASE 15: 													
			CASE 16: SV_ARR = SV_2NP_KOUPELNA_08 
			CASE 25: 														
			CASE 26: SV_ARR = SV_2NP_KOUPELNA_12	
			CASE 27: 													
			CASE 28: SV_ARR = SV_2NP_KOUPELNA_12 
			CASE 29: 														
			CASE 30: SV_ARR = SV_2NP_KOUPELNA_12 
		}
		IF (SV_ARR[1]<>255)
		  CALL 'ILIGHT_CHANNEL_REQUEST' (SV_ARR)
	}
	 HOLD[2,REPEAT]:
	 {
    STACK_VAR INTEGER nBtnIdx
		STACK_VAR CHAR SV_ARR[2]
		IF (BUTTON.HOLDTIME>=300) // JEN POKUD TLACITKO DRZENO DELE NEZ 300ms
		{
			nBtnIdx = GET_LAST(nBTN_SVETLA_2NP_KOUPEL)
			SV_ARR[1] = 255
			SWITCH(nBtnIdx)
			{
				CASE 1:  														
				CASE 2: SV_ARR = SV_2NP_KOUPELNA_01	
				CASE 3: 														
				CASE 4: SV_ARR = SV_2NP_KOUPELNA_02 	
				CASE 5:															
				CASE 6: SV_ARR = SV_2NP_KOUPELNA_03 	
				CASE 7: 														
				CASE 8: SV_ARR = SV_2NP_KOUPELNA_04	
				CASE 9: 													
				CASE 10: SV_ARR = SV_2NP_KOUPELNA_05 
				CASE 11: 														
				CASE 12: SV_ARR = SV_2NP_KOUPELNA_06 
				CASE 13: 														
				CASE 14: SV_ARR = SV_2NP_KOUPELNA_07 
				CASE 15: 														
				CASE 16: SV_ARR = SV_2NP_KOUPELNA_08 
				CASE 25: 														
				CASE 26: SV_ARR = SV_2NP_KOUPELNA_12	
				CASE 27: 													
				CASE 28: SV_ARR = SV_2NP_KOUPELNA_12 
				CASE 29: 														
				CASE 30: SV_ARR = SV_2NP_KOUPELNA_12 
			}
			IF (SV_ARR[1]<>255)
			{
			  tmpARCH = SV_ARR // DULEZITE, PROTOZE V CALL JE WAIT 5 !!!
				IF ((nBtnIdx MOD 2)>0) // LICHE CISLO - UP
				  CALL 'ILIGHT_CHANNEL_RAISE2' (tmpARCH)
				ELSE // ((nBtnIdx MOD 2)=0) // SUDE CISLO - DOWN
				  CALL 'ILIGHT_CHANNEL_LOWER2' (tmpARCH)
			}
		}
  }
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
		STACK_VAR CHAR SV_ARR[2]
		IF (BUTTON.HOLDTIME < 200) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 300ms
		{
			nBtnIdx = GET_LAST(nBTN_SVETLA_2NP_KOUPEL)
			SV_ARR[1] = 255
			SWITCH(nBtnIdx)
			{
				CASE 1:  														
				CASE 2: SV_ARR = SV_2NP_KOUPELNA_01	
				CASE 3: 														
				CASE 4: SV_ARR = SV_2NP_KOUPELNA_02 	
				CASE 5:															
				CASE 6: SV_ARR = SV_2NP_KOUPELNA_03	
				CASE 7: 														
				CASE 8: SV_ARR = SV_2NP_KOUPELNA_04	
				CASE 9: 														
				CASE 10: SV_ARR = SV_2NP_KOUPELNA_05 
				CASE 11: 														
				CASE 12: SV_ARR = SV_2NP_KOUPELNA_06 
				CASE 13: 														
				CASE 14: SV_ARR = SV_2NP_KOUPELNA_07 
				CASE 15: 														
				CASE 16: SV_ARR = SV_2NP_KOUPELNA_08 
				CASE 25: 														
				CASE 26: SV_ARR = SV_2NP_KOUPELNA_12	
				CASE 27: 													
				CASE 28: SV_ARR = SV_2NP_KOUPELNA_12 
				CASE 29: 														
				CASE 30: SV_ARR = SV_2NP_KOUPELNA_12 
			}
			IF (SV_ARR[1]<>255)
			{
				IF ((nBtnIdx MOD 2)>0) // LICHE CISLO - ON
				  CALL 'ILIGHT_CHANNEL_ON' (SV_ARR)
				ELSE // ((nBtnIdx MOD 2)=0) // SUDE CISLO - OFF
				  CALL 'ILIGHT_CHANNEL_OFF' (SV_ARR)
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_ARR)
			}
		}
  }
}
BUTTON_EVENT[dvMyTP_01,nBTN_SVETLA_2NP_KOUPEL]			/// SVETLA PLEXISKLO RGB KOUPELNA 2NP - 1516-15223 
{
  PUSH:
  {
		STACK_VAR INTEGER nBtnIdx
		STACK_VAR CHAR SV_ARR[2]
		nBtnIdx = GET_LAST(nBTN_SVETLA_2NP_KOUPEL)
		SV_ARR[1] = 255
		SWITCH(nBtnIdx)
		{
			CASE 17: 														
			CASE 18: SV_ARR = SV_2NP_KOUPELNA_09 		//1517
			CASE 19:  														
			CASE 20: SV_ARR = SV_2NP_KOUPELNA_10	
			CASE 21: 														
			CASE 22: SV_ARR = SV_2NP_KOUPELNA_11 		
			CASE 23:															
			CASE 24: SV_ARR = SV_2NP_KOUPELNA_12 		//1523
		}
		IF (SV_ARR[1]<>255)
			{
			tmpARCH = SV_ARR // DULEZITE, PROTOZE V CALL JE WAIT 5 !!!
			IF ((nBtnIdx MOD 2)>0) // LICHE CISLO - UP
			  CALL 'ILIGHT_CHANNEL_RAISE2' (tmpARCH)
			ELSE // ((nBtnIdx MOD 2)=0) // SUDE CISLO - DOWN
			  CALL 'ILIGHT_CHANNEL_LOWER2' (tmpARCH)
			}
	}
	HOLD[5,REPEAT]:
	{
		STACK_VAR INTEGER nBtnIdx
		STACK_VAR CHAR SV_ARR[2]
		nBtnIdx = GET_LAST(nBTN_SVETLA_2NP_KOUPEL)
		SV_ARR[1] = 255
		SWITCH(nBtnIdx)
			{
			CASE 17: 														
			CASE 18: SV_ARR = SV_2NP_KOUPELNA_09 		//1517
			CASE 19:  														
			CASE 20: SV_ARR = SV_2NP_KOUPELNA_10	
			CASE 21: 														
			CASE 22: SV_ARR = SV_2NP_KOUPELNA_11 		
			CASE 23:															
			CASE 24: SV_ARR = SV_2NP_KOUPELNA_12 		//1523
			}
		IF (SV_ARR[1]<>255)
			{
			tmpARCH = SV_ARR // DULEZITE, PROTOZE V CALL JE WAIT 5 !!!
			IF ((nBtnIdx MOD 2)>0) // LICHE CISLO - UP
			  CALL 'ILIGHT_CHANNEL_RAISE2' (tmpARCH)
			ELSE // ((nBtnIdx MOD 2)=0) // SUDE CISLO - DOWN
			  CALL 'ILIGHT_CHANNEL_LOWER2' (tmpARCH)
			}
	}
}
BUTTON_EVENT[dvMyTP_01,nBTN_SCENY_2NP_KOUPEL]			/// SCENY KOUPELNA 2NP - 100 BUTTONS 1530-1629 
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
	  STACK_VAR CHAR SC[2]	  
    nBtnIdx = GET_LAST(nBTN_SCENY_2NP_KOUPEL)
		IF (RGB_2NP_KOUPELNA_SEKVENCE <> RGB_2KOUP_00) // BEZI-LI SEKVENCE, OKAMZITE UKONCI
			CALL 'SEKVENCE_2NP_KOUPELNA_STOP'  /// mozno pridat do slozene zavorky i zhasnuti svetel 
			CALL 'SEKVENCE_2NP_KOUPELNA_SVETLA_ZHASNOUT'
		IF (nBtnIdx = 100) 
		{		  
			SC[1] = ILT_2NP_KOUPELNA_AREA
			SC[2] = 0
			CALL 'ILIGHT_SCENA' (SC,1) // ALL OFF		
			// JE OTAZKA NA REALNEM FFEDBACKU, JESTLI ZOBRAZIT SCENA:OFF, NEBO SCENA:0
			WAIT 10 // PRO REALNOU ZPETNOU VAZBU
				CALL 'ILIGHT_SCENA_REQUEST'(ILT_2NP_KOUPELNA_AREA) 
		}
	}
  RELEASE:
	{
    STACK_VAR INTEGER nBtnIdx
	  STACK_VAR CHAR SC[2]	  
    nBtnIdx = GET_LAST(nBTN_SCENY_2NP_KOUPEL)
		IF (nBtnIdx < 100) 
		{
			SC[1] = ILT_2NP_KOUPELNA_AREA
			SC[2] = TYPE_CAST(nBtnIdx) // VIM, ZE nBtnIdx JE URCITE MENSI NEZ 255, TUDIZ SI MOHU DOVOLIT PRETYPOVAT
			IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
			{ // VYVOLEJ SCENU
				CALL 'ILIGHT_SCENA' (SC,1)
			}
			ELSE
			{ // ULOZ SCENU
			  CALL 'ILIGHT_SAVE_SCENE' (SC)
				SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA V KOUPELNE CISLO ',ITOA(nBtnIdx)"
				SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			}
			WAIT 10 // PRO REALNOU ZPETNOU VAZBU
				CALL 'ILIGHT_SCENA_REQUEST'(ILT_2NP_KOUPELNA_AREA) 
		}
	}
}
BUTTON_EVENT[dvMyTP_01,1524]									/// ON SPRCHA
{
	PUSH: {
	CALL 'ILIGHT_CHANNEL_ON' (SV_2NP_KOUPELNA_02)
	CALL 'ILIGHT_CHANNEL_ON' (SV_2NP_KOUPELNA_03)
	CALL 'ILIGHT_CHANNEL_ON' (SV_2NP_KOUPELNA_04)
	CALL 'ILIGHT_CHANNEL_ON' (SV_2NP_KOUPELNA_05)
	WAIT 22
	CALL 'REQUEST_CHANNELS_2NP_KOUPEL_SPRCHA'
	}
}
BUTTON_EVENT[dvMyTP_01,1525]									/// OFF SPRCHA
{
	PUSH: {
	CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_KOUPELNA_02)
	CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_KOUPELNA_03)
	CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_KOUPELNA_04)
	CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_KOUPELNA_05)
	WAIT 22
	CALL 'REQUEST_CHANNELS_2NP_KOUPEL_SPRCHA'
	}
}
BUTTON_EVENT[dvMyTP_01,1526]									/// ON Plexy
{
	PUSH: {
	CALL 'ILIGHT_CHANNEL_ON' (SV_2NP_KOUPELNA_09)
	CALL 'ILIGHT_CHANNEL_ON' (SV_2NP_KOUPELNA_10)
	CALL 'ILIGHT_CHANNEL_ON' (SV_2NP_KOUPELNA_11)
	CALL 'ILIGHT_CHANNEL_ON' (SV_2NP_KOUPELNA_12)
	WAIT 22
	CALL 'REQUEST_CHANNELS_2NP_KOUPEL_PLEXI'
	}
}
BUTTON_EVENT[dvMyTP_01,1527]									/// Off Plexi
{
	PUSH: {
	CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_KOUPELNA_09)
	CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_KOUPELNA_10)
	CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_KOUPELNA_11)
	CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_KOUPELNA_12)
	WAIT 22
	CALL 'REQUEST_CHANNELS_2NP_KOUPEL_PLEXI'
	}
}

BUTTON_EVENT[dvMyTP_01,1670]									/// VLASTNI SCENA PLEXISKLO KOUPELNA
{
	PUSH:
	 {
	 STACK_VAR CHAR SC[2]	
			SC[1] = ILT_2NP_KOUPELNA_AREA
			SC[2] = 98
	 }
	 RELEASE:
		  {
		  STACK_VAR CHAR SC[2]	
			SC[1] = ILT_2NP_KOUPELNA_AREA
			SC[2] = 98
			IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
					 { // VYVOLEJ SCENU
					 CALL 'ILIGHT_SCENA' (SC,1)
					 }
				ELSE
					 { // ULOZ SCENU
					 CALL 'ILIGHT_SAVE_SCENE' (SC)
					 SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
					 }
					 WAIT 10 // PRO REALNOU ZPETNOU VAZBU
						  CALL 'ILIGHT_SCENA_REQUEST'(ILT_2NP_KOUPELNA_AREA) 
		  }
}

BUTTON_EVENT[dvMyTP_01,nBTN_RGB_2NP_KOUPEL]				/// RGB AUTOMAT KOUPELNA  14 Buttons 1820-1833
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_RGB_2NP_KOUPEL)
    SWITCH(nBtnIdx)
			{
			CASE 1: CALL 'SEKVENCE_2NP_KOUPELNA_START' 	(RGB_2KOUP_01,50)
			CASE 2: CALL 'SEKVENCE_2NP_KOUPELNA_START' 	(RGB_2KOUP_01,250)
			CASE 3: CALL 'SEKVENCE_2NP_KOUPELNA_START'	(RGB_2KOUP_02,50)
			CASE 4: CALL 'SEKVENCE_2NP_KOUPELNA_START' 	(RGB_2KOUP_02,250)
			CASE 5: CALL 'SEKVENCE_2NP_KOUPELNA_START' 	(RGB_2KOUP_03,50)
			CASE 6: CALL 'SEKVENCE_2NP_KOUPELNA_START' 	(RGB_2KOUP_03,250)
			CASE 7: CALL 'SEKVENCE_2NP_KOUPELNA_START' 	(RGB_2KOUP_04,50)
			CASE 8: CALL 'SEKVENCE_2NP_KOUPELNA_START' 	(RGB_2KOUP_04,250)
			CASE 9: CALL 'SEKVENCE_2NP_KOUPELNA_START' 	(RGB_2KOUP_05,50)
			CASE 10: CALL 'SEKVENCE_2NP_KOUPELNA_START' 	(RGB_2KOUP_05,250)
			CASE 11: CALL 'SEKVENCE_2NP_KOUPELNA_START' 	(RGB_2KOUP_06,50)
			CASE 12: CALL 'SEKVENCE_2NP_KOUPELNA_START' 	(RGB_2KOUP_06,250)
			}			
	}
}
BUTTON_EVENT[dvMyTP_01,1834]									/// OFF RGB AUTO v KOUPELNE
{
	PUSH: 
	{
	  CALL 'SEKVENCE_2NP_KOUPELNA_STOP'
		// A ZHASNU SVETLA ZE SEKVENCE??? NEBO NECHAT? - PAK NASLEDUJCI RADEK ODSTRANIT...
		CALL 'SEKVENCE_2NP_KOUPELNA_SVETLA_ZHASNOUT'		
	}
}
BUTTON_EVENT[dvMyTP_01,1835]									/// Dotaz Svìtla v Hale 2NP
{
  PUSH:
	{
	  CALL 'ILIGHT_SCENA_REQUEST' (ILT_2NP_HALA_AREA) 
	}
}
BUTTON_EVENT[dvMyTP_01,nBTN_SVETLA_2NP_HALA]			/// SVETLA HALA 50 BUTTONS 1630-1699
{
  PUSH:
  {
	STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SV_ARR[2]
	nBtnIdx = GET_LAST(nBTN_SVETLA_2NP_HALA)
	SV_ARR[1] = 255
	SWITCH(nBtnIdx)
			{
		  CASE 1:  														
		  CASE 2: SV_ARR = SV_2NP_HALA_01	//	1632
		  CASE 3: 														
		  CASE 4: SV_ARR = SV_2NP_HALA_02 	
		  CASE 5:															
		  CASE 6: SV_ARR = SV_2NP_HALA_03 	
		  CASE 7: 														
		  CASE 8: SV_ARR = SV_2NP_HALA_04	
		  CASE 9: 														
		  CASE 10: SV_ARR = SV_2NP_HALA_05	//1650
		  CASE 11: 														
		  CASE 12: SV_ARR = SV_2NP_HALA_06 
		  CASE 13: 														
		  CASE 14: SV_ARR = SV_2NP_HALA_07 	//1654
		  CASE 15: 														
		  CASE 16: SV_ARR = SV_2NP_HALA_08 //1656
		  CASE 17: 														
		  CASE 18: SV_ARR = SV_2NP_HALA_09 
		  CASE 19:  													
		  CASE 20: SV_ARR = SV_2NP_HALA_10 
		  CASE 21:  													
		  CASE 22: SV_ARR = SV_2NP_HALA_11 
		  CASE 23:  													
		  CASE 24: SV_ARR = SV_2NP_HALA_12 
		  CASE 25:  													
		  CASE 26: SV_ARR = SV_2NP_HALA_13 
		  CASE 27:  													
		  CASE 28: SV_ARR = SV_2NP_HALA_14 
		  CASE 29:  													
		  CASE 30: SV_ARR = SV_2NP_HALA_15	 //1670
		  CASE 31:  													
		  CASE 32: SV_ARR = SV_2NP_HALA_16 
		  CASE 33:  													
		  CASE 34: SV_ARR = SV_2NP_HALA_17 
		  CASE 35:  													
		  CASE 36: SV_ARR = SV_2NP_HALA_18 
		  CASE 37:  													
		  CASE 38: SV_ARR = SV_2NP_HALA_19 
		  CASE 39:  													
		  CASE 40: SV_ARR = SV_2NP_HALA_20 
		  CASE 41:  													
		  CASE 42: SV_ARR = SV_2NP_HALA_20 
		  CASE 43:  													
		  CASE 44: SV_ARR = SV_2NP_HALA_20 
		  CASE 45:  													
		  CASE 46: SV_ARR = SV_2NP_HALA_20 
		  CASE 47:  													
		  CASE 48: SV_ARR = SV_2NP_HALA_20 
		  CASE 49:  													
		  CASE 50: SV_ARR = SV_2NP_HALA_20 
			}
		IF (SV_ARR[1]<>255)
			{
			  tmpARCH = SV_ARR // DULEZITE, PROTOZE V CALL JE WAIT 5 !!!
				IF ((nBtnIdx MOD 2)>0) // LICHE CISLO - UP
				  CALL 'ILIGHT_CHANNEL_RAISE2' (tmpARCH)
				ELSE // ((nBtnIdx MOD 2)=0) // SUDE CISLO - DOWN
				  CALL 'ILIGHT_CHANNEL_LOWER2' (tmpARCH)
			}
	}
	 HOLD[2,REPEAT]:
		{
		STACK_VAR INTEGER nBtnIdx
		STACK_VAR CHAR SV_ARR[2]
		IF (BUTTON.HOLDTIME>=300) // JEN POKUD TLACITKO DRZENO DELE NEZ 300ms
			{
			nBtnIdx = GET_LAST(nBTN_SVETLA_2NP_HALA)
			SV_ARR[1] = 255
			SWITCH(nBtnIdx)
				{
				CASE 1:  														
				CASE 2: SV_ARR = SV_2NP_HALA_01	
				CASE 3: 														
				CASE 4: SV_ARR = SV_2NP_HALA_02 	
				CASE 5:															
				CASE 6: SV_ARR = SV_2NP_HALA_03 	
				CASE 7: 														
				CASE 8: SV_ARR = SV_2NP_HALA_04	
				CASE 9: 														
				CASE 10: SV_ARR = SV_2NP_HALA_05 
				CASE 11: 														
				CASE 12: SV_ARR = SV_2NP_HALA_06 
				CASE 13: 														
				CASE 14: SV_ARR = SV_2NP_HALA_07 
				CASE 15: 														
				CASE 16: SV_ARR = SV_2NP_HALA_08 
				CASE 17: 														
				CASE 18: SV_ARR = SV_2NP_HALA_09 
				CASE 19:  													
				CASE 20: SV_ARR = SV_2NP_HALA_10 
				CASE 21:  													
				CASE 22: SV_ARR = SV_2NP_HALA_11 
				CASE 23:  													
				CASE 24: SV_ARR = SV_2NP_HALA_12 
				CASE 25:  													
				CASE 26: SV_ARR = SV_2NP_HALA_13 
				CASE 27:  													
				CASE 28: SV_ARR = SV_2NP_HALA_14 
				CASE 29:  													
				CASE 30: SV_ARR = SV_2NP_HALA_15 
				CASE 31:  													
				CASE 32: SV_ARR = SV_2NP_HALA_16 
				CASE 33:  													
				CASE 34: SV_ARR = SV_2NP_HALA_17 
				CASE 35:  													
				CASE 36: SV_ARR = SV_2NP_HALA_18 
				CASE 37:  													
				CASE 38: SV_ARR = SV_2NP_HALA_19 
				CASE 39:  													
				CASE 40: SV_ARR = SV_2NP_HALA_20 
				CASE 41:  													
				CASE 42: SV_ARR = SV_2NP_HALA_20 
				CASE 43:  													
				CASE 44: SV_ARR = SV_2NP_HALA_20 
				CASE 45:  													
				CASE 46: SV_ARR = SV_2NP_HALA_20 
				CASE 47:  													
				CASE 48: SV_ARR = SV_2NP_HALA_20 
				CASE 49:  													
				CASE 50: SV_ARR = SV_2NP_HALA_20 
			}
			IF (SV_ARR[1]<>255)
			{
			  tmpARCH = SV_ARR // DULEZITE, PROTOZE V CALL JE WAIT 5 !!!
				IF ((nBtnIdx MOD 2)>0) // LICHE CISLO - UP
				  CALL 'ILIGHT_CHANNEL_RAISE2' (tmpARCH)
				ELSE // ((nBtnIdx MOD 2)=0) // SUDE CISLO - DOWN
				  CALL 'ILIGHT_CHANNEL_LOWER2' (tmpARCH)
			}
		}
  }
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
		STACK_VAR CHAR SV_ARR[2]
		IF (BUTTON.HOLDTIME < 300) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 300ms
		{
			nBtnIdx = GET_LAST(nBTN_SVETLA_2NP_HALA)
			SV_ARR[1] = 255
			SWITCH(nBtnIdx)
			{
				CASE 1:  														
				CASE 2: SV_ARR = SV_2NP_HALA_01	
				CASE 3: 														
				CASE 4: SV_ARR = SV_2NP_HALA_02 	
				CASE 5:															
				CASE 6: SV_ARR = SV_2NP_HALA_03 	
				CASE 7: 														
				CASE 8: SV_ARR = SV_2NP_HALA_04	
				CASE 9: 														
				CASE 10: SV_ARR = SV_2NP_HALA_05 
				CASE 11: 														
				CASE 12: SV_ARR = SV_2NP_HALA_06 
				CASE 13: 														
				CASE 14: SV_ARR = SV_2NP_HALA_07 
				CASE 15: 														
				CASE 16: SV_ARR = SV_2NP_HALA_08 
				CASE 17: 														
				CASE 18: SV_ARR = SV_2NP_HALA_09 
				CASE 19:  													
				CASE 20: SV_ARR = SV_2NP_HALA_10 
				CASE 21:  													
				CASE 22: SV_ARR = SV_2NP_HALA_11 
				CASE 23:  													
				CASE 24: SV_ARR = SV_2NP_HALA_12 
				CASE 25:  													
				CASE 26: SV_ARR = SV_2NP_HALA_13 
				CASE 27:  													
				CASE 28: SV_ARR = SV_2NP_HALA_14 
				CASE 29:  													
				CASE 30: SV_ARR = SV_2NP_HALA_15 
				CASE 31:  													
				CASE 32: SV_ARR = SV_2NP_HALA_16 
				CASE 33:  													
				CASE 34: SV_ARR = SV_2NP_HALA_17 
				CASE 35:  												
				CASE 36: SV_ARR = SV_2NP_HALA_18 
				CASE 37:  													
				CASE 38: SV_ARR = SV_2NP_HALA_19 
				CASE 39:  													
				CASE 40: SV_ARR = SV_2NP_HALA_20 
				CASE 41:  													
				CASE 42: SV_ARR = SV_2NP_HALA_20 
				CASE 43:  													
				CASE 44: SV_ARR = SV_2NP_HALA_20 
				CASE 45:  													
				CASE 46: SV_ARR = SV_2NP_HALA_20 
				CASE 47:  													
				CASE 48: SV_ARR = SV_2NP_HALA_20 
				CASE 49:  													
				CASE 50: SV_ARR = SV_2NP_HALA_20		
			}
			IF (SV_ARR[1]<>255)
			{
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_ARR)
			}
		}
  }
}

BUTTON_EVENT[dvMyTP_01,nBTN_SCENY_2NP_HALA]				/// SCENY HALA 85 BUTTONS 1700-1784
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
	  STACK_VAR CHAR SC[2]	  
    nBtnIdx = GET_LAST(nBTN_SCENY_2NP_HALA)
		IF (RGB_2NP_HALA_SEKVENCE <> RGB_2HALA_00) // BEZI-LI SEKVENCE, OKAMZITE UKONCI
			CALL 'SEKVENCE_2NP_HALA_STOP'  /// mozno pridat do slozene zavorky i zhasnuti svetel 
		IF (nBtnIdx = 85) 
		{		  
			SC[1] = ILT_2NP_HALA_AREA
			SC[2] = 0
			CALL 'ILIGHT_SCENA' (SC,1) // ALL OFF		
			WAIT 10 // PRO REALNOU ZPETNOU VAZBU
			CALL 'ILIGHT_SCENA_REQUEST'(ILT_2NP_HALA_AREA) 
			WAIT 15
			CALL 'REQUEST_CHANNELS_2NP_HALA_TV'
		}
	}
  RELEASE:
	{
    STACK_VAR INTEGER nBtnIdx
	  STACK_VAR CHAR SC[2]	  
    nBtnIdx = GET_LAST(nBTN_SCENY_2NP_HALA)
		IF (nBtnIdx < 65) 
		{
			SC[1] = ILT_2NP_HALA_AREA
			SC[2] = TYPE_CAST(nBtnIdx) // VIM, ZE nBtnIdx JE URCITE MENSI NEZ 255, TUDIZ SI MOHU DOVOLIT PRETYPOVAT
			IF (BUTTON.HOLDTIME < 5000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
			{ // VYVOLEJ SCENU
				CALL 'ILIGHT_SCENA' (SC,1)
			}
			ELSE
			{ // ULOZ SCENU
			  CALL 'ILIGHT_SAVE_SCENE' (SC)
				SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA V HALE CISLO ',ITOA(nBtnIdx)"
				SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			}
			WAIT 10 // PRO REALNOU ZPETNOU VAZBU
				CALL 'ILIGHT_SCENA_REQUEST'(ILT_2NP_HALA_AREA) 
		}
	}
}

BUTTON_EVENT[dvMyTP_01,nBTN_RGB_2NP_HALA]				/// RGB HALA SPUSTENI RGB 23 BUTTONS	1790-1812
{
  PUSH:
  {
   STACK_VAR INTEGER nBtnIdx
   nBtnIdx = GET_LAST(nBTN_RGB_2NP_HALA)
   RGB_2NP_HALA_KROK = 1
   SWITCH(nBtnIdx)
			{
			CASE 1: {RGB_2NP_HALA_01_ACTIVE = TRUE}	//1790 nad pohovkou
			CASE 2: {RGB_2NP_HALA_01B_ACTIVE = TRUE}
			CASE 3: {RGB_2NP_HALA_02_ACTIVE = TRUE}	// nad schody
			CASE 4: {RGB_2NP_HALA_02B_ACTIVE = TRUE}
			CASE 5: {RGB_2NP_HALA_03_ACTIVE = TRUE}	//1794 Stena TV
			CASE 6: {RGB_2NP_HALA_03B_ACTIVE = TRUE}
			CASE 7: {RGB_2NP_HALA_04_ACTIVE = TRUE}	// nad obrazem
			CASE 8: {RGB_2NP_HALA_04B_ACTIVE = TRUE}
			CASE 9: {RGB_2NP_HALA_05_ACTIVE = TRUE}		// 1798 v okne
			CASE 10: {RGB_2NP_HALA_05B_ACTIVE = TRUE}
			CASE 11: {RGB_2NP_HALA_01_ACTIVE = TRUE; RGB_2NP_HALA_02_ACTIVE = TRUE}
			CASE 12: {RGB_2NP_HALA_01B_ACTIVE = TRUE; RGB_2NP_HALA_02B_ACTIVE = TRUE}
			CASE 13: {RGB_2NP_HALA_03_ACTIVE = TRUE; RGB_2NP_HALA_04_ACTIVE = TRUE}
			CASE 14: {RGB_2NP_HALA_03_ACTIVE = TRUE; RGB_2NP_HALA_04_ACTIVE = TRUE}
			CASE 15: {RGB_2NP_HALA_04_ACTIVE = TRUE; RGB_2NP_HALA_05_ACTIVE = TRUE}
			CASE 16: {RGB_2NP_HALA_04_ACTIVE = TRUE; RGB_2NP_HALA_05_ACTIVE = TRUE}
			CASE 17: {RGB_2NP_HALA_01_ACTIVE = TRUE; RGB_2NP_HALA_05_ACTIVE = TRUE}
			CASE 18: {RGB_2NP_HALA_01_ACTIVE = TRUE; RGB_2NP_HALA_05_ACTIVE = TRUE}
			CASE 19: {RGB_2NP_HALA_01_ACTIVE = TRUE; RGB_2NP_HALA_03_ACTIVE = TRUE; RGB_2NP_HALA_05_ACTIVE = TRUE}
			CASE 20: {RGB_2NP_HALA_01_ACTIVE = TRUE; RGB_2NP_HALA_03_ACTIVE = TRUE; RGB_2NP_HALA_05_ACTIVE = TRUE}
			CASE 21: {RGB_2NP_HALA_01_ACTIVE = TRUE; RGB_2NP_HALA_04_ACTIVE = TRUE; RGB_2NP_HALA_05_ACTIVE = TRUE}
			CASE 22: {RGB_2NP_HALA_01_ACTIVE = TRUE; RGB_2NP_HALA_04_ACTIVE = TRUE; RGB_2NP_HALA_05_ACTIVE = TRUE}
			}
		RGB_2NP_HALA_SEKVENCE = RGB_2HALA_01 /// JE TO UZ RESENO JINAK, TOTO JE ALE POUZITO V ZPRACOVANI ZPRAVY, TAK JSEM ZACHOVAL 	
		RGB_2NP_HALA_TIMER_ACTIVE=TRUE
		IF ((nBtnIdx MOD 2)>0) // LICHE CISLO - UP
			CALL 'RGB_2NP_HALA_TIMER'(200)
		ELSE // ((nBtnIdx MOD 2)=0) // SUDE CISLO - DOWN
			CALL 'RGB_2NP_HALA_TIMER_DOUBLE'	// 400 uz nebere CHAR (pouze do 255)
	}
}

BUTTON_EVENT[dvMyTP_01,nBTN_RGB_2NP_HALA2]				/// RGB OFF HALA 2NP 30 BUTTONS	1930-1959
{
	 PUSH:
	 {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_RGB_2NP_HALA2)
    SWITCH(nBtnIdx)
		  {
			 CASE    1: {RGB_2NP_HALA_01_ACTIVE = FALSE; RGB_2NP_HALA_01B_ACTIVE = FALSE}
			 CASE    2: {RGB_2NP_HALA_02_ACTIVE = FALSE; RGB_2NP_HALA_02B_ACTIVE = FALSE}
			 CASE    3: {RGB_2NP_HALA_03_ACTIVE = FALSE; RGB_2NP_HALA_03B_ACTIVE = FALSE}
			 CASE    4: {RGB_2NP_HALA_04_ACTIVE = FALSE; RGB_2NP_HALA_04B_ACTIVE = FALSE}
			 CASE    5: {RGB_2NP_HALA_05_ACTIVE = FALSE; RGB_2NP_HALA_05B_ACTIVE = FALSE}
			 CASE    6: {RGB_2NP_HALA_03_ACTIVE = FALSE 
						RGB_2NP_HALA_03B_ACTIVE = FALSE 
						RGB_2NP_HALA_04_ACTIVE = FALSE 
						RGB_2NP_HALA_04B_ACTIVE = FALSE 
						RGB_2NP_HALA_05_ACTIVE = FALSE 
						RGB_2NP_HALA_05B_ACTIVE = FALSE}		// 1936 ALL OFF NEPOUZITO - ASI ZBYTECNE
			 CASE    7: {}
			 CASE    8: {}
			 CASE    9: {}
			 CASE   10: {}
			 CASE   11: {}
			 CASE   12: {}
			 CASE   13: {}
			 CASE   14: {}
			 CASE   15: {}
			 CASE   16: {}
			 CASE   17: {}
			 CASE   18: {}
			 CASE   19: {}
			 CASE   20: {}
			 CASE   21: {}
			 CASE   22: {}
			 CASE   23: {}
			 CASE   24: {}
			 CASE   25: {}
			 CASE   26: {}
			 CASE   27: {}
			 CASE   28: {}
			 CASE   29: {}
			 CASE   30: {}
		  }
		CALL 'RGB_2NP_HALA_TIMER_STOP'
	 }
}


BUTTON_EVENT[dvMyTP_01,1813]									/// OFF RGB AUTO v HALE
{
	PUSH: 
	{
	  CALL 'SEKVENCE_2NP_HALA_STOP'
		// A ZHASNU SVETLA ZE SEKVENCE??? NEBO NECHAT? - PAK NASLEDUJCI RADEK ODSTRANIT...
		//CALL 'SEKVENCE_2NP_HALA_SVETLA_ZHASNOUT'		
	}
}
// {{NSX_DEFINE_EVENT
BUTTON_EVENT[dvMyTP_01,nBTN_2NPHALA_RGB_TV]			/// 2NP HALA RGB TV  PROGRAM  3610 - 3634
{
	PUSH:
		{
		STACK_VAR INTEGER nBtnIdx
		STACK_VAR CHAR SC[2]
		nBtnIdx = GET_LAST(nBTN_2NPHALA_RGB_TV)
		SC[1] = ILT_2NP_HALA_AREA
		SWITCH(nBtnIdx)
			{
			  CASE    1: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_R01)}		//3064
			  CASE    2: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_R01)}
			  CASE    3: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_R01,00,0)} 
			  CASE    4: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_G01)}		//3067
			  CASE    5: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_G01)}
			  CASE    6: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_G01,00,0)} 
			  CASE    7: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_B01)}		//3070
			  CASE    8: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_B01)}
			  CASE    9: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_B01,00,0)} 
			  CASE    10: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_W01)}		//3073
			  CASE    11: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_W01)}
			  CASE    12: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_W01,00,0)} 
			  CASE    13: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_C01)}		//3076
			  CASE    14: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_C01)}
			  CASE    15: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_C01,00,0)} 
			  CASE    16: {	SC[2] = 01								/// SCENA NA ILIGHT PRO RGB 1
							CALL 'ILIGHT_SCENA' (SC,1)							//3079	
							}							
			  CASE    17: {	SC[2] = 02								/// SCENA NA ILIGHT PRO RGB 1
							CALL 'ILIGHT_SAVE_SCENE' (SC)}	
			}
			CANCEL_WAIT 'KILL RGB'
		}
	HOLD[2,REPEAT]:
		{
		STACK_VAR INTEGER nBtnIdx
		nBtnIdx = GET_LAST(nBTN_2NPHALA_RGB_TV)
		SWITCH(nBtnIdx)
			{
			CASE    1: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_R01)}		//3064
			CASE    2: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_R01)}
			CASE    3: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_R01,00,0)} 
			CASE    4: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_G01)}		//3067
			CASE    5: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_G01)}
			CASE    6: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_G01,00,0)} 
			CASE    7: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_B01)}		//3070
			CASE    8: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_B01)}
			CASE    9: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_B01,00,0)} 
			CASE    10: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_W01)}		//3073
			CASE    11: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_W01)}
			CASE    12: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_W01,00,0)} 
			CASE    13: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_C01)}		//3076
			CASE    14: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_C01)}
			}
		}
	RELEASE:
		  {
		  STACK_VAR INTEGER nBtnIdx
		  nBtnIdx = GET_LAST(nBTN_2NPHALA_RGB_TV)
		  SWITCH(nBtnIdx)
				{
				CASE    3: 
				CASE    6: 
				CASE    9: 
				CASE    12: 
				CASE    15: 
				CASE    16: 
				CASE    17: 
				CASE    18: 
				CASE    19: WAIT 20
								{
								CALL 'REQUEST_CHANNELS_2NP_HALA_TV'
								}
				}
				WAIT 30 'KILL RGB'
					{
					SEND_COMMAND dvMyTP_01, "'@PPK-2_hala_RGB1'"
					SEND_COMMAND dvMyTP_01, "'@PPK-2_hala_RGB2'"
					SEND_COMMAND dvMyTP_01, "'@PPK-2_hala_RGB3'"
					SEND_COMMAND dvMyTP_01, "'@PPK-2_hala_RGB4'"
					SEND_COMMAND dvMyTP_01, "'@PPK-2_hala_RGB5'"
					}
			}
}

BUTTON_EVENT[dvMyTP_01,nBTN_2NPHALA_RGB_OBRAZ]     	/// 2 NP HALA RGB OBRAZ 3640-3660
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SC[2]
    nBtnIdx = GET_LAST(nBTN_2NPHALA_RGB_OBRAZ)
	SC[1] = ILT_2NP_HALA_AREA
    SWITCH(nBtnIdx)
		{
			CASE    1: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_HALA_18)}		//3090
			CASE    2: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_HALA_18)}
			CASE    3: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_HALA_18,00,0)} 
			CASE    4: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_HALA_19)}		//3093
			CASE    5: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_HALA_19)}
			CASE    6: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_HALA_19,00,0)} 
			CASE    7: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_HALA_20)}		//3096
			CASE    8: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_HALA_20)}
			CASE    9: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_HALA_20,00,0)} 
			CASE    10: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_HALA_27)}		//3099
			CASE    11: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_HALA_27)}
			CASE    12: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_HALA_27,00,0)} 
			CASE    13: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_HALA_28)}		//3102
			CASE    14: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_HALA_28)}
			CASE    15: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_HALA_28,00,0)} 
			CASE    16: {	SC[2] = 92								/// SCENA NA ILIGHT PRO RGB 1
						CALL 'ILIGHT_SCENA' (SC,1)							//3079	
						}							
			CASE    17: {	SC[2] = 92								/// SCENA NA ILIGHT PRO RGB 1
						CALL 'ILIGHT_SAVE_SCENE' (SC)}	
			CASE    18: {	SC[2] = 93								/// SCENA NA ILIGHT PRO RGB 2
						CALL 'ILIGHT_SCENA' (SC,1)							
						}							
			CASE    19: { SC[2] = 93								/// SCENA NA ILIGHT PRO RGB 2
						CALL 'ILIGHT_SAVE_SCENE' (SC)}	
					
			CASE    20: {CALL 'REQUEST_CHANNELS_2NP_HALA_WC'} 		//
			CASE   21: {}
			}
  }
  HOLD[2,REPEAT]:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_2NPHALA_RGB_OBRAZ)
    SWITCH(nBtnIdx)
		{
		CASE  1: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_HALA_18)}			
		CASE  2: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_HALA_18)}
		CASE  4: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_HALA_19)}			
		CASE  5: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_HALA_19)}
		CASE  7: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_HALA_20)}			
		CASE  8: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_HALA_20)}
		CASE  10: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_HALA_27)}			
		CASE  11: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_HALA_27)}
		CASE  13: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_HALA_28)}			
		CASE  14: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_HALA_28)}
		CASE   15: {}
		CASE   16: {}
		CASE   17: {}
		CASE   18: {}
		CASE   19: {}
		CASE   20: {}
		CASE   21: {}
		}
  }
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_2NPHALA_RGB_OBRAZ)
    SWITCH(nBtnIdx)
    {
      CASE    1: {}
      CASE    2: {}
      CASE    3: {}
      CASE    4: {}
      CASE    5: {}
      CASE    6: {}
      CASE    7: {}
      CASE    8: {}
      CASE    9: {}
      CASE   10: {}
      CASE   11: {}
      CASE   12: {}
      CASE   13: {}
      CASE   14: {}
      CASE   15: {}
      CASE   16: {}
      CASE   17: {}
      CASE   18: {}
      CASE   19: WAIT 20
					{
					CALL 'REQUEST_CHANNELS_2NP_HALA_WC'			/// STARE OZNACENI
					}
      CASE   20: {}
      CASE   21: {}
    }
  }
}


BUTTON_EVENT[dvMyTP_01,nBTN_2NPHALA_RGB_POHOVKA]		/// 2 NP HALA RGB 3520-3544
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SC[2]
    nBtnIdx = GET_LAST(nBTN_2NPHALA_RGB_POHOVKA)
	SC[1] = ILT_2NP_HALA_AREA
    SWITCH(nBtnIdx)
		{
			CASE    1: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_HALA_03)}		//3090
			CASE    2: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_HALA_03)}
			CASE    3: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_HALA_03,00,0)} 
			CASE    4: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_HALA_04)}		//3093
			CASE    5: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_HALA_04)}
			CASE    6: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_HALA_04,00,0)} 
			CASE    7: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_HALA_05)}		//3096
			CASE    8: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_HALA_05)}
			CASE    9: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_HALA_05,00,0)} 
			CASE    10: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_HALA_21)}		//3099
			CASE    11: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_HALA_21)}
			CASE    12: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_HALA_21,00,0)} 
			CASE    13: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_HALA_22)}		//3102
			CASE    14: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_HALA_22)}
			CASE    15: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_HALA_22,00,0)} 
			CASE    16: {	SC[2] = 96								/// SCENA NA ILIGHT PRO RGB 1
						CALL 'ILIGHT_SCENA' (SC,1)							//3079	
						}							
			CASE    17: {	SC[2] = 96								/// SCENA NA ILIGHT PRO RGB 1
						CALL 'ILIGHT_SAVE_SCENE' (SC)}	
			CASE    18: {	SC[2] = 97								/// SCENA NA ILIGHT PRO RGB 2
						CALL 'ILIGHT_SCENA' (SC,1)							
						}							
			CASE    19: { SC[2] = 97								/// SCENA NA ILIGHT PRO RGB 2
						CALL 'ILIGHT_SAVE_SCENE' (SC)}	
					
			CASE    20: {CALL 'REQUEST_CHANNELS_2NP_HALA_POHOVKA'} 		//
			CASE   21: {}
			CASE   22: {}
			CASE   23: {}
			CASE   24: {}
			CASE   25: {}
			}
	}
  HOLD[2,REPEAT]:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_2NPHALA_RGB_POHOVKA)
    SWITCH(nBtnIdx)
		{
		CASE  1: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_HALA_03)}			
		CASE  2: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_HALA_03)}
		CASE  4: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_HALA_04)}			
		CASE  5: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_HALA_04)}
		CASE  7: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_HALA_05)}			
		CASE  8: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_HALA_05)}
		CASE  10: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_HALA_21)}			
		CASE  11: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_HALA_21)}
		CASE  13: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_HALA_22)}			
		CASE  14: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_HALA_22)}
		CASE   15: {}
		CASE   16: {}
		CASE   17: {}
		CASE   18: {}
		CASE   19: {}
		CASE   20: {}
		CASE   21: {}
		CASE   22: {}
		CASE   23: {}
		CASE   24: {}
		CASE   25: {}
		}
  }
   RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_2NPHALA_RGB_POHOVKA)
    SWITCH(nBtnIdx)
    {
      CASE    1: {}
      CASE    2: {}
      CASE    3: {}
      CASE    4: {}
      CASE    5: {}
      CASE    6: {}
      CASE    7: {}
      CASE    8: {}
      CASE    9: {}
      CASE   10: {}
      CASE   11: {}
      CASE   12: {}
      CASE   13: {}
      CASE   14: {}
      CASE   15: {}
      CASE   16: {}
      CASE   17: {}
      CASE   18: {}
      CASE   19: WAIT 20
					{
					CALL 'REQUEST_CHANNELS_2NP_HALA_POHOVKA'			/// STARE OZNACENI
					}
      CASE   20: {}
      CASE   21: {}
      CASE   22: {}
      CASE   23: {}
      CASE   24: {}
      CASE   25: {}
    }
  }
}

BUTTON_EVENT[dvMyTP_01,nBTN_2NPHALA_RGB_SCHODY]		/// 2 NP HALA RGB 3550-3574
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SC[2]
    nBtnIdx = GET_LAST(nBTN_2NPHALA_RGB_SCHODY)
	SC[1] = ILT_2NP_HALA_AREA
    SWITCH(nBtnIdx)
		{
			CASE    1: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_HALA_06)}		//3
			CASE    2: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_HALA_06)}
			CASE    3: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_HALA_06,00,0)} 
			CASE    4: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_HALA_07)}		//3
			CASE    5: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_HALA_07)}
			CASE    6: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_HALA_07,00,0)} 
			CASE    7: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_HALA_08)}		//3
			CASE    8: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_HALA_08)}
			CASE    9: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_HALA_08,00,0)} 
			CASE    10: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_HALA_09)}		//30
			CASE    11: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_HALA_09)}
			CASE    12: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_HALA_09,00,0)} 
			CASE    13: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_HALA_24)}		//3
			CASE    14: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_HALA_24)}
			CASE    15: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_HALA_24,00,0)} 
			CASE    16: {	SC[2] = 94								/// SCENA NA ILIGHT PRO RGB 1
						CALL 'ILIGHT_SCENA' (SC,1)							//30	
						}							
			CASE    17: {	SC[2] = 94								/// SCENA NA ILIGHT PRO RGB 1
						CALL 'ILIGHT_SAVE_SCENE' (SC)}	
			CASE    18: {	SC[2] = 95								/// SCENA NA ILIGHT PRO RGB 2
						CALL 'ILIGHT_SCENA' (SC,1)							
						}							
			CASE    19: { SC[2] = 95								/// SCENA NA ILIGHT PRO RGB 2
						CALL 'ILIGHT_SAVE_SCENE' (SC)}	
					
			CASE    20: {CALL 'REQUEST_CHANNELS_2NP_HALA_MENHIR'} 		//
			CASE   21: {}
			CASE   22: {}
			CASE   23: {}
			CASE   24: {}
			CASE   25: {}
			}
	}
 HOLD[2,REPEAT]:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_2NPHALA_RGB_SCHODY)
    SWITCH(nBtnIdx)
		{
		CASE  1: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_HALA_06)}			
		CASE  2: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_HALA_06)}
		CASE  4: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_HALA_07)}			
		CASE  5: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_HALA_07)}
		CASE  7: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_HALA_08)}			
		CASE  8: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_HALA_08)}
		CASE  10: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_HALA_09)}			
		CASE  11: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_HALA_09)}
		CASE  13: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_HALA_24)}			
		CASE  14: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_HALA_24)}
		CASE   15: {}
		CASE   16: {}
		CASE   17: {}
		CASE   18: {}
		CASE   19: {}
		CASE   20: {}
		CASE   21: {}
		CASE   22: {}
		CASE   23: {}
		CASE   24: {}
		CASE   25: {}
		}
  }
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_2NPHALA_RGB_SCHODY)
    SWITCH(nBtnIdx)
    {
      CASE    1: {}
      CASE    2: {}
      CASE    3: {}
      CASE    4: {}
      CASE    5: {}
      CASE    6: {}
      CASE    7: {}
      CASE    8: {}
      CASE    9: {}
      CASE   10: {}
      CASE   11: {}
      CASE   12: {}
      CASE   13: {}
      CASE   14: {}
      CASE   15: {}
      CASE   16: {}
      CASE   17: {}
      CASE   18: {}
      CASE   19: WAIT 20
					{
					CALL 'REQUEST_CHANNELS_2NP_HALA_MENHIR'			/// STARE OZNACENI
					}
      CASE   20: {}
      CASE   21: {}
      CASE   22: {}
      CASE   23: {}
      CASE   24: {}
      CASE   25: {}
    }
  }
}

BUTTON_EVENT[dvMyTP_01,nBTN_2NPHALA_RGB_OKNO]			/// 2 NP HALA RGB 3580-3604
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SC[2]
    nBtnIdx = GET_LAST(nBTN_2NPHALA_RGB_OKNO)
	SC[1] = ILT_2NP_HALA_AREA
    SWITCH(nBtnIdx)
		{
			CASE    1: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_HALA_10)}		//3
			CASE    2: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_HALA_10)}
			CASE    3: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_HALA_10,00,0)} 
			CASE    4: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_HALA_11)}		//3
			CASE    5: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_HALA_11)}
			CASE    6: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_HALA_11,00,0)} 
			CASE    7: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_HALA_12)}		//3
			CASE    8: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_HALA_12)}
			CASE    9: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_HALA_12,00,0)} 
			CASE    10: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_HALA_13)}		//3
			CASE    11: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_HALA_13)}
			CASE    12: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_HALA_13,00,0)} 
			CASE    13: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_2NP_HALA_23)}		//3
			CASE    14: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_2NP_HALA_23)}
			CASE    15: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_HALA_23,00,0)} 
			CASE    16: {	SC[2] = 98								/// SCENA NA ILIGHT PRO RGB 1
						CALL 'ILIGHT_SCENA' (SC,1)							//3	
						}							
			CASE    17: {	SC[2] = 98								/// SCENA NA ILIGHT PRO RGB 1
						CALL 'ILIGHT_SAVE_SCENE' (SC)}	
			CASE    18: {	SC[2] = 99								/// SCENA NA ILIGHT PRO RGB 2
						CALL 'ILIGHT_SCENA' (SC,1)							
						}							
			CASE    19: { SC[2] = 99								/// SCENA NA ILIGHT PRO RGB 2
						CALL 'ILIGHT_SAVE_SCENE' (SC)}	
					
			CASE    20: {CALL 'REQUEST_CHANNELS_2NP_HALA_OKNO'} 		//
			CASE   21: {}
			CASE   22: {}
			CASE   23: {}
			CASE   24: {}
			CASE   25: {}
			}
	}
  HOLD[2,REPEAT]:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_2NPHALA_RGB_OKNO)
    SWITCH(nBtnIdx)
		{
		CASE  1: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_HALA_10)}			
		CASE  2: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_HALA_10)}
		CASE  4: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_HALA_11)}			
		CASE  5: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_HALA_11)}
		CASE  7: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_HALA_12)}			
		CASE  8: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_HALA_12)}
		CASE  10: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_HALA_13)}			
		CASE  11: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_HALA_13)}
		CASE  13: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_HALA_23)}			
		CASE  14: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_HALA_23)}
		CASE   15: {}
		CASE   16: {}
		CASE   17: {}
		CASE   18: {}
		CASE   19: {}
		CASE   20: {}
		CASE   21: {}
		CASE   22: {}
		CASE   23: {}
		CASE   24: {}
		CASE   25: {}
		}
  }
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_2NPHALA_RGB_OKNO)
    SWITCH(nBtnIdx)
    {
      CASE    1: {}
      CASE    2: {}
      CASE    3: {}
      CASE    4: {}
      CASE    5: {}
      CASE    6: {}
      CASE    7: {}
      CASE    8: {}
      CASE    9: {}
      CASE   10: {}
      CASE   11: {}
      CASE   12: {}
      CASE   13: {}
      CASE   14: {}
      CASE   15: {}
      CASE   16: {}
      CASE   17: {}
      CASE   18: {}
      CASE   19: WAIT 20
					{
					CALL 'REQUEST_CHANNELS_2NP_HALA_OKNO'			/// STARE OZNACENI
					}
      CASE   20: {}
      CASE   21: {}
      CASE   22: {}
      CASE   23: {}
      CASE   24: {}
      CASE   25: {}
    }
  }
}


BUTTON_EVENT[dvMyTP_01,2013]									/// TERASA PODLAHA OFF 
{
	PUSH:
		{
		CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_TERASA_01)							// TERASA RANTL   / bila Stmivam
		CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_TERASA_02)							// TERASA RANTL   / bila Stmivam
		CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_TERASA_03)							// TERASA RANTL   / bila Stmivam
		CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_TERASA_04)							// TERASA RANTL   / bila Stmivam
		}
	RELEASE:
		{
		WAIT 15
		CALL 'REQUEST_CHANNELS_2NP_TERASA'	
		}
}

BUTTON_EVENT[dvMyTP_01,nBTN_SVETLA_2NP_TERASA]			/// SVETLA TERASA   BUTTONS 2700-2709
{
	PUSH:
	  {
		STACK_VAR INTEGER nBtnIdx
		nBtnIdx = GET_LAST(nBTN_SVETLA_2NP_TERASA)
		SWITCH(nBtnIdx)
				{
				  CASE 1: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_TERASA_01)}	 //2700														
				  CASE 2: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_TERASA_01)}	
				  CASE 3: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_TERASA_02)}	 														
				  CASE 4: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_TERASA_02)}	
				  CASE 5: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_TERASA_03)}	 														
				  CASE 6: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_TERASA_03)}	
				  CASE 7: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_TERASA_04)}	 // Spojene kanaly 1-4														
				  CASE 8: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_TERASA_04)}	
				  CASE 9: {CALL 'ILIGHT_CHANNEL_ON' (SV_2NP_TERASA_05)}	 // 2708 Lampy ON														
				  CASE 10: {CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_TERASA_05)}	 // 2709 Lampy OFF											
				}
		}
	HOLD[2,REPEAT]:
		{
		STACK_VAR INTEGER nBtnIdx
		nBtnIdx = GET_LAST(nBTN_SVETLA_2NP_TERASA)
		SWITCH(nBtnIdx)
			{
				  CASE 1: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_TERASA_01)}	 														
				  CASE 2: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_TERASA_01)}	
				  CASE 3: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_TERASA_02)}	 														
				  CASE 4: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_TERASA_02)}	
				  CASE 5: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_TERASA_03)}	 														
				  CASE 6: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_TERASA_03)}	
				  CASE 7: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_TERASA_04)}	 														
				  CASE 8: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_TERASA_04)}	
				}
		}
	RELEASE:
		{
		STACK_VAR INTEGER nBtnIdx
		nBtnIdx = GET_LAST(nBTN_SVETLA_2NP_TERASA)
		SWITCH(nBtnIdx)
			{
			CASE 1:  														
			CASE 2: 	
			CASE 3: 	 														
			CASE 4: 	
			CASE 5: 	 														
			CASE 6: 	
			CASE 7:	
			CASE 8:	 														
			CASE 9:
			CASE 10: CALL 'REQUEST_CHANNELS_2NP_TERASA'	
			}
		}
}

BUTTON_EVENT[dvMyTP_01,nBTN_SCENY_2NP_TERASA]				/// SCENY 2710-2711 TERASA
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
	  STACK_VAR CHAR SC[2]	  
    nBtnIdx = GET_LAST(nBTN_SCENY_2NP_TERASA)
		IF (nBtnIdx = 3) 
		{		  
			SC[1] = ILT_2NP_TERASA_AREA
			SC[2] = 0
			CALL 'ILIGHT_SCENA' (SC,1) // ALL OFF		
			WAIT 10 // PRO REALNOU ZPETNOU VAZBU
			CALL 'REQUEST_CHANNELS_2NP_TERASA'	
			WAIT 15
			CALL 'ILIGHT_SCENA_REQUEST'(ILT_2NP_TERASA_AREA) 
			
		}
	}
 RELEASE:
	{
    STACK_VAR INTEGER nBtnIdx
	  STACK_VAR CHAR SC[2]	  
     nBtnIdx = GET_LAST(nBTN_SCENY_2NP_TERASA)
		IF (nBtnIdx < 3) 
		{
			SC[1] = ILT_2NP_TERASA_AREA
			SC[2] = TYPE_CAST(nBtnIdx) // VIM, ZE nBtnIdx JE URCITE MENSI NEZ 255, TUDIZ SI MOHU DOVOLIT PRETYPOVAT
			IF (BUTTON.HOLDTIME < 4000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
			{ // VYVOLEJ SCENU
				CALL 'ILIGHT_SCENA' (SC,1)
			}
			ELSE
			{ // ULOZ SCENU
			  CALL 'ILIGHT_SAVE_SCENE' (SC)
				//SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA V HALE CISLO ',ITOA(nBtnIdx)"
				SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			}
			WAIT 10 // PRO REALNOU ZPETNOU VAZBU
				CALL 'REQUEST_CHANNELS_2NP_TERASA'	
			WAIT 15
				CALL 'ILIGHT_SCENA_REQUEST'(ILT_2NP_TERASA_AREA) 
		}
	}
}
BUTTON_EVENT[dvMyTP_01,2712]									/// ON/OFF 2NP SVETLA TERASA
BUTTON_EVENT[dvMyTP_01,2713]									/// 
{
	 PUSH:
		{
		SWITCH(BUTTON.INPUT.CHANNEL)
		  {
			CASE 2712:{
						CALL 'ILIGHT_SCENA2' (1,43,2);
						CALL 'ILIGHT_CHANNEL_ON' (SV_2NP_TERASA_05)
						WAIT 10
						CALL 'ILIGHT_CHANNEL_ON' (SV_2NP_TERASA_04)
						}
			CASE 2713:{
						CALL 'ILIGHT_SCENA2' (0,43,2);
						CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_TERASA_05)
						WAIT 10
						CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_TERASA_04)
						}
			}
		}
	RELEASE:
	{
	SWITCH(BUTTON.INPUT.CHANNEL)
		  {
		  CASE 2712: WAIT 10 CALL 'REQUEST_CHANNELS_2NP_TERASA'
		  CASE 2713: WAIT 10 CALL 'REQUEST_CHANNELS_2NP_TERASA'	
		  }
	}
}	
//////////////////////////////////////////////////////////	FASADA ZNAK HOJNOST	//////////////////////////////////////////////////////////////
BUTTON_EVENT[dvMyTP_01,nBTN_SVETLA_VEN_ZNAK]			/// SVETLA FASADA   BUTTONS 2720-2725
{
	PUSH:
	  {
		STACK_VAR INTEGER nBtnIdx
		nBtnIdx = GET_LAST(nBTN_SVETLA_VEN_ZNAK)
		SWITCH(nBtnIdx)
				{
				  CASE 1: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_FASA_OBRAZ_02)}	 	//2720														
				  CASE 2: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_FASA_OBRAZ_02)}	
				  CASE 3: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_FASA_OBRAZ_01)}	 														
				  CASE 4: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_FASA_OBRAZ_01)}	
				  CASE 5: {															//2724 
							CALL 'ILIGHT_CHANNEL_ON'  (SV_2NP_FASA_OBRAZ_01)
							CALL 'ILIGHT_CHANNEL_ON'  (SV_2NP_FASA_OBRAZ_02)
							}														
				  CASE 6: {
							CALL 'ILIGHT_CHANNEL_OFF'  (SV_2NP_FASA_OBRAZ_01)
							CALL 'ILIGHT_CHANNEL_OFF'  (SV_2NP_FASA_OBRAZ_02)
							}	
				}
		}
	HOLD[2,REPEAT]:
		{
		STACK_VAR INTEGER nBtnIdx
		nBtnIdx = GET_LAST(nBTN_SVETLA_VEN_ZNAK)
		SWITCH(nBtnIdx)
				{
				CASE 1: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_FASA_OBRAZ_02)}	 														
				CASE 2: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_FASA_OBRAZ_02)}	
				CASE 3: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_2NP_FASA_OBRAZ_01)}	 														
				CASE 4: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_2NP_FASA_OBRAZ_01)}	
				}
		}
	RELEASE:
		{
		STACK_VAR INTEGER nBtnIdx
		nBtnIdx = GET_LAST(nBTN_SVETLA_VEN_ZNAK)
		SWITCH(nBtnIdx)
			{
			CASE 1:  														
			CASE 2: 	
			CASE 3: 	 														
			CASE 4: 	
			CASE 5: 	 														
			CASE 6: 	
			CASE 7:	
			CASE 8:	 														
			CASE 9:
			CASE 10: CALL 'REQUEST_CHANNELS_VEN_ZNAK'	
			}
		}
}

BUTTON_EVENT[dvMyTP_01,2726]				/// SCENA
{
  PUSH:
  {
	}
 RELEASE:
	{
	 STACK_VAR CHAR SC[2]	  
		{
			SC[1] = ILT_VEN_ZNAK_AREA
			SC[2] = 3 //Konkretni jedna scena
			IF (BUTTON.HOLDTIME < 4000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
			{ // VYVOLEJ SCENU
				CALL 'ILIGHT_SCENA' (SC,1)
			}
			ELSE
			{ // ULOZ SCENU
			  CALL 'ILIGHT_SAVE_SCENE' (SC)
				//SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA V HALE CISLO ',ITOA(nBtnIdx)"
				SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			}
			WAIT 10 // PRO REALNOU ZPETNOU VAZBU
				CALL 'REQUEST_CHANNELS_VEN_ZNAK'	
		}
	}
}


BUTTON_EVENT[dvMyTP_01,2727]									/// 
{
	 PUSH:
		{
		CALL 'REQUEST_CHANNELS_VEN_ZNAK'
		}
	
}
BUTTON_EVENT[dvMyTP_01,2728]									/// 
{
	 PUSH:
		{
		CALL 'ILIGHT_SCENA2' (3,52,3)		///scena - area - fade
		}
	
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
BUTTON_EVENT[dvMyTP_02,300]									/// RELAX VODA PRIVOD
BUTTON_EVENT[dvMyTP_02,301]									/// RELAX VODA PRIVOD
BUTTON_EVENT[dvMyTP_02,302]									/// VODA AUTOMAT
BUTTON_EVENT[dvMyTP_02,303]									/// VODA MANUAL									
{
	 PUSH:
		{
		SWITCH(BUTTON.INPUT.CHANNEL)
		  {
			CASE 300:{
						CALL 'ZAVRI_VODU'
						}
			CASE 301:{
						CALL 'OTEVRI_VODU'
						}
			CASE 302:{
						VODA_VENTIL_MANUAL = 0
						}
			CASE 303:{
						VODA_VENTIL_MANUAL = 1
						}
			}
		}
}
BUTTON_EVENT[dvMyTP_02,nBTN_1PP_RELAX_SC_VIRIV]		/// RELAX SCENY VIRIVKA Port 2 410-418
{
    PUSH:
    {
    STACK_VAR INTEGER nBtnIdx
    STACK_VAR CHAR SC[2]
    nBtnIdx = GET_LAST(nBTN_1PP_RELAX_SC_VIRIV)
    SC[1] = ILT_0NP_RELAX_VIRIVKA_AREA
    SC[2] = 95
    SWITCH(nBtnIdx)
	{
	CASE 1: {SC[2] = 1}	// PO 		/410
	CASE 2: {SC[2] = 2}
	CASE 3: {SC[2] = 3}
	CASE 4: {SC[2] = 4}
	CASE 5: {SC[2] = 5}
	CASE 6: {SC[2] = 6}
	CASE 7: {SC[2] = 7}	// NE 		/416
	CASE 8: {SC[2] = 8}	// Uziv 1
	CASE 9: {SC[2] = 9}	// Uziv 2  	/418
	}
    }
    RELEASE:
    {
    STACK_VAR INTEGER nBtnIdx
    STACK_VAR CHAR SC[2]
    nBtnIdx = GET_LAST(nBTN_1PP_RELAX_SC_VIRIV)
    SC[1] = ILT_0NP_RELAX_VIRIVKA_AREA
    SC[2] = 95
    SWITCH(nBtnIdx)
	{
	CASE 1: {SC[2] = 1}
	CASE 2: {SC[2] = 2}
	CASE 3: {SC[2] = 3}
	CASE 4: {SC[2] = 4}
	CASE 5: {SC[2] = 5}
	CASE 6: {SC[2] = 6}
	CASE 7: {SC[2] = 7}
	CASE 8: {SC[2] = 8}
	CASE 9: {SC[2] = 9}
	}
    IF (BUTTON.HOLDTIME < 3000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 3s
	{ // VYVOLEJ SCENU
		CALL 'ILIGHT_SCENA' (SC,1)
	}
	ELSE
	{ // ULOZ SCENU
	  CALL 'ILIGHT_SAVE_SCENE' (SC)
		SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA CISLO ',ITOA(nBtnIdx)"
		SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
	}
    }
}
BUTTON_EVENT[dvMyTP_02,419]				// Request VIRIVKA									
{
	 PUSH:
	    {
	    CALL 'REQUEST_CHANNELS_1PP_VIRIVKA'
	    }
}
BUTTON_EVENT[dvMyTP_02,450]									/// RELAX POKLOP NAHORU
BUTTON_EVENT[dvMyTP_02,451]									/// RELAX POKLOP
BUTTON_EVENT[dvMyTP_02,452]									/// RELAX POKLOP
{
	 PUSH:
		{
		SWITCH(BUTTON.INPUT.CHANNEL)
		  {
			CASE 450:{
						CALL 'ILIGHT_CHANNEL_OFF' (PO_1PP_RELAX_01)
						WAIT 10
						CALL 'ILIGHT_CHANNEL_ON' (PO_1PP_RELAX_02)
						}
			CASE 451:{
						CALL 'ILIGHT_CHANNEL_OFF' (PO_1PP_RELAX_02)
						WAIT 10
						CALL 'ILIGHT_CHANNEL_OFF' (PO_1PP_RELAX_01)
						}
			CASE 452:{
						CALL 'ILIGHT_CHANNEL_OFF' (PO_1PP_RELAX_02)
						WAIT 10
						CALL 'ILIGHT_CHANNEL_ON' (PO_1PP_RELAX_01)
						}
			}
		}
}
BUTTON_EVENT[dvMyTP_02,481]				// ALL OFF VIRIVKA									
{
	 PUSH:
	    {
	    CALL 'POWER_OFF_0NP_VIRIVKA'
	    }
}
BUTTON_EVENT[dvMyTP_02,nBTN__1PP_RELAX_UL]  					// 482 -488 RELAX PLASTEV
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN__1PP_RELAX_UL)
    SWITCH(nBtnIdx)
    {
      CASE   1: {CALL 'ILIGHT_CHANNEL_RAISE2' ( SV_RELAX_1PP_UL_C01)}
      CASE   2: {CALL 'ILIGHT_CHANNEL_LOWER2' ( SV_RELAX_1PP_UL_C01)}
      CASE   3: {CALL 'ILIGHT_CHANNEL_OFF2' ( SV_RELAX_1PP_UL_C01)}
      CASE   4: {CALL 'ILIGHT_CHANNEL_RAISE2' ( SV_RELAX_1PP_UL_W01)}
      CASE   5: {CALL 'ILIGHT_CHANNEL_LOWER2' ( SV_RELAX_1PP_UL_W01)}
      CASE   6: {CALL 'ILIGHT_CHANNEL_OFF2' ( SV_RELAX_1PP_UL_W01)}
      CASE   7: {
		CALL 'ILIGHT_CHANNEL_OFF2' ( SV_RELAX_1PP_UL_C01)
		CALL 'ILIGHT_CHANNEL_OFF2' ( SV_RELAX_1PP_UL_W01)
		}
      }
    }
    HOLD[5,REPEAT]:
    {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN__1PP_RELAX_UL)
    SWITCH(nBtnIdx)
    {
      CASE   1: {CALL 'ILIGHT_CHANNEL_RAISE2' ( SV_RELAX_1PP_UL_C01)}
      CASE   2: {CALL 'ILIGHT_CHANNEL_LOWER2' ( SV_RELAX_1PP_UL_C01)}
      CASE   4: {CALL 'ILIGHT_CHANNEL_RAISE2' ( SV_RELAX_1PP_UL_W01)}
      CASE   5: {CALL 'ILIGHT_CHANNEL_LOWER2' ( SV_RELAX_1PP_UL_W01)}
      }
    }
}


BUTTON_EVENT[dvMyTP_02,nBTN_0NP_SC_RELAX_PLASTEV]				/// SCENY 925-934 
{
  PUSH:
  {
	    STACK_VAR INTEGER nBtnIdx
	  STACK_VAR CHAR SC[2]	  
	    nBtnIdx = GET_LAST(nBTN_0NP_SC_RELAX_PLASTEV)
		IF (nBtnIdx = 11) 
		{		  
			SC[1] = ILT_0NP_RELAX_PLATEV_AREA
			SC[2] = 0
			CALL 'ILIGHT_SCENA' (SC,1) // ALL OFF		
			WAIT 10 // PRO REALNOU ZPETNOU VAZBU
			CALL 'REQUEST_CHANNELS_1PP_RELAX_PLASTEV'	
			WAIT 15
			CALL 'ILIGHT_SCENA_REQUEST'(ILT_0NP_RELAX_PLATEV_AREA) 
			
		}
	}
 RELEASE:
	{
	    STACK_VAR INTEGER nBtnIdx
	  STACK_VAR CHAR SC[2]	  
	    nBtnIdx = GET_LAST(nBTN_0NP_SC_RELAX_PLASTEV)
		IF (nBtnIdx < 10) 
		{
			SC[1] = ILT_0NP_RELAX_PLATEV_AREA
			SC[2] = TYPE_CAST(nBtnIdx) // VIM, ZE nBtnIdx JE URCITE MENSI NEZ 255, TUDIZ SI MOHU DOVOLIT PRETYPOVAT
			IF (BUTTON.HOLDTIME < 4000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
			{ // VYVOLEJ SCENU
				CALL 'ILIGHT_SCENA' (SC,1)
			}
			ELSE
			{ // ULOZ SCENU
			  CALL 'ILIGHT_SAVE_SCENE' (SC)
				//SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA V HALE CISLO ',ITOA(nBtnIdx)"
				SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			}
			WAIT 10 // PRO REALNOU ZPETNOU VAZBU
				CALL 'REQUEST_CHANNELS_1PP_RELAX_PLASTEV'	
			WAIT 15
				CALL 'ILIGHT_SCENA_REQUEST'(ILT_0NP_RELAX_PLATEV_AREA) 
		}
	}
}

////////////////////	KAMEN RELAX		///////////////////////////////////////////

BUTTON_EVENT[dvMyTP_02,nBTN_1PP_RELAX_SCRA]		/// RELAX SCENY SCHODY + RAMPA Port 2 490-496
{
	PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SC[2]
    nBtnIdx = GET_LAST(nBTN_1PP_RELAX_SCRA)
	SC[1] = ILT_0NP_RELAX_RAMPA_AREA
	SC[2] = 95
    SWITCH(nBtnIdx)
    {
	  CASE 1: {SC[2] = 1}
      CASE 2: {SC[2] = 2}
      CASE 3: {SC[2] = 3}
	  CASE 4: {SC[2] = 4}
      CASE 5: {SC[2] = 5}
      CASE 6: {SC[2] = 6}
	  CASE 7: {SC[2] = 7}
	}
	}
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SC[2]
    nBtnIdx = GET_LAST(nBTN_1PP_RELAX_SCRA)
	SC[1] = ILT_0NP_RELAX_RAMPA_AREA
	SC[2] = 95
    SWITCH(nBtnIdx)
    {
	  CASE 1: {SC[2] = 1}
      CASE 2: {SC[2] = 2}
      CASE 3: {SC[2] = 3}
	  CASE 4: {SC[2] = 4}
      CASE 5: {SC[2] = 5}
      CASE 6: {SC[2] = 6}
	  CASE 7: {SC[2] = 7}
	}
	IF (BUTTON.HOLDTIME < 3000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 3s
			{ // VYVOLEJ SCENU
				CALL 'ILIGHT_SCENA' (SC,1)
			}
			ELSE
			{ // ULOZ SCENU
			  CALL 'ILIGHT_SAVE_SCENE' (SC)
				SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA CISLO ',ITOA(nBtnIdx)"
				SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			}
  }
}

BUTTON_EVENT[dvMyTP_02,nBTN_1PP_RELAX_SCRA]		/// RELAX SCENY SCHODY + RAMPA Port 2 490-496
{
	PUSH:
		{
		STACK_VAR INTEGER nBtnIdx
		nBtnIdx = GET_LAST(nBTN_1PP_RELAX_SCRA)
		SWITCH(nBtnIdx)
		{
		CASE 1: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','ZLATOZLUTA'"}
		CASE 2: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','RUZOVA'"}
		CASE 3: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','TEPLA BILA'"}
		CASE 4: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','ZELENA'"}
		CASE 5: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','RUBINOVA'"}
		CASE 6: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','FIALOVA'"}
		CASE 7: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','MODRA'"}
		}
	}
}
BUTTON_EVENT[dvMyTP_02,nBTN_1PP_RELAX_SCRB]		/// RELAX SCENY SCHODY + RAMPA B Port 2 
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SC[2]
    nBtnIdx = GET_LAST(nBTN_1PP_RELAX_SCRB)
	SC[1] = ILT_0NP_RELAX_RAMPA_AREA
	SC[2] = 95
    SWITCH(nBtnIdx)
    {
      CASE 1: {SC[2] = 8}
      CASE 2: {SC[2] = 9}
      CASE 3: {SC[2] = 10}
	  CASE 4: {SC[2] = 11}
      CASE 5: {SC[2] = 12}
      CASE 6: {SC[2] = 13}
	  CASE 7: {SC[2] = 14}
    }
  }
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SC[2]
    nBtnIdx = GET_LAST(nBTN_1PP_RELAX_SCRB)
	SC[1] = ILT_0NP_RELAX_RAMPA_AREA
	SC[2] = 95
    SWITCH(nBtnIdx)
    {
	  CASE 1: {SC[2] = 8}
      CASE 2: {SC[2] = 9}
      CASE 3: {SC[2] = 10}
	  CASE 4: {SC[2] = 11}
      CASE 5: {SC[2] = 12}
      CASE 6: {SC[2] = 13}
	  CASE 7: {SC[2] = 14}
    }
	IF (BUTTON.HOLDTIME < 3000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 3s
			{ // VYVOLEJ SCENU
				CALL 'ILIGHT_SCENA' (SC,1)
			}
			ELSE
			{ // ULOZ SCENU
			  CALL 'ILIGHT_SAVE_SCENE' (SC)
				SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA CISLO ',ITOA(nBtnIdx)"
				SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			}
  }
}
BUTTON_EVENT[dvMyTP_02,nBTN_1PP_RELAX_SCRB]		/// RELAX SCENY SCHODY + RAMPA Port 2 490-496
{
	PUSH:
		{
		STACK_VAR INTEGER nBtnIdx
		nBtnIdx = GET_LAST(nBTN_1PP_RELAX_SCRB)
		SWITCH(nBtnIdx)
		{
		CASE 1: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','ZLATOZLUTA'"}
		CASE 2: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','RUZOVA'"}
		CASE 3: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','TEPLA BILA'"}
		CASE 4: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','ZELENA'"}
		CASE 5: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','RUBINOVA'"}
		CASE 6: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','FIALOVA'"}
		CASE 7: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','MODRA'"}
		}
	}
}

BUTTON_EVENT[dvMyTP_02,nBTN_0NP_SV_RELAX_KAMEN_RED]	// 500-530		//RELAX KAMEN
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_0NP_SV_RELAX_KAMEN_RED)
    SWITCH(nBtnIdx)
    {
      CASE   1: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_R01)}	// 500
      CASE   2: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_R01)}
      CASE   3: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_R02)}
      CASE   4: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_R02)}
      CASE   5: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_R03)}
      CASE   6: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_R03)}
      CASE   7: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_R04)}
      CASE   8: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_R04)}
      CASE   9: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_R05)}
      CASE  10: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_R05)}
      CASE  11: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_R06)}
      CASE  12: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_R06)}
      CASE  13: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_R07)}
      CASE  14: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_R07)}
      CASE  15: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_R08)}
      CASE  16: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_R08)}
      CASE  17: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_R09)}
      CASE  18: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_R09)}
      CASE  19: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_R10)}
      CASE  20: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_R10)}
      CASE  21: {
				KAMEN_RELAX_TIMER_ACTIVE=TRUE
				RGB_1PP_RELAX_SEKVENCE = RGB_0RELAX_K_01
				RGB_1PP_RELAX_01_ACTIVE=TRUE 
				RGB_1PP_RELAX_KROK = 1
				CALL 'RGB_1PP_RELAX_TIMER' (100)
				}
      CASE  22: {
				KAMEN_RELAX_TIMER_ACTIVE=FALSE
				RGB_1PP_RELAX_01_ACTIVE=FALSE
				CALL 'RGB_1PP_RELAX_TIMER_STOP'
				}		//521
      CASE  23: {CALL 'ALL_RED_0NP_RELAX_KAMEN_ON'}
      CASE  24: {CALL 'ALL_RED_0NP_RELAX_KAMEN_50'}
      CASE  25: {CALL 'ALL_RED_0NP_RELAX_KAMEN_OFF'}
      CASE  26: {
				KAMEN_RELAX_TIMER_ACTIVE=TRUE
				RGB_1PP_RELAX_SEKVENCE = RGB_0RELAX_K_05
				RGB_1PP_RELAX_01_ACTIVE=TRUE 
				RGB_1PP_RELAX_KROK = 1
				CALL 'RGB_1PP_RELAX_TIMER' (200)
				}
      CASE  27: {
				KAMEN_RELAX_TIMER_ACTIVE=TRUE
				RGB_1PP_RELAX_SEKVENCE = RGB_0RELAX_K_06
				RGB_1PP_RELAX_01_ACTIVE=TRUE 
				RGB_1PP_RELAX_KROK = 1
				CALL 'RGB_1PP_RELAX_TIMER' (200)
				}
      CASE  28: {}
      CASE  29: {}
      CASE  30: {}
      CASE  31: {}
    }
  }
  HOLD[5,REPEAT]:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_0NP_SV_RELAX_KAMEN_RED)
    SWITCH(nBtnIdx)
    {
      CASE   1: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_R01)}	// 500
      CASE   2: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_R01)}
      CASE   3: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_R02)}
      CASE   4: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_R02)}
      CASE   5: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_R03)}
      CASE   6: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_R03)}
      CASE   7: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_R04)}
      CASE   8: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_R04)}
      CASE   9: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_R05)}
      CASE  10: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_R05)}
      CASE  11: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_R06)}
      CASE  12: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_R06)}
      CASE  13: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_R07)}
      CASE  14: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_R07)}
      CASE  15: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_R08)}
      CASE  16: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_R08)}
      CASE  17: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_R09)}
      CASE  18: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_R09)}
      CASE  19: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_R10)}
      CASE  20: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_R10)}
      CASE  21: {}
      CASE  22: {}
      CASE  23: {}
      CASE  24: {}
      CASE  25: {}
      CASE  26: {}
      CASE  27: {}
      CASE  28: {}
      CASE  29: {}
      CASE  30: {}
      CASE  31: {}
    }
  }
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_0NP_SV_RELAX_KAMEN_RED)
    SWITCH(nBtnIdx)
    {
      CASE   1: {}
      CASE   2: {}
      CASE   3: {}
      CASE   4: {}
      CASE   5: {}
      CASE   6: {}
      CASE   7: {}
      CASE   8: {}
      CASE   9: {}
      CASE  10: {}
      CASE  11: {}
      CASE  12: {}
      CASE  13: {}
      CASE  14: {}
      CASE  15: {}
      CASE  16: {}
      CASE  17: {}
      CASE  18: {}
      CASE  19: {}
      CASE  20: {}
      CASE  21: {}
      CASE  22: {}
      CASE  23: 
      CASE  24: 
      CASE  25: WAIT 40
				CALL 'REQUEST_CHANNELS_0NP_RELAX_RED'
      CASE  26: {}
      CASE  27: {}
      CASE  28: {}
      CASE  29: {}
      CASE  30: {}
      CASE  31: {}
    }
  }
}


BUTTON_EVENT[dvMyTP_02,nBTN_0NP_SV_RELAX_KAMEN_GREEN]	// 531-560
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_0NP_SV_RELAX_KAMEN_GREEN)
    SWITCH(nBtnIdx)
    {
      CASE   1: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_Z01)}	// 531
      CASE   2: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_Z01)}
      CASE   3: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_Z02)}
      CASE   4: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_Z02)}
      CASE   5: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_Z03)}
      CASE   6: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_Z03)}
      CASE   7: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_Z04)}
      CASE   8: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_Z04)}
      CASE   9: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_Z05)}
      CASE  10: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_Z05)}
      CASE  11: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_Z06)}
      CASE  12: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_Z06)}
      CASE  13: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_Z07)}
      CASE  14: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_Z07)}
      CASE  15: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_Z08)}
      CASE  16: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_Z08)}
      CASE  17: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_Z09)}
      CASE  18: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_Z09)}
      CASE  19: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_Z10)}
      CASE  20: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_Z10)}
      CASE  21: {
				KAMEN_RELAX_TIMER_ACTIVE=TRUE
				RGB_1PP_RELAX_SEKVENCE = RGB_0RELAX_K_02
				RGB_1PP_RELAX_02_ACTIVE=TRUE 
				RGB_1PP_RELAX_KROK = 1
				CALL 'RGB_1PP_RELAX_TIMER' (10)
				}
      CASE  22: {
				KAMEN_RELAX_TIMER_ACTIVE=FALSE
				RGB_1PP_RELAX_02_ACTIVE=FALSE
				CALL 'RGB_1PP_RELAX_TIMER_STOP'
				}		//521
      CASE  23: {CALL 'ALL_GREEN_0NP_RELAX_KAMEN_ON'}
      CASE  24: {CALL 'ALL_GREEN_0NP_RELAX_KAMEN_50'}
      CASE  25: {CALL 'ALL_GREEN_0NP_RELAX_KAMEN_OFF'}
      CASE  26: {}
      CASE  27: {}
      CASE  28: {}
      CASE  29: {}
      CASE  30: {}
    }
  }
  HOLD[5,REPEAT]:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_0NP_SV_RELAX_KAMEN_GREEN)
    SWITCH(nBtnIdx)
    {
      CASE   1: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_Z01)}	// 531
      CASE   2: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_Z01)}
      CASE   3: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_Z02)}
      CASE   4: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_Z02)}
      CASE   5: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_Z03)}
      CASE   6: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_Z03)}
      CASE   7: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_Z04)}
      CASE   8: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_Z04)}
      CASE   9: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_Z05)}
      CASE  10: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_Z05)}
      CASE  11: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_Z06)}
      CASE  12: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_Z06)}
      CASE  13: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_Z07)}
      CASE  14: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_Z07)}
      CASE  15: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_Z08)}
      CASE  16: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_Z08)}
      CASE  17: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_Z09)}
      CASE  18: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_Z09)}
      CASE  19: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_Z10)}
      CASE  20: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_Z10)}
      CASE  21: {}
      CASE  22: {}
      CASE  23: {}
      CASE  24: {}
      CASE  25: {}
      CASE  26: {}
      CASE  27: {}
      CASE  28: {}
      CASE  29: {}
      CASE  30: {}
    }
  }
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_0NP_SV_RELAX_KAMEN_GREEN)
    SWITCH(nBtnIdx)
    {
      CASE   1: {}
      CASE   2: {}
      CASE   3: {}
      CASE   4: {}
      CASE   5: {}
      CASE   6: {}
      CASE   7: {}
      CASE   8: {}
      CASE   9: {}
      CASE  10: {}
      CASE  11: {}
      CASE  12: {}
      CASE  13: {}
      CASE  14: {}
      CASE  15: {}
      CASE  16: {}
      CASE  17: {}
      CASE  18: {}
      CASE  19: {}
      CASE  20: {}
      CASE  21: {}
      CASE  22: {}
      CASE  23: 
      CASE  24: 
      CASE  25: WAIT 40
				CALL 'REQUEST_CHANNELS_0NP_RELAX_GREEN'
      CASE  26: {}
      CASE  27: {}
      CASE  28: {}
      CASE  29: {}
      CASE  30: {}
    }
  }
}


BUTTON_EVENT[dvMyTP_02,nBTN_0NP_SV_RELAX_KAMEN_BLUE]	// 561-590
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_0NP_SV_RELAX_KAMEN_BLUE)
    SWITCH(nBtnIdx)
    {
      CASE   1: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_M01)}	// 561
      CASE   2: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_M01)}
      CASE   3: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_M02)}
      CASE   4: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_M02)}
      CASE   5: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_M03)}
      CASE   6: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_M03)}
      CASE   7: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_M04)}
      CASE   8: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_M04)}
      CASE   9: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_M05)}
      CASE  10: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_M05)}
      CASE  11: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_M06)}
      CASE  12: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_M06)}
      CASE  13: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_M07)}
      CASE  14: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_M07)}
      CASE  15: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_M08)}
      CASE  16: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_M08)}
      CASE  17: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_M09)}
      CASE  18: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_M09)}
      CASE  19: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_M10)}
      CASE  20: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_M10)}
      CASE  21: {
				KAMEN_RELAX_TIMER_ACTIVE=TRUE
				RGB_1PP_RELAX_SEKVENCE = RGB_0RELAX_K_03
				RGB_1PP_RELAX_03_ACTIVE=TRUE 
				RGB_1PP_RELAX_KROK = 1
				CALL 'RGB_1PP_RELAX_TIMER' (10)
				}
      CASE  22: {
				KAMEN_RELAX_TIMER_ACTIVE=FALSE
				RGB_1PP_RELAX_03_ACTIVE=FALSE
				CALL 'RGB_1PP_RELAX_TIMER_STOP'
				}		//521
      CASE  23: {CALL 'ALL_BLUE_0NP_RELAX_KAMEN_ON'}
      CASE  24: {CALL 'ALL_BLUE_0NP_RELAX_KAMEN_50'}
      CASE  25: {CALL 'ALL_BLUE_0NP_RELAX_KAMEN_OFF'}
      CASE  26: {}
      CASE  27: {}
      CASE  28: {}
      CASE  29: {}
      CASE  30: {}
    }
  }
  HOLD[5,REPEAT]:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_0NP_SV_RELAX_KAMEN_BLUE)
    SWITCH(nBtnIdx)
    {
		CASE   1: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_M01)}	// 561
		CASE   2: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_M01)}
		CASE   3: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_M02)}
		CASE   4: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_M02)}
		CASE   5: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_M03)}
		CASE   6: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_M03)}
		CASE   7: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_M04)}
		CASE   8: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_M04)}
		CASE   9: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_M05)}
		CASE  10: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_M05)}
		CASE  11: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_M06)}
		CASE  12: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_M06)}
		CASE  13: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_M07)}
		CASE  14: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_M07)}
		CASE  15: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_M08)}
		CASE  16: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_M08)}
		CASE  17: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_M09)}
		CASE  18: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_M09)}
		CASE  19: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_M10)}
		CASE  20: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_M10)}
		CASE  21: {}
		CASE  22: {}
		CASE  23: {}
		CASE  24: {}
		CASE  25: {}
		CASE  26: {}
		CASE  27: {}
		CASE  28: {}
		CASE  29: {}
		CASE  30: {}
    }
  }
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_0NP_SV_RELAX_KAMEN_BLUE)
    SWITCH(nBtnIdx)
    {
      CASE   1: {}
      CASE   2: {}
      CASE   3: {}
      CASE   4: {}
      CASE   5: {}
      CASE   6: {}
      CASE   7: {}
      CASE   8: {}
      CASE   9: {}
      CASE  10: {}
      CASE  11: {}
      CASE  12: {}
      CASE  13: {}
      CASE  14: {}
      CASE  15: {}
      CASE  16: {}
      CASE  17: {}
      CASE  18: {}
      CASE  19: {}
      CASE  20: {}
      CASE  21: {}
      CASE  22: {}
      CASE  23: 
      CASE  24: 
      CASE  25: WAIT 40
				CALL 'REQUEST_CHANNELS_0NP_RELAX_BLUE'
      CASE  26: {}
      CASE  27: {}
      CASE  28: {}
      CASE  29: {}
      CASE  30: {}
    }
  }
}

BUTTON_EVENT[dvMyTP_02,nBTN_0NP_SV_RELAX_KAMEN_WHITE]	// 591-620
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_0NP_SV_RELAX_KAMEN_WHITE)
    SWITCH(nBtnIdx)
    {
      CASE   1: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_B01)}	// 591
      CASE   2: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_B01)}
      CASE   3: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_B02)}
      CASE   4: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_B02)}
      CASE   5: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_B03)}
      CASE   6: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_B03)}
      CASE   7: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_B04)}
      CASE   8: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_B04)}
      CASE   9: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_B05)}
      CASE  10: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_B05)}
      CASE  11: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_B06)}
      CASE  12: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_B06)}
      CASE  13: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_B07)}
      CASE  14: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_B07)}
      CASE  15: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_B08)}
      CASE  16: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_B08)}
      CASE  17: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_B09)}
      CASE  18: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_B09)}
      CASE  19: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_B10)}
      CASE  20: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_B10)}
      CASE  21: {
				KAMEN_RELAX_TIMER_ACTIVE=TRUE
				RGB_1PP_RELAX_SEKVENCE = RGB_0RELAX_K_04
				RGB_1PP_RELAX_04_ACTIVE=TRUE 
				RGB_1PP_RELAX_KROK = 1
				CALL 'RGB_1PP_RELAX_TIMER' (10)
				}
      CASE  22: {
				KAMEN_RELAX_TIMER_ACTIVE=FALSE
				RGB_1PP_RELAX_04_ACTIVE=FALSE
				CALL 'RGB_1PP_RELAX_TIMER_STOP'
				}		//521
      CASE  23: {CALL 'ALL_WHITE_0NP_RELAX_KAMEN_ON'}
      CASE  24: {CALL 'ALL_WHITE_0NP_RELAX_KAMEN_50'}
      CASE  25: {CALL 'ALL_WHITE_0NP_RELAX_KAMEN_OFF'}
      CASE  26: {}
      CASE  27: {}
      CASE  28: {}
      CASE  29: {}
      CASE  30: {}
    }
  }
  HOLD[5,REPEAT]:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_0NP_SV_RELAX_KAMEN_WHITE)
    SWITCH(nBtnIdx)
    {
      CASE   1: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_B01)}	// 591
      CASE   2: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_B01)}
      CASE   3: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_B02)}
      CASE   4: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_B02)}
      CASE   5: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_B03)}
      CASE   6: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_B03)}
      CASE   7: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_B04)}
      CASE   8: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_B04)}
      CASE   9: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_B05)}
      CASE  10: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_B05)}
      CASE  11: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_B06)}
      CASE  12: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_B06)}
      CASE  13: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_B07)}
      CASE  14: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_B07)}
      CASE  15: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_B08)}
      CASE  16: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_B08)}
      CASE  17: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_B09)}
      CASE  18: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_B09)}
      CASE  19: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_B10)}
      CASE  20: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_B10)}
      CASE  21: {}
      CASE  22: {}
      CASE  23: {}
      CASE  24: {}
      CASE  25: {}
      CASE  26: {}
      CASE  27: {}
      CASE  28: {}
      CASE  29: {}
      CASE  30: {}
    }
  }
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_0NP_SV_RELAX_KAMEN_WHITE)
    SWITCH(nBtnIdx)
    {
      CASE   1: {CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1PP_RELAX_KAMEN_B01)}
      CASE   2: {}
      CASE   3: {}
      CASE   4: {}
      CASE   5: {}
      CASE   6: {}
      CASE   7: {}
      CASE   8: {}
      CASE   9: {}
      CASE  10: {}
      CASE  11: {}
      CASE  12: {}
      CASE  13: {}
      CASE  14: {}
      CASE  15: {}
      CASE  16: {}
      CASE  17: {}
      CASE  18: {}
      CASE  19: {}
      CASE  20: {}
      CASE  21: {}
      CASE  22: {}
      CASE  23: 
      CASE  24: 
      CASE  25: WAIT 40
				CALL 'REQUEST_CHANNELS_0NP_RELAX_WHITE'
      CASE  26: {}
      CASE  27: {}
      CASE  28: {}
      CASE  29: {}
      CASE  30: {}
    }
  }
}


BUTTON_EVENT[dvMyTP_02,nBTN_0NP_SV_RELAX_KAMEN_POMOCNE]	// 621-650 RELAX RAMPA A SCHODY HLAVNI STRANKA
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_0NP_SV_RELAX_KAMEN_POMOCNE)
    SWITCH(nBtnIdx)
    {
		CASE   1: {CALL 'REQUEST_CHANNELS_0NP_RELAX_RED'}	// 621 KAMEN CERVENA REFRESH LEVEL
		CASE   2: {CALL 'REQUEST_CHANNELS_0NP_RELAX_GREEN'}	// 622 KAMEN ZELENA REFRESH LEVEL
		CASE   3: {CALL 'REQUEST_CHANNELS_0NP_RELAX_BLUE'}  // 623 KAMEN MODRA REFRESH LEVEL
		CASE   4: {CALL 'REQUEST_CHANNELS_0NP_RELAX_WHITE'}  // 624 KAMEN BILA REFRESH LEVEL
		CASE   5:  {	// 625 ZHASNI ALL RELAX
					CALL 'SEKVENCE_0NP_RELAX_SVETLA_ZHASNOUT'
					WAIT 10
					//CALL 'SEKVENCE_0NP_RELAX_STOP'
					CALL 'ILIGHT_CHANNEL_VALUE' (SV_1PP_RELAX_01,0,10)
					CALL 'ILIGHT_CHANNEL_VALUE' (SV_1PP_RELAX_PODHLED_01,0,10)
					CALL 'ILIGHT_CHANNEL_VALUE' (SV_1PP_RELAX_PODHLED_02,0,10)
					CALL 'ILIGHT_CHANNEL_VALUE' (SV_1PP_RELAX_PODHLED_03,0,10)
					CALL 'ILIGHT_CHANNEL_VALUE' (SV_1PP_RELAX_PODHLED_04,0,10)
					CALL 'ILIGHT_CHANNEL_VALUE' (SV_1PP_RELAX_06,0,10)
					CALL 'ILIGHT_CHANNEL_VALUE' (SV_1PP_RELAX_07,0,10)
					CALL 'ILIGHT_CHANNEL_VALUE' (SV_1PP_RELAX_08,0,10)
					WAIT 20
					CALL 'POWER_OFF_0NP_RELAX_STENA_ALL'
					WAIT 25
					CALL 'POWER_OFF_0NP_RELAX_SVETLIK'
					WAIT 30
					CALL 'POWER_OFF_0NP_KOUPELNA'
					WAIT 35
					CALL 'POWER_OFF_0NP_MANDALA'
					WAIT 40 
					CALL 'REQUEST_CHANNELS_0NP_RELAX_ALL'
					WAIT 50
					CALL 'POWER_OFF_0NP_RELAX_RGB_ALL'
					WAIT 55
					IF	(DEN_NOC=1)
						{
						CALL 'POWER_OFF_0NP_ANG_DVORKY'
						}
					WAIT 80
					CALL 'POWER_OFF_0NP_RELAX_ALL'
				   }  // 625 ZHASNI ALL RELAX
		CASE   6: {
					CALL 'REQUEST_CHANNELS_0NP_RELAX_SCHODY'
					}
		CASE   7: {
					CALL 'REQUEST_CHANNELS_0NP_RELAX_RAMPA'
					}
		CASE   8: {
					CALL 'ILIGHT_CHANNEL_VALUE' (SV_1PP_RELAX_06,0,3)
					CALL 'ILIGHT_CHANNEL_VALUE' (SV_1PP_RELAX_07,0,3)
					CALL 'ILIGHT_CHANNEL_VALUE' (SV_1PP_RELAX_08,0,3)
					}
		CASE   9: {
					//CALL 'ILIGHT_CHANNEL_VALUE' (SV_1PP_RELAX_01,0,3)
					CALL 'ILIGHT_CHANNEL_VALUE' (SV_1PP_RELAX_PODHLED_01,0,3)
					CALL 'ILIGHT_CHANNEL_VALUE' (SV_1PP_RELAX_PODHLED_02,0,3)
					CALL 'ILIGHT_CHANNEL_VALUE' (SV_1PP_RELAX_PODHLED_03,0,3)
					CALL 'ILIGHT_CHANNEL_VALUE' (SV_1PP_RELAX_PODHLED_04,0,3)
					}
		CASE  10: {}
		CASE  11: {}
		CASE  12: {}
		CASE  13: {CALL 'REQUEST_CHANNELS_0NP_RELAX_SVETLIK'}	//633
		CASE  14: {}
		CASE  15: {CALL 'ILIGHT_CHANNEL_ON2' (SV_1PP_RELAX_01)}	//635 
		CASE  16: {CALL 'ILIGHT_CHANNEL_OFF2' (SV_1PP_RELAX_01)}
		CASE  17: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_PODHLED_01)}
		CASE  18: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_PODHLED_01)}
		CASE  19: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_PODHLED_02)}
		CASE  20: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_PODHLED_02)}
		CASE  21: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_PODHLED_03)}
		CASE  22: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_PODHLED_03)}
		CASE  23: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_PODHLED_04)}	//643 
		CASE  24: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_PODHLED_04)}
		CASE  25: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_06)}	// 645 SCHODY
		CASE  26: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_06)}
		CASE  27: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_07)}
		CASE  28: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_07)}
		CASE  29: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_08)}
		CASE  30: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_08)}	//650
    }
  }
  HOLD[5,REPEAT]:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_0NP_SV_RELAX_KAMEN_POMOCNE)
    SWITCH(nBtnIdx)
    {
		CASE   1: {}
		CASE   2: {}
		CASE   3: {}
		CASE   4: {}
		CASE   5: {}
		CASE   6: {}
		CASE   7: {}
		CASE   8: {}
		CASE   9: {}
		CASE  10: {}
		CASE  11: {}
		CASE  12: {}
		CASE  13: {}
		CASE  14: {}
		CASE  15: {}
		CASE  16: {}
		CASE  17: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_PODHLED_01)}
		CASE  18: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_PODHLED_01)}
		CASE  19: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_PODHLED_02)}
		CASE  20: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_PODHLED_02)}
		CASE  21: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_PODHLED_03)}
		CASE  22: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_PODHLED_03)}
		CASE  23: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_PODHLED_04)}	//643 
		CASE  24: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_PODHLED_04)}
		CASE  25: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_06)}
		CASE  26: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_06)}
		CASE  27: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_07)}
		CASE  28: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_07)}
		CASE  29: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_08)}
		CASE  30: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_08)}	//650
    }
  }
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_0NP_SV_RELAX_KAMEN_POMOCNE)
    SWITCH(nBtnIdx)
    {
      CASE   1: {}
      CASE   2: {}
      CASE   3: {}
      CASE   4: {}
      CASE   5: {}
      CASE   6: {}
      CASE   7: {}
      CASE   8: {
				WAIT 30
				CALL 'REQUEST_CHANNELS_0NP_RELAX_SCHODY'
				}
      CASE   9: {
				WAIT 30
				CALL 'REQUEST_CHANNELS_0NP_RELAX_RAMPA'
				}
      CASE  10: {}
      CASE  11: {}
      CASE  12: {}
      CASE  13: {}
      CASE  14: {}
      CASE  15: {}
      CASE  16: {}
      CASE  17: {}
      CASE  18: {}
      CASE  19: {}
      CASE  20: {}
      CASE  21: {}
      CASE  22: {}
      CASE  23: {}
      CASE  24: {}
      CASE  25: {}
      CASE  26: {}
      CASE  27: {}
      CASE  28: {}
      CASE  29: {}
      CASE  30: {}
    }
  }
}

BUTTON_EVENT[dvMyTP_02,nBTN_SCENY_0NP_KAM_RELAX]				/// 651-665 SCENY RELAX  Pres iLight 15 BUTTONS 
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
	  STACK_VAR CHAR SC[2]	  
    nBtnIdx = GET_LAST(nBTN_SCENY_0NP_KAM_RELAX)
		IF (RGB_1PP_RELAX_SEKVENCE <> RGB_0RELAX_K_00) // BEZI-LI SEKVENCE, OKAMZITE UKONCI
			CALL 'SEKVENCE_0NP_RELAX_STOP'  /// mozno pridat do slozene zavorky i zhasnuti svetel 
		IF (nBtnIdx = 15) 
		{		  
			SC[1] = ILT_0NP_KAM_RELAX_AREA
			SC[2] = 95
			CALL 'ILIGHT_SCENA' (SC,1) // ALL OFF		
			WAIT 10 // PRO REALNOU ZPETNOU VAZBU
			CALL 'ILIGHT_SCENA_REQUEST'(ILT_0NP_KAM_RELAX_AREA) 
			WAIT 15
			CALL 'REQUEST_CHANNELS_0NP_RELAX_ALL'
		}
	}
	
  RELEASE:
	{
    STACK_VAR INTEGER nBtnIdx
	  STACK_VAR CHAR SC[2]	  
    nBtnIdx = GET_LAST(nBTN_SCENY_0NP_KAM_RELAX)
	SEND_STRING 0,"'BYLA zmacknuto CISLO ',ITOA(nBtnIdx)"
		IF (nBtnIdx < 65) 
		{
			SC[1] = ILT_0NP_KAM_RELAX_AREA
			SC[2] = TYPE_CAST(nBtnIdx) // VIM, ZE nBtnIdx JE URCITE MENSI NEZ 255, TUDIZ SI MOHU DOVOLIT PRETYPOVAT
			IF (BUTTON.HOLDTIME < 3000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
			{ // VYVOLEJ SCENU
				CALL 'ILIGHT_SCENA' (SC,1)
			}
			ELSE
			{ // ULOZ SCENU
			  CALL 'ILIGHT_SAVE_SCENE' (SC)
				SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA V RELAX CISLO ',ITOA(nBtnIdx)"
				SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			}
			WAIT 10 // PRO REALNOU ZPETNOU VAZBU
				CALL 'ILIGHT_SCENA_REQUEST'(ILT_0NP_KAM_RELAX_AREA) 
		}
	(*	
	 RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SC[2]
     nBtnIdx = GET_LAST(nBTN_SCENY_0NP_KAM_RELAX)
	SC[1] = ILT_0NP_KAM_RELAX_AREA
	SC[2] = 95
	SEND_STRING 0,"'BYLA zmacknuto CISLO ',ITOA(nBtnIdx)"
    SWITCH(nBtnIdx)
    {
	  CASE 1: {SC[2] = 1}
      CASE 2: {SC[2] = 2}
      CASE 3: {SC[2] = 3}
	  CASE 4: {SC[2] = 4}
      CASE 5: {SC[2] = 5}
      CASE 6: {SC[2] = 6}
	  CASE 7: {SC[2] = 7}
	}
	IF (BUTTON.HOLDTIME < 3000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 3s
			{ // VYVOLEJ SCENU
				CALL 'ILIGHT_SCENA' (SC,1)
			}
			ELSE
			{ // ULOZ SCENU
			  CALL 'ILIGHT_SAVE_SCENE' (SC)
				SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA CISLO ',ITOA(nBtnIdx)"
				SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			}
	*)
	}
	
}

BUTTON_EVENT[dvMyTP_02,666]									/// RELAX VLASTNI SCENA 1 WHITE
{	
	PUSH:
		{
		CANCEL_WAIT 'STISK TIMER'
		sSTISK = 1
		WAIT 5 'STISK TIMER'
			{
			sSTISK = 0
			}
		}
	RELEASE:
		{
		IF (sSTISK = 1) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
				{ 
				KAMEN_0RELAX_BILA=RELAX_0NP_KAMEN_WHITE_1
				CALL 'VYVOLEJ_RELAX_KAMEN_WHITE'(KAMEN_0RELAX_BILA)
				}
			ELSE
				{ 
				nVSTUP = SCENA_RELAX_KAMEN_W1
				UKLADANI_ACTIVE=TRUE
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1PP_RELAX_KAMEN_B01)
				WAIT 5
					{
					SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
					}
				}
		}
}

BUTTON_EVENT[dvMyTP_02,667]									/// RELAX VLASTNI SCENA 1 RED
{	
	PUSH:
		{
		CANCEL_WAIT 'STISK TIMER'
		sSTISK = 1
		WAIT 5 'STISK TIMER'
			{
			sSTISK = 0
			}
		}
	RELEASE:
		{
		IF (sSTISK = 1) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
				{ 
				KAMEN_0RELAX_CERVEN=RELAX_0NP_KAMEN_RED_1
				CALL 'VYVOLEJ_RELAX_KAMEN_RED'(KAMEN_0RELAX_CERVEN)
				}
			ELSE
				{ 
				nVSTUP = SCENA_RELAX_KAMEN_R1
				UKLADANI_ACTIVE=TRUE
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1PP_RELAX_KAMEN_R01)
				WAIT 5
					{
					SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
					}
				}
		}
}
BUTTON_EVENT[dvMyTP_02,668]									/// RELAX VLASTNI SCENA 1 GREEN
{	
	PUSH:
		{
		CANCEL_WAIT 'STISK TIMER'
		sSTISK = 1
		WAIT 5 'STISK TIMER'
			{
			sSTISK = 0
			}
		}
	RELEASE:
		{
		IF (sSTISK = 1) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
				{ 
				KAMEN_0RELAX_ZELEN=RELAX_0NP_KAMEN_GREEN_1
				CALL 'VYVOLEJ_RELAX_KAMEN_GREEN'(KAMEN_0RELAX_ZELEN)
				}
			ELSE
				{ 
				nVSTUP = SCENA_RELAX_KAMEN_G1
				UKLADANI_ACTIVE=TRUE
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1PP_RELAX_KAMEN_Z01)
				WAIT 5
					{
					SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
					}
				}
		}
}
BUTTON_EVENT[dvMyTP_02,669]									/// RELAX VLASTNI SCENA 1 BLUE
{	
	PUSH:
		{
		CANCEL_WAIT 'STISK TIMER'
		sSTISK = 1
		WAIT 5 'STISK TIMER'
			{
			sSTISK = 0
			}
		}
	RELEASE:
		{
		IF (sSTISK = 1) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
				{ 
				KAMEN_0RELAX_MODRA=RELAX_0NP_KAMEN_BLUE_1
				CALL 'VYVOLEJ_RELAX_KAMEN_BLUE'(KAMEN_0RELAX_MODRA)
				SEND_STRING 0,'DRZENO KRATCE'
				}
			ELSE
				{ 
				nVSTUP = SCENA_RELAX_KAMEN_B1
				UKLADANI_ACTIVE=TRUE
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1PP_RELAX_KAMEN_M01)
				SEND_STRING 0,'DRZENO DLOUZE - UKLADAM'
				WAIT 5
					{
					SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
					}
				}
		}
}
BUTTON_EVENT[dvMyTP_02,670]									/// RELAX VLASTNI SCENA 1 BLUE
{	
	PUSH:
		{
		CANCEL_WAIT 'STISK TIMER'
		sSTISK = 1
		WAIT 5 'STISK TIMER'
			{
			sSTISK = 0
			}
		}
	RELEASE:
		{
		IF (sSTISK = 1) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
				{ 
				KAMEN_0RELAX_MODRA=RELAX_0NP_KAMEN_BLUE_2
				CALL 'VYVOLEJ_RELAX_KAMEN_BLUE'(KAMEN_0RELAX_MODRA)
				SEND_STRING 0,'DRZENO KRATCE'
				}
			ELSE
				{ 
				nVSTUP = SCENA_RELAX_KAMEN_B2
				UKLADANI_ACTIVE=TRUE
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1PP_RELAX_KAMEN_M01)
				SEND_STRING 0,'DRZENO DLOUZE - UKLADAM'
				WAIT 5
					{
					SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
					}
				}
		}
}
BUTTON_EVENT[dvMyTP_02,671]									/// OBNOV RELAX VLASTNI SCENY bacha !!! MAM UZ POUZITE CISLO
{	
	RELEASE:
		{
		//CALL 'OBNOV_PERSIST_RELAX_KAMEN'
		}
}
BUTTON_EVENT[dvMyTP_02,nBTN_SV_0NP_KOUP]  					// 671 -690 KOUPELNA RELAX
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_SV_0NP_KOUP)
    SWITCH(nBtnIdx)
    {
      CASE   1: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_KOUPELNA_02)}
      CASE   2: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_KOUPELNA_02)}
	  CASE   3: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_KOUPELNA_03)}
      CASE   4: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_KOUPELNA_03)}
      CASE   5: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_KOUPELNA_04)}
      CASE   6: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_KOUPELNA_04)}
	  CASE   7: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_KOUPELNA_01)}
      CASE   8: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_KOUPELNA_01)}
      CASE   9: {CALL 'POWER_OFF_0NP_KOUPELNA'}			//ALL OFF
      CASE  10: {CALL 'REQUEST_CHANNELS_0NP_RELAX_KOUPELNA'}			// REFRESH
      CASE   11: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_KOUPELNA_06)}
      CASE   12: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_KOUPELNA_06)}
	  CASE   13: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_KOUPELNA_07)}
      CASE   14: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_KOUPELNA_07)}
      CASE   15: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_KOUPELNA_08)}
      CASE   16: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_KOUPELNA_08)}
      CASE  17: {}
      CASE  18: {}
      CASE  19: {CALL 'POWER_OFF_0NP_KOUPELNA'}		/// ALL OFF
      CASE  20: {CALL 'REQUEST_CHANNELS_0NP_RELAX_KOUPELNA'}		// REFRESH
    }
  }
}

BUTTON_EVENT[dvMyTP_02,700]									/// RELAX SRDCE START
BUTTON_EVENT[dvMyTP_02,701]									/// RELAX SRDCE START
BUTTON_EVENT[dvMyTP_02,702]									/// RELAX SRDCE START
BUTTON_EVENT[dvMyTP_02,703]									/// RELAX SRDCE START
BUTTON_EVENT[dvMyTP_02,710]									/// RELAX SRDCE STOP
{
	 RELEASE:
		{
		SWITCH(BUTTON.INPUT.CHANNEL)
		  {
			CASE 700:{
						SQ_RELAX_SRDCE=REL_0NP_SRDCE_01
						CALL 'SrdceTep_ON'
						}
			CASE 701:{
						SQ_RELAX_SRDCE=REL_0NP_SRDCE_02
						CALL 'SrdceTep_ON'
						}
			CASE 702:{
						SQ_RELAX_SRDCE=REL_0NP_SRDCE_03
						CALL 'SrdceTep_ON'
						}
			CASE 703:{
						SQ_RELAX_SRDCE=REL_0NP_SRDCE_04
						CALL 'SrdceTep_ON'
						}
			CASE 710:{
						SQ_RELAX_SRDCE=REL_0NP_SRDCE_00
						CALL 'EFEKT_SRDCE_STOP'
						WAIT 10
						CALL 'SrdceTep_OFF'
						WAIT 20
						CALL 'SEKVENCE_0NP_RELAX_KAMEN_WHITE_ZHASNOUT'
						CALL 'SEKVENCE_0NP_RELAX_KAMEN_GREEN_ZHASNOUT'
						CALL 'SEKVENCE_0NP_RELAX_KAMEN_BLUE_ZHASNOUT'
						CALL 'SEKVENCE_0NP_RELAX_KAMEN_RED_ZHASNOUT'
						WAIT 30
						CALL 'REQUEST_CHANNELS_0NP_RELAX_ALL'
						}
			}
	}
}


(*
BUTTON_EVENT[dvMyTP_02,704]									/// RELAX SRDCE uroven
BUTTON_EVENT[dvMyTP_02,705]									/// RELAX SRDCE uroven
BUTTON_EVENT[dvMyTP_02,706]									/// RELAX SRDCE uroven
{
	 PUSH:
		{
		CANCEL_WAIT 'STISK TIMER'
		sSTISK = 1
		WAIT 5 'STISK TIMER'
			{
			sSTISK = 0
			}
		}
	 
	 RELEASE:
		{
		SWITCH(BUTTON.INPUT.CHANNEL)
		  {
			CASE 704:{
						IF (sSTISK = 1) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
							{ 
							KAMEN_0RELAX_BILA=RELAX_0NP_KAMEN_WHITE_3
							CALL 'VYVOLEJ_RELAX_KAMEN_WHITE'(KAMEN_0RELAX_BILA)
							CALL 'REQUEST_CHANNELS_0NP_RELAX_ALL'
							}
						ELSE
							{ 
							nVSTUP = SCENA_RELAX_KAMEN_W3
							UKLADANI_ACTIVE=TRUE
							CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1PP_RELAX_KAMEN_B01)
							WAIT 5
								{
								SEND_COMMAND dvMyTP_02, "'@PPN-scena_ulozena'"
								//SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
								}
							}
						}
			CASE 705:{
						IF (sSTISK = 1) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
							{ 
							KAMEN_0RELAX_BILA=RELAX_0NP_KAMEN_WHITE_4
							CALL 'VYVOLEJ_RELAX_KAMEN_WHITE'(KAMEN_0RELAX_BILA)
							CALL 'REQUEST_CHANNELS_0NP_RELAX_ALL'
							}
						ELSE
							{ 
							nVSTUP = SCENA_RELAX_KAMEN_W4
							UKLADANI_ACTIVE=TRUE
							CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1PP_RELAX_KAMEN_B01)
							WAIT 5
								{
								//SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
								SEND_COMMAND dvMyTP_02, "'@PPN-scena_ulozena'"
								}
							}
						}
			CASE 706:{
						IF (sSTISK = 1) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
							{ 
							KAMEN_0RELAX_BILA=RELAX_0NP_KAMEN_WHITE_5
							CALL 'VYVOLEJ_RELAX_KAMEN_WHITE'(KAMEN_0RELAX_BILA)
							CALL 'REQUEST_CHANNELS_0NP_RELAX_ALL'
							}
						ELSE
							{ 
							nVSTUP = SCENA_RELAX_KAMEN_W5
							UKLADANI_ACTIVE=TRUE
							CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1PP_RELAX_KAMEN_B01)
							WAIT 5
								{
								//SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
								SEND_COMMAND dvMyTP_02, "'@PPN-scena_ulozena'"
								}
							}
						}
			}
		}
}
*)

BUTTON_EVENT[dvMyTP_02,704]									/// RELAX SRDCE uroven
BUTTON_EVENT[dvMyTP_02,705]									/// RELAX SRDCE uroven
BUTTON_EVENT[dvMyTP_02,706]									/// RELAX SRDCE uroven
BUTTON_EVENT[dvMyTP_02,707]									/// RELAX SRDCE uroven barvy
BUTTON_EVENT[dvMyTP_02,708]									/// RELAX SRDCE uroven barvy
BUTTON_EVENT[dvMyTP_02,709]									/// RELAX SRDCE uroven barvy
{
	 PUSH:
		{
		//CALL 'SEKVENCE_0NP_RELAX_STOP'
		CANCEL_WAIT 'STISK TIMER'
		sSTISK = 1
		WAIT 10 'STISK TIMER'	// Neni to 0.5s - TED MOZNA 1S?
			{
			sSTISK = 0
			}
		}
	 
	 RELEASE:
		{
		STACK_VAR CHAR SC[2]
		SC[1] = ILT_0NP_KAM_RELAX_AREA
		SWITCH(BUTTON.INPUT.CHANNEL)
		  {
			CASE 704:{
						SC[2] = 30
						IF (sSTISK = 1) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
							{ 
							CALL 'ILIGHT_SCENA' (SC,0)
							}
						ELSE
							{ 
							CALL 'ILIGHT_SAVE_SCENE' (SC)
							SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA CISLO ',ITOA(SC[2])"
							SEND_COMMAND dvMyTP_01, "'@PPN-scena_ulozena'"
							}
						}
			CASE 705:{
						SC[2] = 31
						IF (sSTISK = 1) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
							{ 
							CALL 'ILIGHT_SCENA' (SC,1)
							}
						ELSE
							{ 
							CALL 'ILIGHT_SAVE_SCENE' (SC)
							SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA CISLO ',ITOA(SC[2])"
							SEND_COMMAND dvMyTP_01, "'@PPN-scena_ulozena'"
							}
						}
			CASE 706:{
						SC[2] = 32
						IF (sSTISK = 1) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
							{ 
							CALL 'ILIGHT_SCENA' (SC,1)
							}
						ELSE
							{ 
							CALL 'ILIGHT_SAVE_SCENE' (SC)
							SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA CISLO ',ITOA(SC[2])"
							SEND_COMMAND dvMyTP_01, "'@PPN-scena_ulozena'"
							}
						}
			CASE 707:{
						SC[2] = 33
						IF (sSTISK = 1) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
							{ 
							CALL 'ILIGHT_SCENA' (SC,1)
							}
						ELSE
							{ 
							CALL 'ILIGHT_SAVE_SCENE' (SC)
							SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA CISLO ',ITOA(SC[2])"
							SEND_COMMAND dvMyTP_01, "'@PPN-scena_ulozena'"
							}
						}
			CASE 708:{
						SC[2] = 34
						IF (sSTISK = 1) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
							{ 
							CALL 'ILIGHT_SCENA' (SC,1)
							}
						ELSE
							{ 
							CALL 'ILIGHT_SAVE_SCENE' (SC)
							SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA CISLO ',ITOA(SC[2])"
							SEND_COMMAND dvMyTP_01, "'@PPN-scena_ulozena'"
							}
						}
			CASE 709:{
						SC[2] = 35
						IF (sSTISK = 1) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
							{ 
							CALL 'ILIGHT_SCENA' (SC,1)
							}
						ELSE
							{ 
							CALL 'ILIGHT_SAVE_SCENE' (SC)
							SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA CISLO ',ITOA(SC[2])"
							SEND_COMMAND dvMyTP_01, "'@PPN-scena_ulozena'"
							}
						}
			}
		}
}
BUTTON_EVENT[dvMyTP_02,711]									/// RELAX HLAVNI SCENY !!!!
BUTTON_EVENT[dvMyTP_02,712]									/// RELAX hlavni sceny
BUTTON_EVENT[dvMyTP_02,713]									/// RELAX hlavni sceny
BUTTON_EVENT[dvMyTP_02,714]									/// RELAX hlavni sceny
BUTTON_EVENT[dvMyTP_02,715]									/// RELAX hlavni sceny
BUTTON_EVENT[dvMyTP_02,716]									/// RELAX hlavni sceny
BUTTON_EVENT[dvMyTP_02,717]									/// RELAX hlavni sceny
BUTTON_EVENT[dvMyTP_02,718]									/// RELAX HLAVNI SCENY !!!!
BUTTON_EVENT[dvMyTP_02,719]									/// RELAX hlavni sceny
BUTTON_EVENT[dvMyTP_02,720]									/// RELAX hlavni sceny
BUTTON_EVENT[dvMyTP_02,721]									/// RELAX hlavni sceny
BUTTON_EVENT[dvMyTP_02,722]									/// RELAX hlavni sceny
BUTTON_EVENT[dvMyTP_02,723]									/// RELAX hlavni sceny
BUTTON_EVENT[dvMyTP_02,724]									/// RELAX hlavni sceny
{
	PUSH:
		{
		SWITCH(BUTTON.INPUT.CHANNEL)
		  {
			CASE 711:{
						CALL 'ILIGHT_SCENA2' (1,38,8)  /// (CHAR SCENA,CHAR AREA,CHAR FADETIME)
						WAIT 4
						CALL 'ILIGHT_SCENA2' (1,35,5)
						WAIT 8
						CALL 'ILIGHT_SCENA2' (1,31,3)
						WAIT 12
						CALL 'ILIGHT_SCENA2' (1,40,1)
						WAIT 16
						CALL 'ILIGHT_SCENA2' (11,39,1)
						WAIT 19
						CALL 'ILIGHT_SCENA2' (1,49,1)
						WAIT 24
						CALL 'ILIGHT_SCENA2' (1,50,1)
						SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','PO DEN - ZLATOZLUTA'"
					}
			CASE 712:{
						CALL 'ILIGHT_SCENA2' (2,38,8)
						WAIT 4
						CALL 'ILIGHT_SCENA2' (2,35,5)
						WAIT 8
						CALL 'ILIGHT_SCENA2' (2,31,3)
						WAIT 12						
						CALL 'ILIGHT_SCENA2' (2,40,1)
						WAIT 16
						CALL 'ILIGHT_SCENA2' (12,39,1)
						WAIT 19
						CALL 'ILIGHT_SCENA2' (2,49,1)
						WAIT 24
						CALL 'ILIGHT_SCENA2' (2,50,1)
						SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','UT - RUZOVA'"
					}
			CASE 713:{
						CALL 'ILIGHT_SCENA2' (3,38,8)
						WAIT 4
						CALL 'ILIGHT_SCENA2' (3,35,5)
						WAIT 8
						CALL 'ILIGHT_SCENA2' (3,31,3)
						WAIT 12
						CALL 'ILIGHT_SCENA2' (3,40,1)
						WAIT 16
						CALL 'ILIGHT_SCENA2' (13,39,1)
						WAIT 19
						CALL 'ILIGHT_SCENA2' (3,49,1)
						WAIT 24
						CALL 'ILIGHT_SCENA2' (3,50,1)
						SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','ST - TEPLA BILA'"
					}
			CASE 714:{
						CALL 'ILIGHT_SCENA2' (4,38,8)
						WAIT 4
						CALL 'ILIGHT_SCENA2' (4,35,5)
						WAIT 8
						CALL 'ILIGHT_SCENA2' (4,31,3)
						WAIT 12						
						CALL 'ILIGHT_SCENA2' (4,40,1)
						WAIT 16
						CALL 'ILIGHT_SCENA2' (14,39,1)
						WAIT 19
						CALL 'ILIGHT_SCENA2' (4,49,1)
						WAIT 24
						CALL 'ILIGHT_SCENA2' (4,50,1)
						SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','CT - ZELENA'"
					}
			CASE 715:{
						CALL 'ILIGHT_SCENA2' (5,38,8)
						WAIT 4
						CALL 'ILIGHT_SCENA2' (5,35,5)
						WAIT 8
						CALL 'ILIGHT_SCENA2' (5,31,3)
						WAIT 12
						CALL 'ILIGHT_SCENA2' (5,40,1)
						WAIT 16
						CALL 'ILIGHT_SCENA2' (15,39,1)
						WAIT 19
						CALL 'ILIGHT_SCENA2' (5,49,1)
						WAIT 24
						CALL 'ILIGHT_SCENA2' (5,50,1)
						SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','PA - RUBINOVA'"
					}
			CASE 716:{
						CALL 'ILIGHT_SCENA2' (6,38,8)
						WAIT 4
						CALL 'ILIGHT_SCENA2' (6,35,5)
						WAIT 8
						CALL 'ILIGHT_SCENA2' (6,31,3)
						WAIT 12
						CALL 'ILIGHT_SCENA2' (6,40,1)
						WAIT 16
						CALL 'ILIGHT_SCENA2' (16,39,1)
						WAIT 19
						CALL 'ILIGHT_SCENA2' (6,49,1)
						WAIT 24
						CALL 'ILIGHT_SCENA2' (6,50,1)
						SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','SO - FIALOVA'"
					}
			CASE 717:{
						CALL 'ILIGHT_SCENA2' (7,38,8)
						WAIT 4
						CALL 'ILIGHT_SCENA2' (7,35,5)
						WAIT 8
						CALL 'ILIGHT_SCENA2' (7,31,3)
						WAIT 12
						CALL 'ILIGHT_SCENA2' (7,40,1)
						WAIT 16
						CALL 'ILIGHT_SCENA2' (17,39,1)
						WAIT 19
						CALL 'ILIGHT_SCENA2' (7,49,1)
						WAIT 24
						CALL 'ILIGHT_SCENA2' (7,50,1)
						SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','NE - MODRA'"
					}
			CASE 718:{
						CALL 'ILIGHT_SCENA2' (8,38,1)  /// (CHAR SCENA,CHAR AREA,CHAR FADETIME)
						WAIT 10
						CALL 'ILIGHT_SCENA2' (8,35,1)
						WAIT 20
						CALL 'ILIGHT_SCENA2' (8,40,1)
						WAIT 25
						CALL 'ILIGHT_SCENA2' (8,31,1)
						WAIT 16
						CALL 'ILIGHT_SCENA2' (11,39,1)
						CALL 'ILIGHT_SCENA2' (1,49,1)
						SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','PO NOC ZLATOZLUTA'"
					}
			CASE 719:{
						CALL 'ILIGHT_SCENA2' (9,38,1)
						WAIT 4
						CALL 'ILIGHT_SCENA2' (9,35,1)
						WAIT 80
						CALL 'ILIGHT_SCENA2' (9,40,1)
						WAIT 12
						CALL 'ILIGHT_SCENA2' (9,31,1)
						WAIT 16
						CALL 'ILIGHT_SCENA2' (11,39,1)
						CALL 'ILIGHT_SCENA2' (2,49,1)
						SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','UT NOC RUZOVA'"
					}
			CASE 720:{
						CALL 'ILIGHT_SCENA2' (10,38,1)
						WAIT 10
						CALL 'ILIGHT_SCENA2' (10,35,1)
						WAIT 20
						CALL 'ILIGHT_SCENA2' (10,40,1)
						WAIT 25
						CALL 'ILIGHT_SCENA2' (10,31,1)
						CALL 'ILIGHT_SCENA2' (3,49,1)
						SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','ST NOC TEPLA BILA'"
					}
			CASE 721:{
						CALL 'ILIGHT_SCENA2' (11,38,1)
						WAIT 10
						CALL 'ILIGHT_SCENA2' (11,35,1)
						WAIT 20
						CALL 'ILIGHT_SCENA2' (11,40,1)
						WAIT 25
						CALL 'ILIGHT_SCENA2' (11,31,1)
						CALL 'ILIGHT_SCENA2' (4,49,1)
						SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','CT NOC ZELENA'"
					}
			CASE 722:{
						CALL 'ILIGHT_SCENA2' (12,38,1)
						WAIT 10
						CALL 'ILIGHT_SCENA2' (12,35,1)
						WAIT 20
						CALL 'ILIGHT_SCENA2' (12,40,1)
						WAIT 25
						CALL 'ILIGHT_SCENA2' (12,31,1)
						CALL 'ILIGHT_SCENA2' (5,49,1)
						SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','PA NOC RUBINOVA'"
					}
			CASE 723:{
						CALL 'ILIGHT_SCENA2' (13,38,1)
						WAIT 10
						CALL 'ILIGHT_SCENA2' (13,35,1)
						WAIT 20
						CALL 'ILIGHT_SCENA2' (13,40,1)
						WAIT 25
						CALL 'ILIGHT_SCENA2' (13,31,1)
						CALL 'ILIGHT_SCENA2' (6,49,1)
						SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','SO NOC FIALOVA'"
					}
			CASE 724:{
						CALL 'ILIGHT_SCENA2' (14,38,1)
						WAIT 10
						CALL 'ILIGHT_SCENA2' (14,35,1)
						WAIT 20
						CALL 'ILIGHT_SCENA2' (14,40,1)
						WAIT 25
						CALL 'ILIGHT_SCENA2' (14,31,1)
						CALL 'ILIGHT_SCENA2' (7,49,1)
						SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','NE NOC MODRA'"
					}
				
			}
		}
}


(*
BUTTON_EVENT[dvMyTP_02,707]									/// RELAX SRDCE uroven
BUTTON_EVENT[dvMyTP_02,708]									/// RELAX SRDCE uroven
BUTTON_EVENT[dvMyTP_02,709]									/// RELAX SRDCE uroven
{
	 PUSH:
		{
		CANCEL_WAIT 'STISK TIMER'
		sSTISK = 1
		WAIT 5 'STISK TIMER'
			{
			sSTISK = 0
			}
		}
	 
	 RELEASE:
		{
		SWITCH(BUTTON.INPUT.CHANNEL)
		  {
			CASE 707:{
						IF (sSTISK = 1) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
							{ 
							KAMEN_0RELAX_BILA=RELAX_0NP_KAMEN_WHITE_6
							KAMEN_0RELAX_CERVEN=RELAX_0NP_KAMEN_RED_3
							KAMEN_0RELAX_MODRA=RELAX_0NP_KAMEN_BLUE_3
							KAMEN_0RELAX_ZELEN=RELAX_0NP_KAMEN_GREEN_3
							CALL 'VYVOLEJ_RELAX_KAMEN_WHITE'(KAMEN_0RELAX_BILA)
							CALL 'VYVOLEJ_RELAX_KAMEN_RED'(KAMEN_0RELAX_CERVEN)
							CALL 'VYVOLEJ_RELAX_KAMEN_GREEN'(KAMEN_0RELAX_ZELEN)
							CALL 'VYVOLEJ_RELAX_KAMEN_BLUE'(KAMEN_0RELAX_MODRA)
							CALL 'REQUEST_CHANNELS_0NP_RELAX_ALL'
							}
						ELSE
							{ 
							nVSTUP = SCENA_RELAX_KAMEN_W6
							UKLADANI_ACTIVE=TRUE
							CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1PP_RELAX_KAMEN_B01)
							WAIT 5
								{
								nVSTUP = SCENA_RELAX_KAMEN_R3
								UKLADANI_ACTIVE=TRUE
								CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1PP_RELAX_KAMEN_R01)
								WAIT 5
									{
									nVSTUP = SCENA_RELAX_KAMEN_G3
									UKLADANI_ACTIVE=TRUE
									CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1PP_RELAX_KAMEN_Z01)
									WAIT 5
										{
										nVSTUP = SCENA_RELAX_KAMEN_B3
										UKLADANI_ACTIVE=TRUE
										CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1PP_RELAX_KAMEN_M01)
										SEND_COMMAND dvMyTP_02, "'@PPN-scena_ulozena'"
										//SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
										}
									}
								}
							}
						}
			CASE 708:{
						IF (sSTISK = 1) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
							{ 
							KAMEN_0RELAX_BILA=RELAX_0NP_KAMEN_WHITE_7
							KAMEN_0RELAX_CERVEN=RELAX_0NP_KAMEN_RED_4
							KAMEN_0RELAX_MODRA=RELAX_0NP_KAMEN_BLUE_4
							KAMEN_0RELAX_ZELEN=RELAX_0NP_KAMEN_GREEN_4
							CALL 'VYVOLEJ_RELAX_KAMEN_WHITE'(KAMEN_0RELAX_BILA)
							CALL 'VYVOLEJ_RELAX_KAMEN_RED'(KAMEN_0RELAX_CERVEN)
							CALL 'VYVOLEJ_RELAX_KAMEN_GREEN'(KAMEN_0RELAX_ZELEN)
							CALL 'VYVOLEJ_RELAX_KAMEN_BLUE'(KAMEN_0RELAX_MODRA)
							CALL 'REQUEST_CHANNELS_0NP_RELAX_ALL'
							}
						ELSE
							{ 
							nVSTUP = SCENA_RELAX_KAMEN_W7
							UKLADANI_ACTIVE=TRUE
							CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1PP_RELAX_KAMEN_B01)
							WAIT 5
								{
								nVSTUP = SCENA_RELAX_KAMEN_R4
								UKLADANI_ACTIVE=TRUE
								CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1PP_RELAX_KAMEN_R01)
								WAIT 5
									{
									nVSTUP = SCENA_RELAX_KAMEN_G4
									UKLADANI_ACTIVE=TRUE
									CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1PP_RELAX_KAMEN_Z01)
									WAIT 5
										{
										nVSTUP = SCENA_RELAX_KAMEN_B4
										UKLADANI_ACTIVE=TRUE
										CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1PP_RELAX_KAMEN_M01)
										SEND_COMMAND dvMyTP_02, "'@PPN-scena_ulozena'"
										//SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
										}
									}
								}
							}
						}
			CASE 709:{
						IF (sSTISK = 1) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
							{ 
							KAMEN_0RELAX_BILA=RELAX_0NP_KAMEN_WHITE_8  /// tma uroven
							KAMEN_0RELAX_CERVEN=RELAX_0NP_KAMEN_RED_5
							KAMEN_0RELAX_MODRA=RELAX_0NP_KAMEN_BLUE_5
							KAMEN_0RELAX_ZELEN=RELAX_0NP_KAMEN_GREEN_5
							CALL 'VYVOLEJ_RELAX_KAMEN_WHITE'(KAMEN_0RELAX_BILA)
							CALL 'VYVOLEJ_RELAX_KAMEN_RED'(KAMEN_0RELAX_CERVEN)
							CALL 'VYVOLEJ_RELAX_KAMEN_GREEN'(KAMEN_0RELAX_ZELEN)
							CALL 'VYVOLEJ_RELAX_KAMEN_BLUE'(KAMEN_0RELAX_MODRA)
							CALL 'REQUEST_CHANNELS_0NP_RELAX_ALL'
							}
						ELSE
							{ 
							nVSTUP = SCENA_RELAX_KAMEN_W8
							UKLADANI_ACTIVE=TRUE
							CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1PP_RELAX_KAMEN_B01)
							WAIT 5
								{
								nVSTUP = SCENA_RELAX_KAMEN_R5
								UKLADANI_ACTIVE=TRUE
								CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1PP_RELAX_KAMEN_R01)
								WAIT 5
									{
									nVSTUP = SCENA_RELAX_KAMEN_G5
									UKLADANI_ACTIVE=TRUE
									CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1PP_RELAX_KAMEN_Z01)
									WAIT 5
										{
										nVSTUP = SCENA_RELAX_KAMEN_B5
										UKLADANI_ACTIVE=TRUE
										CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1PP_RELAX_KAMEN_M01)
										SEND_COMMAND dvMyTP_02, "'@PPN-scena_ulozena'"
										//SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
										}
									}
								}
							}
						}
			}
		}
}
*)


BUTTON_EVENT[dvMyTP_02,751]	// Bila 1
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_B01)
	  }
  HOLD[5,REPEAT]:
	  {
		CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_B01)	
	  }
   RELEASE:
	  {
	  CANCEL_WAIT 'STISK LEVEL'
	  CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1PP_RELAX_KAMEN_B01)
	  KAMEN_0RELAX_BILA=WHITE_TEMP
	  WAIT 10 'STISK LEVEL'
		{
		CALL 'VYVOLEJ_RELAX_KAMEN_WHITE2'(KAMEN_0RELAX_BILA)
		}
	  }
 
}

BUTTON_EVENT[dvMyTP_02,752]	// Bila 1
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_B01)
	  }
  HOLD[5,REPEAT]:
	  {
		CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_B01)	
	  }
   RELEASE:
	  {
	  CANCEL_WAIT 'STISK LEVEL'
	  CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1PP_RELAX_KAMEN_B01)
	  KAMEN_0RELAX_BILA=WHITE_TEMP
	  WAIT 10 'STISK LEVEL'
		{
		CALL 'VYVOLEJ_RELAX_KAMEN_WHITE2'(KAMEN_0RELAX_BILA)
		}
	  }
 
}
BUTTON_EVENT[dvMyTP_02,753]	// Cerven 1
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_R01)
	  }
  HOLD[5,REPEAT]:
	  {
		CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_R01)	
	  }
   RELEASE:
	  {
	   CANCEL_WAIT 'STISK LEVEL'
	  CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1PP_RELAX_KAMEN_R01)
	  KAMEN_0RELAX_CERVEN=RED_TEMP
	  WAIT 10 'STISK LEVEL'
		{
		CALL 'VYVOLEJ_RELAX_KAMEN_RED2'(KAMEN_0RELAX_CERVEN)
		}
	  }
 
}

BUTTON_EVENT[dvMyTP_02,754]	// Cerven 1
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_R01)
	  }
  HOLD[5,REPEAT]:
	  {
		CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_R01)	
	  }
   RELEASE:
	  {
	   CANCEL_WAIT 'STISK LEVEL'
	  CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1PP_RELAX_KAMEN_R01)
	  KAMEN_0RELAX_CERVEN=RED_TEMP
	  WAIT 10 'STISK LEVEL'
		{
		CALL 'VYVOLEJ_RELAX_KAMEN_RED2'(KAMEN_0RELAX_CERVEN)
		}
	  }
 
}


BUTTON_EVENT[dvMyTP_02,755]	// Zelen 1
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_Z01)
	  }
  HOLD[5,REPEAT]:
	  {
		CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_Z01)	
	  }
   RELEASE:
	  {
	   CANCEL_WAIT 'STISK LEVEL'
	  CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1PP_RELAX_KAMEN_Z01)
	  KAMEN_0RELAX_ZELEN=GREEN_TEMP
	  WAIT 10 'STISK LEVEL'
		{
		CALL 'VYVOLEJ_RELAX_KAMEN_GREEN2'(KAMEN_0RELAX_ZELEN)
		}
	  }
 
}

BUTTON_EVENT[dvMyTP_02,756]	// Zelen 1
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_Z01)
	  }
  HOLD[5,REPEAT]:
	  {
		CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_Z01)	
	  }
   RELEASE:
	  {
	   CANCEL_WAIT 'STISK LEVEL'
	  CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1PP_RELAX_KAMEN_Z01)
	  KAMEN_0RELAX_ZELEN=GREEN_TEMP
	  WAIT 10 'STISK LEVEL'
		{
		CALL 'VYVOLEJ_RELAX_KAMEN_GREEN2'(KAMEN_0RELAX_ZELEN)
		}
	  }
 
}
BUTTON_EVENT[dvMyTP_02,757]	// Modra 1
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_M01)
	  }
  HOLD[5,REPEAT]:
	  {
		CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_KAMEN_M01)	
	  }
   RELEASE:
	  {
	   CANCEL_WAIT 'STISK LEVEL'
	  CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1PP_RELAX_KAMEN_M01)
	  KAMEN_0RELAX_MODRA=BLUE_TEMP
	  WAIT 10 'STISK LEVEL'
		{
		CALL 'VYVOLEJ_RELAX_KAMEN_BLUE2'(KAMEN_0RELAX_MODRA)
		}
	  }
 
}

BUTTON_EVENT[dvMyTP_02,758]	// Modra 1
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_M01)
	  }
  HOLD[5,REPEAT]:
	  {
		CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_KAMEN_M01)	
	  }
   RELEASE:
	  {
	   CANCEL_WAIT 'STISK LEVEL'
	  CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1PP_RELAX_KAMEN_M01)
	  KAMEN_0RELAX_MODRA=BLUE_TEMP
	  WAIT 10 'STISK LEVEL'
		{
		CALL 'VYVOLEJ_RELAX_KAMEN_BLUE2'(KAMEN_0RELAX_MODRA)
		}
	  }
 
}



BUTTON_EVENT[dvMyTP_02,799]    // refresh
{
  PUSH:
      {
        CALL 'REQUEST_CHANNELS_0NP_RELAX_ALL'
      }
}


(*
BUTTON_EVENT[dvMyTP_02,800]	// POKLOP RELAX
{
  PUSH:
  {
	CALL 'ILIGHT_CHANNEL_OFF' (PO_1PP_RELAX_01)
	WAIT 5
	CALL 'ILIGHT_CHANNEL_ON' (PO_1PP_RELAX_02)
	WAIT 600
	CALL 'ILIGHT_CHANNEL_OFF' (PO_1PP_RELAX_02)
	SEND_STRING 0,"'POKLOP 1'"   /// JENOM PRO TESTY
  }
}
BUTTON_EVENT[dvMyTP_02,801]	//POKLOP RELAX
{
  PUSH:
  {
	CALL 'ILIGHT_CHANNEL_OFF' (PO_1PP_RELAX_02)
	WAIT 5
	CALL 'ILIGHT_CHANNEL_ON' (PO_1PP_RELAX_01)
	WAIT 600
	CALL 'ILIGHT_CHANNEL_OFF' (PO_1PP_RELAX_01)
	SEND_STRING 0,"'POKLOP 2'"   /// JENOM PRO TESTY
  }
}
*)

BUTTON_EVENT[dvMyTP_02,802]	// SVETLIK RELAX CERVENA UP
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_SVETL_R01)
	  }
  HOLD[5,REPEAT]:
	  {
		CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_SVETL_R01)	
	  }
}

BUTTON_EVENT[dvMyTP_02,803]	// CERVENA DW
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_SVETL_R01)
	  }
  HOLD[5,REPEAT]:
	  {
		CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_SVETL_R01)	
	  }
}

BUTTON_EVENT[dvMyTP_02,804]	//  SVETLIK  RELAX Zelena UP
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_SVETL_G01)
	  }
  HOLD[5,REPEAT]:
	  {
		CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_SVETL_G01)	
	  }
}
BUTTON_EVENT[dvMyTP_02,805]	// ZELENA DW
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_SVETL_G01)
	  }
  HOLD[5,REPEAT]:
	  {
		CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_SVETL_G01)	
	  }
}
BUTTON_EVENT[dvMyTP_02,806]	// SVETLIK RELAX MODRA UP
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_SVETL_B01)
	  }
  HOLD[5,REPEAT]:
	  {
		CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_SVETL_B01)
	  }
}
BUTTON_EVENT[dvMyTP_02,807]	// MODRA DW
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_SVETL_B01)
	  }
  HOLD[5,REPEAT]:
	  {
		CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_SVETL_B01)
	  }
}
BUTTON_EVENT[dvMyTP_02,808]	// SVETLIK  RELAX BILA UP
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_SVETL_W01)
	  }
  HOLD[5,REPEAT]:
	  {
		CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAX_SVETL_W01)	
	  }
}
BUTTON_EVENT[dvMyTP_02,809]	// BILA DW
{
  PUSH:
	  {
		CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_SVETL_W01)
	  }
  HOLD[5,REPEAT]:
	  {
		CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAX_SVETL_W01)	
	  }
}
BUTTON_EVENT[dvMyTP_02,810]	// SVETLIK RELAX VSE OFF
{
  PUSH:
	  {
		CALL 'POWER_OFF_0NP_RELAX_SVETLIK'
	  }
}

BUTTON_EVENT[dvMyTP_02,nBTN_1PP_RELAX_SCST]		/// RELAX SCENY STENA Port 2 725-731
{
  PUSH:
  {
	STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SC[2]
	nBtnIdx = GET_LAST(nBTN_1PP_RELAX_SCST)
	SC[1] = ILT_0NP_STENA_RELAX_AREA
	SC[2] = 0
    SWITCH(nBtnIdx)
		{
		  CASE 1: {SC[2] = 1}
		  CASE 2: {SC[2] = 2}
		  CASE 3: {SC[2] = 3}
		  CASE 4: {SC[2] = 4}
		  CASE 5: {SC[2] = 5}
		  CASE 6: {SC[2] = 6}
		  CASE 7: {SC[2] = 7}
		}
	}
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SC[2]
    nBtnIdx = GET_LAST(nBTN_1PP_RELAX_SCST)
	SC[1] = ILT_0NP_STENA_RELAX_AREA
	SC[2] = 0
    SWITCH(nBtnIdx)
    {
	  CASE 1: {SC[2] = 1}
      CASE 2: {SC[2] = 2}
      CASE 3: {SC[2] = 3}
	  CASE 4: {SC[2] = 4}
      CASE 5: {SC[2] = 5}
      CASE 6: {SC[2] = 6}
	  CASE 7: {SC[2] = 7}
	}
	IF (BUTTON.HOLDTIME < 3000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 3s
			{ // VYVOLEJ SCENU
				CALL 'ILIGHT_SCENA' (SC,1)
			}
			ELSE
			{ // ULOZ SCENU
			  CALL 'ILIGHT_SAVE_SCENE' (SC)
				SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA CISLO ',ITOA(nBtnIdx)"
				SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			}
  }
}

BUTTON_EVENT[dvMyTP_02,nBTN_1PP_RELAX_SCST]		/// RELAX SCENY STENA Port 2 725-731
{
  PUSH:
  {
	STACK_VAR INTEGER nBtnIdx
	nBtnIdx = GET_LAST(nBTN_1PP_RELAX_SCST)
    SWITCH(nBtnIdx)
		{
		  CASE 1: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','ZLATOZLUTA'"}
		  CASE 2: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','RUZOVA'"}
		  CASE 3: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','TEPLA BILA'"}
		  CASE 4: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','ZELENA'"}
		  CASE 5: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','RUBINOVA'"}
		  CASE 6: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','FIALOVA'"}
		  CASE 7: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','MODRA'"}
		}
	}
}
BUTTON_EVENT[dvMyTP_02,nBTN_1PP_RELAX_SCSB]		/// RELAX SCENY STENA Port 2 725-731
{
  PUSH:
  {
	STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SC[2]
	nBtnIdx = GET_LAST(nBTN_1PP_RELAX_SCSB)
	SC[1] = ILT_0NP_STENA_RELAX_AREA
	SC[2] = 0
    SWITCH(nBtnIdx)
		{
		  CASE 1: {SC[2] = 8}
		  CASE 2: {SC[2] = 9}
		  CASE 3: {SC[2] = 10}
		  CASE 4: {SC[2] = 11}
		  CASE 5: {SC[2] = 12}
		  CASE 6: {SC[2] = 13}
		  CASE 7: {SC[2] = 14}
		}
	}
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SC[2]
    nBtnIdx = GET_LAST(nBTN_1PP_RELAX_SCSB)
	SC[1] = ILT_0NP_STENA_RELAX_AREA
	SC[2] = 0
    SWITCH(nBtnIdx)
    {
		CASE 1: {SC[2] = 8}
		CASE 2: {SC[2] = 9}
		CASE 3: {SC[2] = 10}
		CASE 4: {SC[2] = 11}
		CASE 5: {SC[2] = 12}
		CASE 6: {SC[2] = 13}
		CASE 7: {SC[2] = 14}
	}
	IF (BUTTON.HOLDTIME < 3000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 3s
			{ // VYVOLEJ SCENU
				CALL 'ILIGHT_SCENA' (SC,1)
			}
			ELSE
			{ // ULOZ SCENU
			  CALL 'ILIGHT_SAVE_SCENE' (SC)
				SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA CISLO ',ITOA(nBtnIdx)"
				SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			}
  }
}

BUTTON_EVENT[dvMyTP_02,nBTN_0NP_SV_RELAX_STENA]	/// RELAX STENA SVETLA Port 2 820-875
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SV_ARR[2]
    nBtnIdx = GET_LAST(nBTN_0NP_SV_RELAX_STENA)
	SV_ARR[1] = 255
    SWITCH(nBtnIdx)
    {
      CASE   1:
      CASE   2: SV_ARR = SV_1PP_RELAX_STENA_R01	 //821
      CASE   3: 
      CASE   4: SV_ARR = SV_1PP_RELAX_STENA_G01
      CASE   5: 
      CASE   6: SV_ARR = SV_1PP_RELAX_STENA_B01
      CASE   7: 
      CASE   8: SV_ARR = SV_1PP_RELAX_STENA_W01
      CASE   9: 
      CASE  10: SV_ARR = SV_1PP_RELAX_STENA_R02
      CASE  11: 
      CASE  12: SV_ARR = SV_1PP_RELAX_STENA_G02 
      CASE  13: 
      CASE  14: SV_ARR = SV_1PP_RELAX_STENA_B02
      CASE  15: 
      CASE  16: SV_ARR = SV_1PP_RELAX_STENA_W02
      CASE  17: 
      CASE  18: SV_ARR = SV_1PP_RELAX_STENA_R03
      CASE  19: 
      CASE  20: SV_ARR = SV_1PP_RELAX_STENA_G03
      CASE  21: 
      CASE  22: SV_ARR = SV_1PP_RELAX_STENA_B03
      CASE  23: 
      CASE  24: SV_ARR = SV_1PP_RELAX_STENA_W03
      CASE  25: 
      CASE  26: SV_ARR = SV_1PP_RELAX_STENA_R04
      CASE  27: 
      CASE  28: SV_ARR = SV_1PP_RELAX_STENA_G04
      CASE  29: 
      CASE  30: SV_ARR = SV_1PP_RELAX_STENA_B04
      CASE  31: 
      CASE  32: SV_ARR = SV_1PP_RELAX_STENA_W04
      CASE  33: 
      CASE  34: SV_ARR = SV_1PP_RELAX_STENA_R05
      CASE  35: 
      CASE  36: SV_ARR = SV_1PP_RELAX_STENA_G05
      CASE  37: 
      CASE  38: SV_ARR = SV_1PP_RELAX_STENA_B05
      CASE  39: 
      CASE  40: SV_ARR = SV_1PP_RELAX_STENA_W05
      CASE  41: 
      CASE  42: SV_ARR = SV_1PP_RELAX_STENA_R06
      CASE  43: 
      CASE  44: SV_ARR = SV_1PP_RELAX_STENA_G06
      CASE  45: 
      CASE  46: SV_ARR = SV_1PP_RELAX_STENA_B06
      CASE  47: 
      CASE  48: SV_ARR = SV_1PP_RELAX_STENA_W06
      CASE  49: 
      CASE  50: SV_ARR = SV_1PP_RELAX_STENA_R07
      CASE  51: 
      CASE  52: SV_ARR = SV_1PP_RELAX_STENA_G07
      CASE  53: 
      CASE  54: SV_ARR = SV_1PP_RELAX_STENA_B07
      CASE  55: 
      CASE  56: SV_ARR = SV_1PP_RELAX_STENA_W07
    }
	IF (SV_ARR[1]<>255)
			{
			  tmpARCH = SV_ARR // DULEZITE, PROTOZE V CALL JE WAIT 5 !!!
				IF ((nBtnIdx MOD 2)>0) // LICHE CISLO - UP
				  CALL 'ILIGHT_CHANNEL_RAISE' (tmpARCH)
				ELSE // ((nBtnIdx MOD 2)=0) // SUDE CISLO - DOWN
				  CALL 'ILIGHT_CHANNEL_LOWER' (tmpARCH)
			}
  }
  HOLD[5,REPEAT]:
  {
    STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SV_ARR[2]
    nBtnIdx = GET_LAST(nBTN_0NP_SV_RELAX_STENA)
	SV_ARR[1] = 255
    SWITCH(nBtnIdx)
    {
      CASE   1:
      CASE   2: SV_ARR = SV_1PP_RELAX_STENA_R01	 //821
      CASE   3: 
      CASE   4: SV_ARR = SV_1PP_RELAX_STENA_G01
      CASE   5: 
      CASE   6: SV_ARR = SV_1PP_RELAX_STENA_B01
      CASE   7: 
      CASE   8: SV_ARR = SV_1PP_RELAX_STENA_W01
      CASE   9: 
      CASE  10: SV_ARR = SV_1PP_RELAX_STENA_R02
      CASE  11: 
      CASE  12: SV_ARR = SV_1PP_RELAX_STENA_G02 
      CASE  13: 
      CASE  14: SV_ARR = SV_1PP_RELAX_STENA_B02
      CASE  15: 
      CASE  16: SV_ARR = SV_1PP_RELAX_STENA_W02
      CASE  17: 
      CASE  18: SV_ARR = SV_1PP_RELAX_STENA_R03
      CASE  19: 
      CASE  20: SV_ARR = SV_1PP_RELAX_STENA_G03
      CASE  21: 
      CASE  22: SV_ARR = SV_1PP_RELAX_STENA_B03
      CASE  23: 
      CASE  24: SV_ARR = SV_1PP_RELAX_STENA_W03
      CASE  25: 
      CASE  26: SV_ARR = SV_1PP_RELAX_STENA_R04
      CASE  27: 
      CASE  28: SV_ARR = SV_1PP_RELAX_STENA_G04
      CASE  29: 
      CASE  30: SV_ARR = SV_1PP_RELAX_STENA_B04
      CASE  31: 
      CASE  32: SV_ARR = SV_1PP_RELAX_STENA_W04
      CASE  33: 
      CASE  34: SV_ARR = SV_1PP_RELAX_STENA_R05
      CASE  35: 
      CASE  36: SV_ARR = SV_1PP_RELAX_STENA_G05
      CASE  37: 
      CASE  38: SV_ARR = SV_1PP_RELAX_STENA_B05
      CASE  39: 
      CASE  40: SV_ARR = SV_1PP_RELAX_STENA_W05
      CASE  41: 
      CASE  42: SV_ARR = SV_1PP_RELAX_STENA_R06
      CASE  43: 
      CASE  44: SV_ARR = SV_1PP_RELAX_STENA_G06
      CASE  45: 
      CASE  46: SV_ARR = SV_1PP_RELAX_STENA_B06
      CASE  47: 
      CASE  48: SV_ARR = SV_1PP_RELAX_STENA_W06
      CASE  49: 
      CASE  50: SV_ARR = SV_1PP_RELAX_STENA_R07
      CASE  51: 
      CASE  52: SV_ARR = SV_1PP_RELAX_STENA_G07
      CASE  53: 
      CASE  54: SV_ARR = SV_1PP_RELAX_STENA_B07
      CASE  55: 
      CASE  56: SV_ARR = SV_1PP_RELAX_STENA_W07
    }
	IF (SV_ARR[1]<>255)
			{
			  tmpARCH = SV_ARR // DULEZITE, PROTOZE V CALL JE WAIT 5 !!!
				IF ((nBtnIdx MOD 2)>0) // LICHE CISLO - UP
				  CALL 'ILIGHT_CHANNEL_RAISE' (tmpARCH)
				ELSE // ((nBtnIdx MOD 2)=0) // SUDE CISLO - DOWN
				  CALL 'ILIGHT_CHANNEL_LOWER' (tmpARCH)
			}
  }
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SV_ARR[2]
    nBtnIdx = GET_LAST(nBTN_0NP_SV_RELAX_STENA)
	SV_ARR[1] = 255
    SWITCH(nBtnIdx)
    {
      CASE   1:
      CASE   2: SV_ARR = SV_1PP_RELAX_STENA_R01	 //821
      CASE   3: 
      CASE   4: SV_ARR = SV_1PP_RELAX_STENA_G01
      CASE   5: 
      CASE   6: SV_ARR = SV_1PP_RELAX_STENA_B01
      CASE   7: 
      CASE   8: SV_ARR = SV_1PP_RELAX_STENA_W01
      CASE   9: 
      CASE  10: SV_ARR = SV_1PP_RELAX_STENA_R02
      CASE  11: 
      CASE  12: SV_ARR = SV_1PP_RELAX_STENA_G02 
      CASE  13: 
      CASE  14: SV_ARR = SV_1PP_RELAX_STENA_B02
      CASE  15: 
      CASE  16: SV_ARR = SV_1PP_RELAX_STENA_W02
      CASE  17: 
      CASE  18: SV_ARR = SV_1PP_RELAX_STENA_R03
      CASE  19: 
      CASE  20: SV_ARR = SV_1PP_RELAX_STENA_G03
      CASE  21: 
      CASE  22: SV_ARR = SV_1PP_RELAX_STENA_B03
      CASE  23: 
      CASE  24: SV_ARR = SV_1PP_RELAX_STENA_W03
      CASE  25: 
      CASE  26: SV_ARR = SV_1PP_RELAX_STENA_R04
      CASE  27: 
      CASE  28: SV_ARR = SV_1PP_RELAX_STENA_G04
      CASE  29: 
      CASE  30: SV_ARR = SV_1PP_RELAX_STENA_B04
      CASE  31: 
      CASE  32: SV_ARR = SV_1PP_RELAX_STENA_W04
      CASE  33: 
      CASE  34: SV_ARR = SV_1PP_RELAX_STENA_R05
      CASE  35: 
      CASE  36: SV_ARR = SV_1PP_RELAX_STENA_G05
      CASE  37: 
      CASE  38: SV_ARR = SV_1PP_RELAX_STENA_B05
      CASE  39: 
      CASE  40: SV_ARR = SV_1PP_RELAX_STENA_W05
      CASE  41: 
      CASE  42: SV_ARR = SV_1PP_RELAX_STENA_R06
      CASE  43: 
      CASE  44: SV_ARR = SV_1PP_RELAX_STENA_G06
      CASE  45: 
      CASE  46: SV_ARR = SV_1PP_RELAX_STENA_B06
      CASE  47: 
      CASE  48: SV_ARR = SV_1PP_RELAX_STENA_W06
      CASE  49: 
      CASE  50: SV_ARR = SV_1PP_RELAX_STENA_R07
      CASE  51: 
      CASE  52: SV_ARR = SV_1PP_RELAX_STENA_G07
      CASE  53: 
      CASE  54: SV_ARR = SV_1PP_RELAX_STENA_B07
      CASE  55: 
      CASE  56: SV_ARR = SV_1PP_RELAX_STENA_W07
    }
	IF (SV_ARR[1]<>255)
		  CALL 'ILIGHT_CHANNEL_REQUEST' (SV_ARR)
  }
}

BUTTON_EVENT[dvMyTP_02,732]									/// RELAX st1 off
BUTTON_EVENT[dvMyTP_02,733]									/// RELAX st1 refresh
BUTTON_EVENT[dvMyTP_02,734]									/// RELAX 
BUTTON_EVENT[dvMyTP_02,735]									/// RELAX 
BUTTON_EVENT[dvMyTP_02,736]									/// RELAX st3 off
BUTTON_EVENT[dvMyTP_02,737]									/// RELAX st3 refresh
BUTTON_EVENT[dvMyTP_02,738]									/// RELAX 
BUTTON_EVENT[dvMyTP_02,739]									/// RELAX 
BUTTON_EVENT[dvMyTP_02,740]									/// RELAX st5 off
BUTTON_EVENT[dvMyTP_02,741]									/// RELAX st5 refresh
BUTTON_EVENT[dvMyTP_02,742]									/// RELAX 
BUTTON_EVENT[dvMyTP_02,743]									/// RELAX 
BUTTON_EVENT[dvMyTP_02,744]									/// RELAX st7 off
BUTTON_EVENT[dvMyTP_02,745]									/// RELAX st7 refresh
{
	 PUSH:
		{
		SWITCH(BUTTON.INPUT.CHANNEL)
		  {
			CASE 732:{
						CALL 'POWER_OFF_0NP_RELAX_STENA1'
						}
			CASE 733:{
						CALL 'REQUEST_CHANNELS_0NP_RELAX_STENA1'
						}
			CASE 734:{
						CALL 'POWER_OFF_0NP_RELAX_STENA2'
						}
			CASE 735:{
						CALL 'REQUEST_CHANNELS_0NP_RELAX_STENA2'
						}
			CASE 736:{
						CALL 'POWER_OFF_0NP_RELAX_STENA3'
						}
			CASE 737:{
						CALL 'REQUEST_CHANNELS_0NP_RELAX_STENA3'
						}
			CASE 738:{
						CALL 'POWER_OFF_0NP_RELAX_STENA4'
						}
			CASE 739:{
						CALL 'REQUEST_CHANNELS_0NP_RELAX_STENA4'
						}
			CASE 740:{
						CALL 'POWER_OFF_0NP_RELAX_STENA5'
						}
			CASE 741:{
						CALL 'REQUEST_CHANNELS_0NP_RELAX_STENA5'
						}
			CASE 742:{
						CALL 'POWER_OFF_0NP_RELAX_STENA6'
						}
			CASE 743:{
						CALL 'REQUEST_CHANNELS_0NP_RELAX_STENA6'
						}
			CASE 744:{
						CALL 'POWER_OFF_0NP_RELAX_STENA7'
						}
			CASE 745:{
						CALL 'REQUEST_CHANNELS_0NP_RELAX_STENA7'
						}
			}
		}
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



BUTTON_EVENT[dvMyTP_02,nBTN_0NP_SV_RELAX_DVORKY]  /// DVORKY OVLADANI 760 - 778
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_0NP_SV_RELAX_DVORKY)
    SWITCH(nBtnIdx)
    {
      CASE   1: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_ANG_DVORKY_02)}
      CASE   2: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_ANG_DVORKY_02)}
      CASE   3: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_ANG_DVORKY_03)}
      CASE   4: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_ANG_DVORKY_03)}
      CASE   5: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_ANG_DVORKY_04)}
      CASE   6: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_ANG_DVORKY_04)}
      CASE   7: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_ANG_DVORKY_01)}
      CASE   8: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_ANG_DVORKY_01)}
    }
  }
  HOLD[5,REPEAT]:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_0NP_SV_RELAX_DVORKY)
    SWITCH(nBtnIdx)
    {
      CASE   1: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_1PP_ANG_DVORKY_02)}
      CASE   2: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_1PP_ANG_DVORKY_02)}
      CASE   3: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_1PP_ANG_DVORKY_03)}
      CASE   4: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_1PP_ANG_DVORKY_03)}
      CASE   5: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_1PP_ANG_DVORKY_04)}
      CASE   6: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_1PP_ANG_DVORKY_04)}
      CASE   7: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_1PP_ANG_DVORKY_01)}
      CASE   8: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_1PP_ANG_DVORKY_01)} //767
      CASE   9: {}
      CASE  10: {}
      CASE  11: {}	//770
      CASE  12: {}
      CASE  13: {}
      CASE  14: {}
      CASE  15: {}
      CASE  16: {}
      CASE  17: {}
      CASE  18: {
				CALL 'ILIGHT_CHANNEL_OFF' (SV_1PP_ANG_DVORKY_01)
				CALL 'ILIGHT_CHANNEL_OFF' (SV_1PP_ANG_DVORKY_02)
				CALL 'ILIGHT_CHANNEL_OFF' (SV_1PP_ANG_DVORKY_03)
				CALL 'ILIGHT_CHANNEL_OFF' (SV_1PP_ANG_DVORKY_04)
				}
      CASE  19: {CALL 'REQUEST_CHANNELS_0NP_RELAX_DVORKY'}
    }
  }
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_0NP_SV_RELAX_DVORKY)
    SWITCH(nBtnIdx)
    {
      CASE   1: {}
      CASE   2: {}
      CASE   3: {}
      CASE   4: {}
      CASE   5: {}
      CASE   6: {}
      CASE   7: {}
      CASE   8: {}
      CASE   9: {}
      CASE  10: {}
      CASE  11: {}
      CASE  12: {}
      CASE  13: {}
      CASE  14: {}
      CASE  15: {}
      CASE  16: {}
      CASE  17: {}
      CASE  18: {}
      CASE  19: {}
    }
	WAIT 10
	CALL 'REQUEST_CHANNELS_0NP_RELAX_DVORKY'
	WAIT 30
	CALL 'ILIGHT_SCENA_REQUEST' (ILT_0NP_RELAX_DVORKY_AREA)
  }
}

BUTTON_EVENT[dvMyTP_02,nBTN_0NP_SV_SCENY_DVORKY]		/// DVORKY SCENY  Port 2 770-776 783
{
  PUSH:
  {
	STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SC[2]
	nBtnIdx = GET_LAST(nBTN_0NP_SV_SCENY_DVORKY)
	SC[1] = ILT_0NP_RELAX_DVORKY_AREA
	//SC[2] = 0
    SWITCH(nBtnIdx)
		{
		  //CASE 1: {SC[2] = 1}
		  //CASE 2: {SC[2] = 2}
		  //CASE 3: {SC[2] = 3}
		  //CASE 4: {SC[2] = 4}
		  //CASE 5: {SC[2] = 5}
		  //CASE 6: {SC[2] = 6}
		  //CASE 7: {SC[2] = 7}
		  CASE 1: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','ZLATOZLUTA'"}
		  CASE 2: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','RUZOVA'"}
		  CASE 3: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','TEPLA BILA'"}
		  CASE 4: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','ZELENA'"}
		  CASE 5: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','RUBINOVA'"}
		  CASE 6: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','FIALOVA'"}
		  CASE 7: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','MODRA'"}
		  CASE 8: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','ZLATOZLUTA'"}
		  CASE 9: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','RUZOVA'"}
		  CASE 10: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','TEPLA BILA'"}
		  CASE 11: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','ZELENA'"}
		  CASE 12: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','RUBINOVA'"}
		  CASE 13: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','FIALOVA'"}
		  CASE 14: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','MODRA'"}
		}
	}
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SC[2]
    nBtnIdx = GET_LAST(nBTN_0NP_SV_SCENY_DVORKY)
	SC[1] = ILT_0NP_RELAX_DVORKY_AREA
	SC[2] = 0
    SWITCH(nBtnIdx)
    {
	  CASE 1: {SC[2] = 1}
	  CASE 2: {SC[2] = 2}
	  CASE 3: {SC[2] = 3}
	  CASE 4: {SC[2] = 4}
	  CASE 5: {SC[2] = 5}
	  CASE 6: {SC[2] = 6}
	  CASE 7: {SC[2] = 7}
	  CASE 8: {SC[2] = 8}
	  CASE 9: {SC[2] = 9}
	  CASE 10: {SC[2] = 10}
	  CASE 11: {SC[2] = 11}
	  CASE 12: {SC[2] = 12}
	  CASE 13: {SC[2] = 13}
	  CASE 14: {SC[2] = 14}
	}
	IF (BUTTON.HOLDTIME < 3000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 3s
			{ // VYVOLEJ SCENU
				CALL 'ILIGHT_SCENA' (SC,1)
				WAIT 10
				CALL 'ILIGHT_SCENA_REQUEST' (ILT_0NP_RELAX_DVORKY_AREA)
			}
			ELSE
			{ // ULOZ SCENU
			  CALL 'ILIGHT_SAVE_SCENE' (SC)
				SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA CISLO ',ITOA(nBtnIdx)"
				SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			}
  }
}

BUTTON_EVENT[dvMyTP_02,nBTN_SCENY_0NP_KOUP]
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    STACK_VAR CHAR SC[2]
	nBtnIdx = GET_LAST(nBTN_SCENY_0NP_KOUP)
	SC[1] = ILT_0NP_RELAX_KOUPELNA_AREA
    SWITCH(nBtnIdx)
		 {
		  CASE 1: {SC[2] = 11}
		  CASE 2: {SC[2] = 12}
		  CASE 3: {SC[2] = 13}
		  CASE 4: {SC[2] = 14}
		  CASE 5: {SC[2] = 15}
		  CASE 6: {SC[2] = 16}
		  CASE 7: {SC[2] = 17}
		}
	}
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
    STACK_VAR CHAR SC[2]
	nBtnIdx = GET_LAST(nBTN_SCENY_0NP_KOUP)
	SC[1] = ILT_0NP_RELAX_KOUPELNA_AREA
    SWITCH(nBtnIdx)
     {
	  CASE 1: {SC[2] = 11}
	  CASE 2: {SC[2] = 12}
	  CASE 3: {SC[2] = 13}
	  CASE 4: {SC[2] = 14}
	  CASE 5: {SC[2] = 15}
	  CASE 6: {SC[2] = 16}
	  CASE 7: {SC[2] = 17}
	}
	IF (BUTTON.HOLDTIME < 3000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 3s
			{ // VYVOLEJ SCENU
				CALL 'ILIGHT_SCENA' (SC,1)
			}
			ELSE
			{ // ULOZ SCENU
			  CALL 'ILIGHT_SAVE_SCENE' (SC)
				SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA CISLO ',ITOA(nBtnIdx)"
				SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			}
  }
}

BUTTON_EVENT[dvMyTP_02,nBTN_SCENY_0NP_SPRCHA]
{
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
	 STACK_VAR CHAR SC[2]
    nBtnIdx = GET_LAST(nBTN_SCENY_0NP_SPRCHA)
	SC[1] = ILT_0NP_RELAX_KOUPELNA_AREA
    SWITCH(nBtnIdx)
    {
	  CASE 1: {SC[2] = 11}
	  CASE 2: {SC[2] = 12}
	  CASE 3: {SC[2] = 13}
	  CASE 4: {SC[2] = 14}
	  CASE 5: {SC[2] = 15}
	  CASE 6: {SC[2] = 16}
	  CASE 7: {SC[2] = 17}
	}
	IF (BUTTON.HOLDTIME < 3000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 3s
			{ // VYVOLEJ SCENU
				CALL 'ILIGHT_SCENA' (SC,1)
			}
			ELSE
			{ // ULOZ SCENU
			  CALL 'ILIGHT_SAVE_SCENE' (SC)
				SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA CISLO ',ITOA(nBtnIdx)"
				SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			}
  }
}

BUTTON_EVENT[dvMyTP_02,nBTN_SV_0NP_MANDALA]   ///MANDALA Port2 890-899
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_SV_0NP_MANDALA)
    SWITCH(nBtnIdx)
    {
      CASE   1: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAM_02)}
      CASE   2: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAM_02)}
      CASE   3: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAM_03)}
      CASE   4: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAM_03)}
      CASE   5: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAM_04)}
      CASE   6: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAM_04)}
      CASE   7: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_RELAM_01)}
      CASE   8: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_RELAM_01)}
      CASE   9: {CALL 'POWER_OFF_0NP_MANDALA'}
      CASE  10: {CALL 'REQUEST_CHANNELS_0NP_MANDALA'}
    }
  }
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_SV_0NP_MANDALA)
    SWITCH(nBtnIdx)
    {
      CASE   1: {}
      CASE   2: {}
      CASE   3: {}
      CASE   4: {}
      CASE   5: {}
      CASE   6: {}
      CASE   7: {}
      CASE   8: {}
      CASE   9: {}
      CASE  10: {}
    }
  }
}

////// nepouzito JE SPOLECNA S RAMPOU //////////////
BUTTON_EVENT[dvMyTP_02,nBTN_SC_0NP_MANDALA]
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_SC_0NP_MANDALA)
    SWITCH(nBtnIdx)
    {
      CASE   1: {}
      CASE   2: {}
      CASE   3: {}
      CASE   4: {}
      CASE   5: {}
      CASE   6: {}
      CASE   7: {}
      CASE   8: {}
      CASE   9: {}
      CASE  10: {}
      CASE  11: {}
      CASE  12: {}
      CASE  13: {}
      CASE  14: {}
      CASE  15: {}
    }
  }
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_SC_0NP_MANDALA)
    SWITCH(nBtnIdx)
    {
      CASE   1: {}
      CASE   2: {}
      CASE   3: {}
      CASE   4: {}
      CASE   5: {}
      CASE   6: {}
      CASE   7: {}
      CASE   8: {}
      CASE   9: {}
      CASE  10: {}
      CASE  11: {}
      CASE  12: {}
      CASE  13: {}
      CASE  14: {}
      CASE  15: {}
    }
  }
}

BUTTON_EVENT[dvMyTP_02,784]									/// RELAX dvorky OFF
BUTTON_EVENT[dvMyTP_02,785]									/// RELAX dvorky refresh
{
	 PUSH:
		{
		SWITCH(BUTTON.INPUT.CHANNEL)
		  {
			CASE  784: {
					CALL 'POWER_OFF_0NP_ANG_DVORKY'
					WAIT 30
					CALL 'ILIGHT_SCENA_REQUEST' (ILT_0NP_RELAX_DVORKY_AREA)
					}
			CASE  785: {
						CALL 'REQUEST_CHANNELS_0NP_RELAX_DVORKY'
						WAIT 30
						CALL 'ILIGHT_SCENA_REQUEST' (ILT_0NP_RELAX_DVORKY_AREA)
						}
			}
		}
}
BUTTON_EVENT[dvMyTP_02,920]									// RELAX RGB Refresh
{
	PUSH:
		  {
		  CALL 'REQUEST_CHANNELS_1PP_RELAX_RGB_ALL'
		  }
}
BUTTON_EVENT[dvMyTP_02,nBTN_SV_RELAX_RGB1]			/// 1PP RELAX RGB1	SVETLA RGB V RELAXU
{
	PUSH:
		{
		STACK_VAR INTEGER nBtnIdx
		STACK_VAR CHAR SC[2]
		nBtnIdx = GET_LAST(nBTN_SV_RELAX_RGB1)
		SC[1] = ILT_0NP_RELAX_RGB_AREA
		SWITCH(nBtnIdx)
			{
			  CASE    1: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_R01)}		//1300
			  CASE    2: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_R01)}
			  CASE    3: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_R01,00,0)} 
			  CASE    4: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_G01)}		//1303
			  CASE    5: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_G01)}
			  CASE    6: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_G01,00,0)} 
			  CASE    7: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_B01)}		//
			  CASE    8: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_B01)}
			  CASE    9: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_B01,00,0)} 
			  CASE    10: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_W01)}		//
			  CASE    11: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_W01)}
			  CASE    12: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_W01,00,0)} 
			  CASE    13: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_C01)}		//
			  CASE    14: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_C01)}
			  CASE    15: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_C01,00,0)} 
				(*
			  CASE    16: {	SC[2] = 30					/// SCENA NA ILIGHT PRO RGB 	//1315	
							CALL 'ILIGHT_SCENA' (SC,1)							
							}							
			  CASE    17: {	SC[2] = 30								/// SCENA NA ILIGHT PRO RGB 
							CALL 'ILIGHT_SAVE_SCENE' (SC)}	
				*)
			  CASE    18: {CALL 'REQUEST_CHANNELS_1PP_RELAX_RGB1'} 		//1317
			  
			  (*
			  // Predelam na RGB Sceny tohle je spatne
			  CASE    19: {	SC[2] = 31								//1318	/// SCENA NA ILIGHT PRO RGB 
							CALL 'ILIGHT_SCENA' (SC,1)							
							}	
			   
			  CASE    20: { SC[2] = 31								/// SCENA NA ILIGHT PRO RGB 
							CALL 'ILIGHT_SAVE_SCENE' (SC)}	
						
			 *)
			  CASE    21: {} 											//1320
			  CASE    22: {CALL 'POWER_OFF_0NP_RELAX_RGB_ALL'} 		//1321  - ALL OFF
			}
			CANCEL_WAIT 'KILL RGB'
		}
	HOLD[2,REPEAT]:
		{
		STACK_VAR INTEGER nBtnIdx
		nBtnIdx = GET_LAST(nBTN_SV_RELAX_RGB1)
		SWITCH(nBtnIdx)
			{
			CASE  1: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_RELAX_1PP_RGB_R01)}			
			CASE  2: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_RELAX_1PP_RGB_R01)}
			CASE  4: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_RELAX_1PP_RGB_G01)}			
			CASE  5: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_RELAX_1PP_RGB_G01)}
			CASE  7: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_RELAX_1PP_RGB_B01)}			
			CASE  8: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_RELAX_1PP_RGB_B01)}
			CASE  10: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_RELAX_1PP_RGB_W01)}			
			CASE  11: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_RELAX_1PP_RGB_W01)}
			CASE  13: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_RELAX_1PP_RGB_C01)}			
			CASE  14: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_RELAX_1PP_RGB_C01)}
			}
		}
	RELEASE:
		{
		WAIT 20
		CALL 'REQUEST_CHANNELS_1PP_RELAX_RGB1'
		}
	
}

BUTTON_EVENT[dvMyTP_02,1315]									// RELAX RGB1 Pevne Sceny
    {
    RELEASE:
	{
	IF (BUTTON.HOLDTIME < 3000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 3s
		    { // VYVOLEJ SCENU // FORMAT JE KANAL, PERSIST
			//CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_10, OB_KAMEN_STRED_2C)
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_W01, RELAX_0NP_OBRAZ_WHITE_1A)
			WAIT 2
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_C01, RELAX_0NP_OBRAZ_COLD_1A)
			WAIT 4
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_R01, RELAX_0NP_OBRAZ_RED_1A)
			WAIT 6
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_G01, RELAX_0NP_OBRAZ_GREEN_1A)
			WAIT 8
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_B01, RELAX_0NP_OBRAZ_BLUE_1A)
			SEND_STRING 0,"'BYLA spustena SVETELNA SCENA RGB1 CISLO 1 '"
		    }
	ELSE
		    { // ULOZ SCENU
		    nVSTUP = SCENA_RELAX_OBRAZ_W1A
		    UKLADANI_ACTIVE=TRUE
		    CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_W01)
		    SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
		    WAIT 8
			{
			nVSTUP = SCENA_RELAX_OBRAZ_C1A
			UKLADANI_ACTIVE=TRUE
			CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_C01)
			WAIT 8
			    {
			    nVSTUP = SCENA_RELAX_OBRAZ_R1A
			    UKLADANI_ACTIVE=TRUE
			    CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_R01)
			    WAIT 8
				{
				nVSTUP = SCENA_RELAX_OBRAZ_G1A
				UKLADANI_ACTIVE=TRUE
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_G01)
				WAIT 8
				    {
				    nVSTUP = SCENA_RELAX_OBRAZ_B1A
				    UKLADANI_ACTIVE=TRUE
				    CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_B01)
				    WAIT 2
				    SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA RGB1 CISLO 1 '"
				    WAIT 60
					    {
					    UKLADANI_ACTIVE=FALSE
					    }
				    }
				}
			    }
			}
		    }
		  
	}
    }

BUTTON_EVENT[dvMyTP_02,1316]									// RELAX RGB1 Pevne Sceny
    {
    RELEASE:
	{
	IF (BUTTON.HOLDTIME < 3000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
			{ // VYVOLEJ SCENU // FORMAT JE KANAL, ULOZENY PERSIST
			//CALL 'VYVOLEJ_PERSIST_LEVEL' (channel, ulozena hodnota)
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_W01, RELAX_0NP_OBRAZ_WHITE_1B)
			WAIT 2
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_C01, RELAX_0NP_OBRAZ_COLD_1B)
			WAIT 4
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_R01, RELAX_0NP_OBRAZ_RED_1B)
			WAIT 6
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_G01, RELAX_0NP_OBRAZ_GREEN_1B)
			WAIT 8
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_B01, RELAX_0NP_OBRAZ_BLUE_1B)
			}
			ELSE
			{ // ULOZ SCENU
			nVSTUP = SCENA_RELAX_OBRAZ_W1B
			UKLADANI_ACTIVE=TRUE
			CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_W01)
			SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			WAIT 8
			    {
			    nVSTUP = SCENA_RELAX_OBRAZ_C1B
			    UKLADANI_ACTIVE=TRUE
			    CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_C01)
			    WAIT 8
				{
				nVSTUP = SCENA_RELAX_OBRAZ_R1B
				UKLADANI_ACTIVE=TRUE
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_R01)
				WAIT 8
				    {
				    nVSTUP = SCENA_RELAX_OBRAZ_G1B
				    UKLADANI_ACTIVE=TRUE
				    CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_G01)
				    WAIT 8
					{
					nVSTUP = SCENA_RELAX_OBRAZ_B1B
					UKLADANI_ACTIVE=TRUE
					CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_B01)
					SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA RGB1 CISLO 2 '"
					WAIT 60
					    {
					    UKLADANI_ACTIVE=FALSE
					    }
					}
				    }
				}
			    }
			}
		  
	}
    }

BUTTON_EVENT[dvMyTP_02,1318]							// RELAX RGB Tady budu poustet RGB prechody
BUTTON_EVENT[dvMyTP_02,1319]
BUTTON_EVENT[dvMyTP_02,1320]
{
PUSH:
    {
    SWITCH(BUTTON.INPUT.CHANNEL)
	{
	CASE 1318: 
	    {
		SEND_COMMAND dvMyTP_01,"'^TXT-637,0,RGB 1'"  
	    RELAX_1PP_RGB_TIMER_ACTIVE=TRUE 
	    RELAX_1PP_RGB_01B_ACTIVE = FALSE
	    RELAX_1PP_RGB_01A_ACTIVE = TRUE	/// Aktivni sekvence		
	    CALL 'RELAX_1PP_RGB_TIMER' (240)
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_W01, RELAX_0NP_OBRAZ_WHITE_1B)
		WAIT 2
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_C01, RELAX_0NP_OBRAZ_COLD_1B)
		WAIT 4
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_R01, RELAX_0NP_OBRAZ_RED_1B)
		WAIT 6
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_G01, RELAX_0NP_OBRAZ_GREEN_1B)
		WAIT 8
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_B01, RELAX_0NP_OBRAZ_BLUE_1B)
	    }
	CASE 1319:
	    {
		SEND_COMMAND dvMyTP_01,"'^TXT-637,0,RGB 2'"
	    RELAX_1PP_RGB_TIMER_ACTIVE=TRUE
	    RELAX_1PP_RGB_01A_ACTIVE = FALSE
	    RELAX_1PP_RGB_01B_ACTIVE = TRUE	/// Aktivni sekvence		
		CALL 'RELAX_1PP_RGB_TIMER_DOUBLE' 
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_W01, RELAX_0NP_OBRAZ_WHITE_1B)
		WAIT 2
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_C01, RELAX_0NP_OBRAZ_COLD_1B)
		WAIT 4
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_R01, RELAX_0NP_OBRAZ_RED_1B)
		WAIT 6
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_G01, RELAX_0NP_OBRAZ_GREEN_1B)
		WAIT 8
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_B01, RELAX_0NP_OBRAZ_BLUE_1B)
	    }
	CASE 1320: 
	    {
	    RELAX_1PP_RGB_TIMER_ACTIVE=FALSE
	    RELAX_1PP_RGB_01A_ACTIVE = FALSE
	    RELAX_1PP_RGB_01B_ACTIVE = FALSE
	    CALL 'RELAX_1PP_RGB_TIMER_STOP' 
		SEND_COMMAND dvMyTP_01,"'^TXT-637,0,RGB OFF'"
	    }
	}
    }
}

BUTTON_EVENT[dvMyTP_02,nBTN_SV_RELAX_RGB2]			/// 1PP RELAX RGB2	SVETLA RGB V RELAXU
{
	PUSH:
		{
		STACK_VAR INTEGER nBtnIdx
		STACK_VAR CHAR SC[2]
		nBtnIdx = GET_LAST(nBTN_SV_RELAX_RGB2)
		SC[1] = ILT_0NP_RELAX_RGB_AREA
		SWITCH(nBtnIdx)
			{
			CASE    1: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_R02)}		//
			CASE    2: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_R02)}
			CASE    3: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_R02,00,0)}
			CASE    4: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_G02)}		//
			CASE    5: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_G02)}
			CASE    6: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_G02,00,0)}
			CASE    7: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_B02)}		//
			CASE    8: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_B02)}
			CASE    9: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_B02,00,0)}
			CASE    10: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_W02)}		//
			CASE    11: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_W02)}
			CASE    12: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_W02,00,0)}
			CASE    13: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_C02)}		//
			CASE    14: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_C02)}
			CASE    15: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_C02,00,0)}
			CASE    21: {
				    RELAX_1PP_RGB_TIMER_ACTIVE=FALSE
				    RELAX_1PP_RGB_01A_ACTIVE=FALSE
				    RELAX_1PP_RGB_01B_ACTIVE=FALSE
				    CALL 'SEKVENCE_RELAX_1PP_RGB_SVETLA_ZHASNOUT'
				    }	
			CASE    22: {
				    RELAX_1PP_RGB_TIMER_ACTIVE=FALSE
				    RELAX_1PP_RGB_01A_ACTIVE=FALSE
				    RELAX_1PP_RGB_01B_ACTIVE=FALSE
				    RELAX_1PP_RGB_02A_ACTIVE = FALSE
				    RELAX_1PP_RGB_02B_ACTIVE = FALSE
				    RELAX_1PP_RGB_03A_ACTIVE = FALSE
				    RELAX_1PP_RGB_03B_ACTIVE = FALSE
				    RELAX_1PP_RGB_04A_ACTIVE = FALSE
				    RELAX_1PP_RGB_04B_ACTIVE = FALSE
				    CALL 'SEKVENCE_RELAX_1PP_RGB_SVETLA_ZHASNOUT'
				    }	
			 (*
			  CASE    16: {	SC[2] = 32								/// SCENA NA ILIGHT PRO RGB 
							CALL 'ILIGHT_SCENA' (SC,1)							//1315	
							}							
			  CASE    17: {	SC[2] = 32								/// SCENA NA ILIGHT PRO RGB 
							CALL 'ILIGHT_SAVE_SCENE' (SC)}	
			
			  CASE    18: {CALL 'REQUEST_CHANNELS_1PP_RELAX_RGB1'} 		//1317
			  
			  CASE    19: {	SC[2] = 33								//1318	/// SCENA NA ILIGHT PRO RGB 
							CALL 'ILIGHT_SCENA' (SC,1)							
							}	
						
			  
			  CASE    21: {} 											//1320
			  CASE    22: {CALL 'POWER_OFF_0NP_RELAX_RGB_ALL'} 		//1321  - ALL OFF
			   *)
			}
			CANCEL_WAIT 'KILL RGB'
		}
	HOLD[2,REPEAT]:
		{
		STACK_VAR INTEGER nBtnIdx
		nBtnIdx = GET_LAST(nBTN_SV_RELAX_RGB2)
		SWITCH(nBtnIdx)
			{
			CASE  1: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_RELAX_1PP_RGB_R02)}
			CASE  2: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_RELAX_1PP_RGB_R02)}
			CASE  4: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_RELAX_1PP_RGB_G02)}
			CASE  5: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_RELAX_1PP_RGB_G02)}
			CASE  7: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_RELAX_1PP_RGB_B02)}
			CASE  8: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_RELAX_1PP_RGB_B02)}
			CASE  10: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_RELAX_1PP_RGB_W02)}
			CASE  11: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_RELAX_1PP_RGB_W02)}
			CASE  13: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_RELAX_1PP_RGB_C02)}
			CASE  14: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_RELAX_1PP_RGB_C02)}
			}
		}
	RELEASE:
		{
		WAIT 20
		CALL 'REQUEST_CHANNELS_1PP_RELAX_RGB2'
		}
}



BUTTON_EVENT[dvMyTP_02,1340]									// RELAX RGB2 Pevne Sceny
    {
    RELEASE:
	{
	IF (BUTTON.HOLDTIME < 3000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 3s
			{ // VYVOLEJ SCENU // FORMAT JE KANAL, PERSIST
			//CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_10, OB_KAMEN_STRED_2C)
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_W02, RELAX_0NP_OBRAZ_WHITE_2A)
			WAIT 2
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_C02, RELAX_0NP_OBRAZ_COLD_2A)
			WAIT 4
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_R02, RELAX_0NP_OBRAZ_RED_2A)
			WAIT 6
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_G02, RELAX_0NP_OBRAZ_GREEN_2A)
			WAIT 8
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_B02, RELAX_0NP_OBRAZ_BLUE_2A)
			
			}
			ELSE
			{ // ULOZ SCENU
			nVSTUP = SCENA_RELAX_OBRAZ_W2A
			UKLADANI_ACTIVE=TRUE
			CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_W02)
			SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			WAIT 8
			    {
			    nVSTUP = SCENA_RELAX_OBRAZ_C2A
			    UKLADANI_ACTIVE=TRUE
			    CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_C02)
			    WAIT 8
				{
				nVSTUP = SCENA_RELAX_OBRAZ_R2A
				UKLADANI_ACTIVE=TRUE
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_R02)
				WAIT 8
				    {
				    nVSTUP = SCENA_RELAX_OBRAZ_G2A
				    UKLADANI_ACTIVE=TRUE
				    CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_G02)
				    WAIT 8
					{
					nVSTUP = SCENA_RELAX_OBRAZ_B2A
					UKLADANI_ACTIVE=TRUE
					CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_B02)
					WAIT 60
					    {
					    UKLADANI_ACTIVE=FALSE
					    }
					}
				    }
				}
			    }
			}
		  
	}
    }
BUTTON_EVENT[dvMyTP_02,1341]									// RELAX RGB2 Pevne Sceny
    {
    RELEASE:
	{
	IF (BUTTON.HOLDTIME < 3000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 3s
			{ // VYVOLEJ SCENU // FORMAT JE KANAL, PERSIST
			//CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_10, OB_KAMEN_STRED_2C)
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_W02, RELAX_0NP_OBRAZ_WHITE_2B)
			WAIT 2
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_C02, RELAX_0NP_OBRAZ_COLD_2B)
			WAIT 4
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_R02, RELAX_0NP_OBRAZ_RED_2B)
			WAIT 6
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_G02, RELAX_0NP_OBRAZ_GREEN_2B)
			WAIT 8
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_B02, RELAX_0NP_OBRAZ_BLUE_2B)
			}
			ELSE
			{ // ULOZ SCENU
			nVSTUP = SCENA_RELAX_OBRAZ_W2B
			UKLADANI_ACTIVE=TRUE
			CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_W02)
			SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			WAIT 8
			    {
			    nVSTUP = SCENA_RELAX_OBRAZ_C2B
			    UKLADANI_ACTIVE=TRUE
			    CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_C02)
			    WAIT 8
				{
				nVSTUP = SCENA_RELAX_OBRAZ_R2B
				UKLADANI_ACTIVE=TRUE
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_R02)
				WAIT 8
				    {
				    nVSTUP = SCENA_RELAX_OBRAZ_G2B
				    UKLADANI_ACTIVE=TRUE
				    CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_G02)
				    WAIT 8
					{
					nVSTUP = SCENA_RELAX_OBRAZ_B2B
					UKLADANI_ACTIVE=TRUE
					CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_B02)
					WAIT 60
					    {
					    UKLADANI_ACTIVE=FALSE
					    }
					}
				    }
				}
			    }
			}
		  
	}
    }
BUTTON_EVENT[dvMyTP_02,1343]							// RELAX RGB 2 Tady budu poustet RGB prechody
BUTTON_EVENT[dvMyTP_02,1344]
BUTTON_EVENT[dvMyTP_02,1345]
{
PUSH:
    {
    SWITCH(BUTTON.INPUT.CHANNEL)
	{
	CASE 1343: 
	    {
		SEND_COMMAND dvMyTP_01,"'^TXT-638,0,RGB 1'"
	    RELAX_1PP_RGB_02B_ACTIVE = FALSE
	    RELAX_1PP_RGB_02A_ACTIVE = TRUE	/// Aktivni sekvence
        RELAX_1PP_RGB_TIMER_ACTIVE=TRUE 		
	    CALL 'RELAX_1PP_RGB_TIMER' (240)
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_W02, RELAX_0NP_OBRAZ_WHITE_2B)
		WAIT 2
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_C02, RELAX_0NP_OBRAZ_COLD_2B)
		WAIT 4
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_R02, RELAX_0NP_OBRAZ_RED_2B)
		WAIT 6
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_G02, RELAX_0NP_OBRAZ_GREEN_2B)
		WAIT 8
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_B02, RELAX_0NP_OBRAZ_BLUE_2B)
	    }
	CASE 1344:
	    {
		SEND_COMMAND dvMyTP_01,"'^TXT-638,0,RGB 2'"
	    RELAX_1PP_RGB_02A_ACTIVE = FALSE
	    RELAX_1PP_RGB_02B_ACTIVE = TRUE	/// Aktivni sekvence
		RELAX_1PP_RGB_TIMER_ACTIVE=TRUE		
		CALL 'RELAX_1PP_RGB_TIMER_DOUBLE' 
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_W02, RELAX_0NP_OBRAZ_WHITE_2B)
		WAIT 2
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_C02, RELAX_0NP_OBRAZ_COLD_2B)
		WAIT 4
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_R02, RELAX_0NP_OBRAZ_RED_2B)
		WAIT 6
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_G02, RELAX_0NP_OBRAZ_GREEN_2B)
		WAIT 8
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_B02, RELAX_0NP_OBRAZ_BLUE_2B)
	    }
	CASE 1345: 
	    {
	    RELAX_1PP_RGB_TIMER_ACTIVE=FALSE
	    RELAX_1PP_RGB_02A_ACTIVE = FALSE
	    RELAX_1PP_RGB_02B_ACTIVE = FALSE
	    CALL 'RELAX_1PP_RGB_TIMER_STOP' 
		SEND_COMMAND dvMyTP_01,"'^TXT-638,0,RGB OFF'"
	    }
	}
    }
}   
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
BUTTON_EVENT[dvMyTP_02,nBTN_SV_RELAX_RGB3]			/// 1PP RELAX RGB3	SVETLA RGB V RELAXU
{
	PUSH:
		{
		STACK_VAR INTEGER nBtnIdx
		STACK_VAR CHAR SC[2]
		nBtnIdx = GET_LAST(nBTN_SV_RELAX_RGB3)
		SC[1] = ILT_0NP_RELAX_RGB_AREA
		SWITCH(nBtnIdx)
			{
			CASE    1: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_R03)}		//
			CASE    2: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_R03)}
			CASE    3: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_R03,00,0)}
			CASE    4: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_G03)}		//
			CASE    5: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_G03)}
			CASE    6: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_G03,00,0)}
			CASE    7: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_B03)}		//
			CASE    8: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_B03)}
			CASE    9: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_B03,00,0)}
			CASE    10: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_W03)}		//
			CASE    11: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_W03)}
			CASE    12: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_W03,00,0)}
			CASE    13: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_C03)}		//
			CASE    14: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_C03)}
			CASE    15: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_C03,00,0)}
			CASE    21: {
				    RELAX_1PP_RGB_TIMER_ACTIVE=FALSE
				    RELAX_1PP_RGB_01A_ACTIVE=FALSE
				    RELAX_1PP_RGB_01B_ACTIVE=FALSE
				    CALL 'SEKVENCE_RELAX_1PP_RGB_SVETLA_ZHASNOUT'
				    }	
			CASE    22: {
				    RELAX_1PP_RGB_TIMER_ACTIVE=FALSE
				    RELAX_1PP_RGB_01A_ACTIVE=FALSE
				    RELAX_1PP_RGB_01B_ACTIVE=FALSE
				    RELAX_1PP_RGB_03A_ACTIVE = FALSE
				    RELAX_1PP_RGB_03B_ACTIVE = FALSE
				    RELAX_1PP_RGB_03A_ACTIVE = FALSE
				    RELAX_1PP_RGB_03B_ACTIVE = FALSE
				    RELAX_1PP_RGB_04A_ACTIVE = FALSE
				    RELAX_1PP_RGB_04B_ACTIVE = FALSE
				    CALL 'SEKVENCE_RELAX_1PP_RGB_SVETLA_ZHASNOUT'
				    }	
			 (*
			  CASE    16: {	SC[2] = 32								/// SCENA NA ILIGHT PRO RGB 
							CALL 'ILIGHT_SCENA' (SC,1)							//1315	
							}							
			  CASE    17: {	SC[2] = 32								/// SCENA NA ILIGHT PRO RGB 
							CALL 'ILIGHT_SAVE_SCENE' (SC)}	
			
			  CASE    18: {CALL 'REQUEST_CHANNELS_1PP_RELAX_RGB1'} 		//1317
			  
			  CASE    19: {	SC[2] = 33								//1318	/// SCENA NA ILIGHT PRO RGB 
							CALL 'ILIGHT_SCENA' (SC,1)							
							}	
						
			  
			  CASE    21: {} 											//1320
			  CASE    22: {CALL 'POWER_OFF_0NP_RELAX_RGB_ALL'} 		//1321  - ALL OFF
			   *)
			}
			CANCEL_WAIT 'KILL RGB'
		}
	HOLD[2,REPEAT]:
		{
		STACK_VAR INTEGER nBtnIdx
		nBtnIdx = GET_LAST(nBTN_SV_RELAX_RGB2)
		SWITCH(nBtnIdx)
			{
			CASE  1: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_RELAX_1PP_RGB_R03)}
			CASE  2: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_RELAX_1PP_RGB_R03)}
			CASE  4: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_RELAX_1PP_RGB_G03)}
			CASE  5: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_RELAX_1PP_RGB_G03)}
			CASE  7: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_RELAX_1PP_RGB_B03)}
			CASE  8: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_RELAX_1PP_RGB_B03)}
			CASE  10: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_RELAX_1PP_RGB_W03)}
			CASE  11: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_RELAX_1PP_RGB_W03)}
			CASE  13: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_RELAX_1PP_RGB_C03)}
			CASE  14: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_RELAX_1PP_RGB_C03)}
			}
		}
	RELEASE:
		{
		WAIT 20
		CALL 'REQUEST_CHANNELS_1PP_RELAX_RGB3'
		}
}



BUTTON_EVENT[dvMyTP_02,1365]									// RELAX RGB3 Pevne Sceny
    {
    RELEASE:
	{
	IF (BUTTON.HOLDTIME < 3000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 3s
			{ // VYVOLEJ SCENU // FORMAT JE KANAL, PERSIST
			//CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_10, OB_KAMEN_STRED_2C)
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_W03, RELAX_0NP_OBRAZ_WHITE_3A)
			WAIT 2
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_C03, RELAX_0NP_OBRAZ_COLD_3A)
			WAIT 4
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_R03, RELAX_0NP_OBRAZ_RED_3A)
			WAIT 6
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_G03, RELAX_0NP_OBRAZ_GREEN_3A)
			WAIT 8
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_B03, RELAX_0NP_OBRAZ_BLUE_3A)
			
			}
			ELSE
			{ // ULOZ SCENU
			nVSTUP = SCENA_RELAX_OBRAZ_W3A
			UKLADANI_ACTIVE=TRUE
			CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_W03)
			SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			WAIT 8
			    {
			    nVSTUP = SCENA_RELAX_OBRAZ_C3A
			    UKLADANI_ACTIVE=TRUE
			    CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_C03)
			    WAIT 8
				{
				nVSTUP = SCENA_RELAX_OBRAZ_R3A
				UKLADANI_ACTIVE=TRUE
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_R03)
				WAIT 8
				    {
				    nVSTUP = SCENA_RELAX_OBRAZ_G3A
				    UKLADANI_ACTIVE=TRUE
				    CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_G03)
				    WAIT 8
					{
					nVSTUP = SCENA_RELAX_OBRAZ_B3A
					UKLADANI_ACTIVE=TRUE
					CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_B03)
					WAIT 60
					    {
					    UKLADANI_ACTIVE=FALSE
					    }
					}
				    }
				}
			    }
			}
		  
	}
    }
BUTTON_EVENT[dvMyTP_02,1366]									// RELAX RGB3 Pevne Sceny
    {
    RELEASE:
	{
	IF (BUTTON.HOLDTIME < 3000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 3s
			{ // VYVOLEJ SCENU // FORMAT JE KANAL, PERSIST
			//CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_10, OB_KAMEN_STRED_2C)
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_W03, RELAX_0NP_OBRAZ_WHITE_3B)
			WAIT 2
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_C03, RELAX_0NP_OBRAZ_COLD_3B)
			WAIT 4
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_R03, RELAX_0NP_OBRAZ_RED_3B)
			WAIT 6
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_G03, RELAX_0NP_OBRAZ_GREEN_3B)
			WAIT 8
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_B03, RELAX_0NP_OBRAZ_BLUE_3B)
			}
			ELSE
			{ // ULOZ SCENU
			nVSTUP = SCENA_RELAX_OBRAZ_W3B
			UKLADANI_ACTIVE=TRUE
			CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_W03)
			SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			WAIT 8
			    {
			    nVSTUP = SCENA_RELAX_OBRAZ_C3B
			    UKLADANI_ACTIVE=TRUE
			    CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_C03)
			    WAIT 8
				{
				nVSTUP = SCENA_RELAX_OBRAZ_R3B
				UKLADANI_ACTIVE=TRUE
				CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_R03)
				WAIT 8
				    {
				    nVSTUP = SCENA_RELAX_OBRAZ_G3B
				    UKLADANI_ACTIVE=TRUE
				    CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_G03)
				    WAIT 8
					{
					nVSTUP = SCENA_RELAX_OBRAZ_B3B
					UKLADANI_ACTIVE=TRUE
					CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_B03)
					WAIT 60
					    {
					    UKLADANI_ACTIVE=FALSE
					    }
					}
				    }
				}
			    }
			}
		  
	}
    }
BUTTON_EVENT[dvMyTP_02,1368]							// RELAX RGB 3 Tady budu poustet RGB prechody
BUTTON_EVENT[dvMyTP_02,1369]
BUTTON_EVENT[dvMyTP_02,1370]
{
PUSH:
    {
    SWITCH(BUTTON.INPUT.CHANNEL)
		{
		CASE 1368: 
			{	
			SEND_COMMAND dvMyTP_01,"'^TXT-639,0,RGB 1'" 
			RELAX_1PP_RGB_03B_ACTIVE = FALSE
			RELAX_1PP_RGB_03A_ACTIVE = TRUE	/// Aktivni sekveence	
			RELAX_1PP_RGB_TIMER_ACTIVE=TRUE 
			CALL 'RELAX_1PP_RGB_TIMER' (220)
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_W03, RELAX_0NP_OBRAZ_WHITE_3B)
			WAIT 2
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_C03, RELAX_0NP_OBRAZ_COLD_3B)
			WAIT 4
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_R03, RELAX_0NP_OBRAZ_RED_3B)
			WAIT 6
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_G03, RELAX_0NP_OBRAZ_GREEN_3B)
			WAIT 8
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_B03, RELAX_0NP_OBRAZ_BLUE_3B)
			}
		CASE 1369:
			{
			SEND_COMMAND dvMyTP_01,"'^TXT-639,0,RGB 2'"
			RELAX_1PP_RGB_03A_ACTIVE = FALSE
			RELAX_1PP_RGB_03B_ACTIVE = TRUE	/// Aktivni sekveence
			RELAX_1PP_RGB_TIMER_ACTIVE=TRUE
			CALL 'RELAX_1PP_RGB_TIMER_DOUBLE'
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_W03, RELAX_0NP_OBRAZ_WHITE_3B)
			WAIT 2
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_C03, RELAX_0NP_OBRAZ_COLD_3B)
			WAIT 4
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_R03, RELAX_0NP_OBRAZ_RED_3B)
			WAIT 6
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_G03, RELAX_0NP_OBRAZ_GREEN_3B)
			WAIT 8
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_B03, RELAX_0NP_OBRAZ_BLUE_3B)
			}
		CASE 1370: 
			{
			RELAX_1PP_RGB_TIMER_ACTIVE=FALSE
			RELAX_1PP_RGB_03A_ACTIVE = FALSE
			RELAX_1PP_RGB_03B_ACTIVE = FALSE
			CALL 'RELAX_1PP_RGB_TIMER_STOP' 
			SEND_COMMAND dvMyTP_01,"'^TXT-639,0,RGB OFF'"
			}
		}
    }
}   

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

BUTTON_EVENT[dvMyTP_02,nBTN_SV_RELAX_RGB4]			/// 1PP RELAX RGB4	SVETLA RGB V RELAXU
{
	PUSH:
		{
		STACK_VAR INTEGER nBtnIdx
		STACK_VAR CHAR SC[2]
		nBtnIdx = GET_LAST(nBTN_SV_RELAX_RGB4)
		SC[1] = ILT_0NP_RELAX_RGB_AREA
		SWITCH(nBtnIdx)
			{
			  CASE    1: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_R04)}		//1375
			  CASE    2: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_R04)}
			  CASE    3: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_R04,00,0)} 
			  CASE    4: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_G04)}		//1378
			  CASE    5: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_G04)}
			  CASE    6: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_G04,00,0)} 
			  CASE    7: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_B04)}		//
			  CASE    8: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_B04)}
			  CASE    9: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_B04,00,0)} 
			  CASE    10: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_W04)}		//
			  CASE    11: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_W04)}		// 1385
			  CASE    12: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_W04,00,0)} 
			  CASE    13: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_C04)}		//
			  CASE    14: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_C04)}
			  CASE    15: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_C04,00,0)} // 1389
			  CASE    22: {CALL 'POWER_OFF_0NP_RELAX_RGB_ALL'} 		//1396  - ALL OFF
			  (*
			  CASE    16: {	SC[2] = 36								/// SCENA NA ILIGHT PRO RGB 
							CALL 'ILIGHT_SCENA' (SC,1)							//1390	
							}							
			  CASE    17: {	SC[2] = 37								/// SCENA NA ILIGHT PRO RGB 
							CALL 'ILIGHT_SCENA' (SC,1)	
				
			  CASE    18: {CALL 'REQUEST_CHANNELS_1PP_RELAX_RGB1'} 		//1392
			  
			  CASE    19: {	
							SC[2] = 36								//1393	/// SCENA NA ILIGHT PRO RGB samostatna sekvence 
							CALL 'ILIGHT_SCENA' (SC,1)							
							}	
			   CASE    20: { 
							SC[2] = 37								/// SCENA NA ILIGHT PRO RGB //1394
							CALL 'ILIGHT_SCENA' (SC,1)
							}
				
			 CASE    21: {} 	
										//1395
			 
			}
			*)
			 
			}
			CANCEL_WAIT 'KILL RGB'
		}
	HOLD[2,REPEAT]:
		{
		STACK_VAR INTEGER nBtnIdx
		nBtnIdx = GET_LAST(nBTN_SV_RELAX_RGB4)
		SWITCH(nBtnIdx)
			{
			CASE  1: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_RELAX_1PP_RGB_R04)}			
			CASE  2: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_RELAX_1PP_RGB_R04)}
			CASE  4: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_RELAX_1PP_RGB_G04)}			
			CASE  5: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_RELAX_1PP_RGB_G04)}
			CASE  7: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_RELAX_1PP_RGB_B04)}			
			CASE  8: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_RELAX_1PP_RGB_B04)}
			CASE  10: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_RELAX_1PP_RGB_W04)}			
			CASE  11: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_RELAX_1PP_RGB_W04)}
			CASE  13: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_RELAX_1PP_RGB_C04)}			
			CASE  14: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_RELAX_1PP_RGB_C04)}
			}
		}
	RELEASE:
		{
		WAIT 20
		CALL 'REQUEST_CHANNELS_1PP_RELAX_RGB4'
		}
}
BUTTON_EVENT[dvMyTP_02,1390]									// RELAX RGB Pevne Sceny
{
	RELEASE:
	{
	IF (BUTTON.HOLDTIME < 3000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 3s
			{ // VYVOLEJ SCENU // FORMAT JE KANAL, PERSIST
			//CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_10, OB_KAMEN_STRED_2C)
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_W04, RELAX_0NP_OBRAZ_WHITE_4A)
			WAIT 2
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_C04, RELAX_0NP_OBRAZ_COLD_4A)
			WAIT 4
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_R04, RELAX_0NP_OBRAZ_RED_4A)
			WAIT 6
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_G04, RELAX_0NP_OBRAZ_GREEN_4A)
			WAIT 8
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_B04, RELAX_0NP_OBRAZ_BLUE_4A)
			}
		ELSE // ULOZ SCENU
			{ 
			nVSTUP = SCENA_RELAX_OBRAZ_W4A
			UKLADANI_ACTIVE=TRUE
			CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_W04)
			SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			WAIT 8
			    {
			    nVSTUP = SCENA_RELAX_OBRAZ_C4A
			    UKLADANI_ACTIVE=TRUE
			    CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_C04)
					WAIT 8
					{
					nVSTUP = SCENA_RELAX_OBRAZ_R4A
					UKLADANI_ACTIVE=TRUE
					CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_R04)
					WAIT 8
						{
						nVSTUP = SCENA_RELAX_OBRAZ_G4A
						UKLADANI_ACTIVE=TRUE
						CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_G04)
							WAIT 8
							{
							nVSTUP = SCENA_RELAX_OBRAZ_B4A
							UKLADANI_ACTIVE=TRUE
							CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_B04)
							WAIT 60
								{
								UKLADANI_ACTIVE=FALSE
								}
							}
						}
					}
			    }
			}
		  
	}
}
BUTTON_EVENT[dvMyTP_02,1391]
{
	RELEASE:
	{
	IF (BUTTON.HOLDTIME < 3000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 3s
			{ // VYVOLEJ SCENU // FORMAT JE KANAL, PERSIST
			//CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_10, OB_KAMEN_STRED_2C)
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_W04, RELAX_0NP_OBRAZ_WHITE_4B)
			WAIT 2
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_C04, RELAX_0NP_OBRAZ_COLD_4B)
			WAIT 4
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_R04, RELAX_0NP_OBRAZ_RED_4B)
			WAIT 6
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_G04, RELAX_0NP_OBRAZ_GREEN_4B)
			WAIT 8
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_B04, RELAX_0NP_OBRAZ_BLUE_4B)
			}
		ELSE
			{ // ULOZ SCENU
			nVSTUP = SCENA_RELAX_OBRAZ_W4B
			UKLADANI_ACTIVE=TRUE
			CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_W04)
			SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			WAIT 8
			    {
			    nVSTUP = SCENA_RELAX_OBRAZ_C4B
			    UKLADANI_ACTIVE=TRUE
			    CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_C04)
					WAIT 8
					{
					nVSTUP = SCENA_RELAX_OBRAZ_R4B
					UKLADANI_ACTIVE=TRUE
					CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_R04)
					WAIT 8
						{
						nVSTUP = SCENA_RELAX_OBRAZ_G4B
						UKLADANI_ACTIVE=TRUE
						CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_G04)
							WAIT 8
							{
							nVSTUP = SCENA_RELAX_OBRAZ_B4B
							UKLADANI_ACTIVE=TRUE
							CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_B04)
							WAIT 60
								{
								UKLADANI_ACTIVE=FALSE
								}
							}
						}
					}
			    }
			}
		  
	}
}
BUTTON_EVENT[dvMyTP_02,1393]							// RELAX RGB 4 Tady budu poustet RGB prechody
BUTTON_EVENT[dvMyTP_02,1394]
BUTTON_EVENT[dvMyTP_02,1395]
{
PUSH:
    {
    SWITCH(BUTTON.INPUT.CHANNEL)
	{
	CASE 1393: 
	    {
		SEND_COMMAND dvMyTP_01,"'^TXT-640,0,RGB 1'"  
	    RELAX_1PP_RGB_04B_ACTIVE = FALSE
	    RELAX_1PP_RGB_04A_ACTIVE = TRUE	/// Aktivni sekveence
		RELAX_1PP_RGB_TIMER_ACTIVE=TRUE 
	    CALL 'RELAX_1PP_RGB_TIMER' (240)
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_W04, RELAX_0NP_OBRAZ_WHITE_4B)
		WAIT 2
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_C04, RELAX_0NP_OBRAZ_COLD_4B)
		WAIT 4
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_R04, RELAX_0NP_OBRAZ_RED_4B)
		WAIT 6
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_G04, RELAX_0NP_OBRAZ_GREEN_4B)
		WAIT 8
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_B04, RELAX_0NP_OBRAZ_BLUE_4B)
	    }
	CASE 1394:
	    {
	    SEND_COMMAND dvMyTP_01,"'^TXT-640,0,RGB 2'"
	    RELAX_1PP_RGB_04A_ACTIVE = FALSE
	    RELAX_1PP_RGB_04B_ACTIVE = TRUE	/// Aktivni sekveence
		RELAX_1PP_RGB_TIMER_ACTIVE=TRUE
		CALL 'RELAX_1PP_RGB_TIMER_DOUBLE' 
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_W04, RELAX_0NP_OBRAZ_WHITE_4B)
		WAIT 2
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_C04, RELAX_0NP_OBRAZ_COLD_4B)
		WAIT 4
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_R04, RELAX_0NP_OBRAZ_RED_4B)
		WAIT 6
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_G04, RELAX_0NP_OBRAZ_GREEN_4B)
		WAIT 8
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_B04, RELAX_0NP_OBRAZ_BLUE_4B)
	    }
	CASE 1395: 
	    {
	    RELAX_1PP_RGB_TIMER_ACTIVE=FALSE
	    RELAX_1PP_RGB_04A_ACTIVE = FALSE
	    RELAX_1PP_RGB_04B_ACTIVE = FALSE
	    CALL 'RELAX_1PP_RGB_TIMER_STOP' 
		SEND_COMMAND dvMyTP_01,"'^TXT-640,0,RGB OFF'"
	    }
	}
    }
}

BUTTON_EVENT[dvMyTP_02,nBTN_SV_RELAX_RGB5]			/// 1PP RELAX RGB5	SVETLA RGB V RELAXU
{
	PUSH:
		{
		STACK_VAR INTEGER nBtnIdx
		STACK_VAR CHAR SC[2]
		nBtnIdx = GET_LAST(nBTN_SV_RELAX_RGB5)
		SC[1] = ILT_0NP_RELAX_RGB_AREA
		SWITCH(nBtnIdx)
			{
			  CASE    1: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_R05)}		//1400
			  CASE    2: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_R05)}
			  CASE    3: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_R05,00,0)} 
			  CASE    4: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_G05)}		//1403
			  CASE    5: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_G05)}
			  CASE    6: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_G05,00,0)} 
			  CASE    7: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_B05)}		//
			  CASE    8: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_B05)}
			  CASE    9: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_B05,00,0)} 
			  CASE    10: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_W05)}		//1409
			  CASE    11: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_W05)}
			  CASE    12: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_W05,00,0)} 
			  CASE    13: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_RGB_C05)}		//1412
			  CASE    14: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_RGB_C05)}
			  CASE    15: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_RGB_C05,00,0)} 
			  (*
			  CASE    16: {	SC[2] = 90								/// SCENA NA ILIGHT PRO RGB 
							CALL 'ILIGHT_SCENA' (SC,1)							//1415	
							}							
			  CASE    17: {	SC[2] = 90								/// SCENA NA ILIGHT PRO RGB 
							CALL 'ILIGHT_SAVE_SCENE' (SC)}	
			  *)
			  CASE    18: {CALL 'REQUEST_CHANNELS_1PP_RELAX_RGB5'} 		//1417
			  (*
			  CASE    19: {	SC[2] = 91								//1418	/// SCENA NA ILIGHT PRO RGB 
							CALL 'ILIGHT_SCENA' (SC,1)							
							}	
			   
			  CASE    20: { SC[2] = 91								/// SCENA NA ILIGHT PRO RGB 
							CALL 'ILIGHT_SAVE_SCENE' (SC)}	
						
			  *)
			  CASE    21: {} 											//1420
			  CASE    22: {CALL 'POWER_OFF_0NP_RELAX_RGB_ALL'} 		//1421  - ALL OFF
			}
			CANCEL_WAIT 'KILL RGB'
		}
	HOLD[2,REPEAT]:
		{
		STACK_VAR INTEGER nBtnIdx
		nBtnIdx = GET_LAST(nBTN_SV_RELAX_RGB5)
		SWITCH(nBtnIdx)
			{
			CASE  1: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_RELAX_1PP_RGB_R05)}			
			CASE  2: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_RELAX_1PP_RGB_R05)}
			CASE  4: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_RELAX_1PP_RGB_G05)}			
			CASE  5: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_RELAX_1PP_RGB_G05)}
			CASE  7: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_RELAX_1PP_RGB_B05)}			
			CASE  8: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_RELAX_1PP_RGB_B05)}
			CASE  10: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_RELAX_1PP_RGB_W05)}			
			CASE  11: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_RELAX_1PP_RGB_W05)}
			CASE  13: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_RELAX_1PP_RGB_C05)}			
			CASE  14: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_RELAX_1PP_RGB_C05)}
			}
		}
	RELEASE:
		{
		WAIT 20
		CALL 'REQUEST_CHANNELS_1PP_RELAX_RGB5'
		}
}
BUTTON_EVENT[dvMyTP_02,1415]									// RELAX RGB Pevne Sceny SC1
{
RELEASE:
		{
	IF (BUTTON.HOLDTIME < 3000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 3s
			{ // VYVOLEJ SCENU // FORMAT JE KANAL, PERSIST
			//CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_10, OB_KAMEN_STRED_2C)
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_W05, RELAX_0NP_OBRAZ_WHITE_5A)
			WAIT 2
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_C05, RELAX_0NP_OBRAZ_COLD_5A)
			WAIT 4
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_R05, RELAX_0NP_OBRAZ_RED_5A)
			WAIT 6
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_G05, RELAX_0NP_OBRAZ_GREEN_5A)
			WAIT 8
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_B05, RELAX_0NP_OBRAZ_BLUE_5A)
			}
		ELSE // ULOZ SCENU
			{ 
			nVSTUP = SCENA_RELAX_OBRAZ_W5A
			UKLADANI_ACTIVE=TRUE
			CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_W05)
			SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			WAIT 8
			    {
			    nVSTUP = SCENA_RELAX_OBRAZ_C5A
			    UKLADANI_ACTIVE=TRUE
			    CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_C05)
					WAIT 8
					{
					nVSTUP = SCENA_RELAX_OBRAZ_R5A
					UKLADANI_ACTIVE=TRUE
					CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_R05)
					WAIT 8
						{
						nVSTUP = SCENA_RELAX_OBRAZ_G5A
						UKLADANI_ACTIVE=TRUE
						CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_G05)
							WAIT 8
							{
							nVSTUP = SCENA_RELAX_OBRAZ_B5A
							UKLADANI_ACTIVE=TRUE
							CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_B05)
							WAIT 60
								{
								UKLADANI_ACTIVE=FALSE
								}
							}
						}
					}
			    }
			}
		}
		  
}
BUTTON_EVENT[dvMyTP_02,1416] // RELAX RGB Pevne Sceny SC2
{
RELEASE:
		{
	IF (BUTTON.HOLDTIME < 3000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 3s
			{ // VYVOLEJ SCENU // FORMAT JE KANAL, PERSIST
			//CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_1NP_OBYVAK_10, OB_KAMEN_STRED_2C)
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_W05, RELAX_0NP_OBRAZ_WHITE_5B)
			WAIT 2
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_C05, RELAX_0NP_OBRAZ_COLD_5B)
			WAIT 4
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_R05, RELAX_0NP_OBRAZ_RED_5B)
			WAIT 6
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_G05, RELAX_0NP_OBRAZ_GREEN_5B)
			WAIT 8
			CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_B05, RELAX_0NP_OBRAZ_BLUE_5B)
			}
		ELSE // ULOZ SCENU
			{ 
			nVSTUP = SCENA_RELAX_OBRAZ_W5B
			UKLADANI_ACTIVE=TRUE
			CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_W05)
			SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			WAIT 8
			    {
			    nVSTUP = SCENA_RELAX_OBRAZ_C5B
			    UKLADANI_ACTIVE=TRUE
			    CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_C05)
					WAIT 8
					{
					nVSTUP = SCENA_RELAX_OBRAZ_R5B
					UKLADANI_ACTIVE=TRUE
					CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_R05)
					WAIT 8
						{
						nVSTUP = SCENA_RELAX_OBRAZ_G5B
						UKLADANI_ACTIVE=TRUE
						CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_G05)
							WAIT 8
							{
							nVSTUP = SCENA_RELAX_OBRAZ_B5B
							UKLADANI_ACTIVE=TRUE
							CALL 'ILIGHT_CHANNEL_REQUEST' (SV_RELAX_1PP_RGB_B05)
							WAIT 60
								{
								UKLADANI_ACTIVE=FALSE
								}
							}
						}
					}
			    }
			}
		}
		  
}
BUTTON_EVENT[dvMyTP_02,1418]							// RELAX RGB barevný prechod mezi stavem v pameti 1 a 2
BUTTON_EVENT[dvMyTP_02,1419]
BUTTON_EVENT[dvMyTP_02,1420]
{
PUSH:
    {
    SWITCH(BUTTON.INPUT.CHANNEL)
	{
	CASE 1418: 
	    {					/// 
		SEND_COMMAND dvMyTP_01,"'^TXT-641,0,RGB 1'"
	    RELAX_1PP_RGB_TIMER_ACTIVE=TRUE 
	    RELAX_1PP_RGB_05B_ACTIVE = FALSE
	    RELAX_1PP_RGB_05A_ACTIVE = TRUE	/// Aktivni sekveence		
	    CALL 'RELAX_1PP_RGB_TIMER' (240)
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_W05, RELAX_0NP_OBRAZ_WHITE_5B)
		WAIT 2
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_C05, RELAX_0NP_OBRAZ_COLD_5B)
		WAIT 4
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_R05, RELAX_0NP_OBRAZ_RED_5B)
		WAIT 6
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_G05, RELAX_0NP_OBRAZ_GREEN_5B)
		WAIT 8
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_B05, RELAX_0NP_OBRAZ_BLUE_5B)
	    }
	CASE 1419:
	    {
		SEND_COMMAND dvMyTP_01,"'^TXT-641,0,RGB 2'"
	    RELAX_1PP_RGB_TIMER_ACTIVE=TRUE
	    RELAX_1PP_RGB_05A_ACTIVE = FALSE
	    RELAX_1PP_RGB_05B_ACTIVE = TRUE	/// Aktivni sekveence		
		CALL 'RELAX_1PP_RGB_TIMER_DOUBLE' 
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_W05, RELAX_0NP_OBRAZ_WHITE_5B)
		WAIT 2
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_C05, RELAX_0NP_OBRAZ_COLD_5B)
		WAIT 4
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_R05, RELAX_0NP_OBRAZ_RED_5B)
		WAIT 6
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_G05, RELAX_0NP_OBRAZ_GREEN_5B)
		WAIT 8
		CALL 'VYVOLEJ_PERSIST_LEVEL' (SV_RELAX_1PP_RGB_B05, RELAX_0NP_OBRAZ_BLUE_5B)
	    }
	CASE 1420: 
	    {
	    RELAX_1PP_RGB_TIMER_ACTIVE=FALSE
	    RELAX_1PP_RGB_05A_ACTIVE = FALSE
	    RELAX_1PP_RGB_05B_ACTIVE = FALSE
	    CALL 'RELAX_1PP_RGB_TIMER_STOP' 
		SEND_COMMAND dvMyTP_01,"'^TXT-641,0,RGB OFF'"
	    }
	}
    }
}
// {{NSX_DEFINE_EVENT  Test zaskrtnuteho Repeat - NENI ZDE NIC
///////////////////////  SVETLO SATNA  //////////////////////////

BUTTON_EVENT[dvMyTP_02,nBTN_SV_SATNA_RGB]			/// 1PP SATNA A ZRCADLO - SVETLA RGB V SATNE
{
	PUSH:
		{
		STACK_VAR INTEGER nBtnIdx
		STACK_VAR CHAR SC[2]
		nBtnIdx = GET_LAST(nBTN_SV_SATNA_RGB)
		SC[1] = ILT_0NP_SATNA_AREA
		SWITCH(nBtnIdx)
			{
			  CASE    1: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_SATNA_02)}		//	1430
			  CASE    2: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_SATNA_02)}
			  CASE    3: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_1PP_SATNA_02,00,0)} 
			  CASE    4: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_SATNA_03)}		//	1433
			  CASE    5: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_SATNA_03)}
			  CASE    6: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_1PP_SATNA_03,00,0)} 
			  CASE    7: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_SATNA_04)}		//
			  CASE    8: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_SATNA_04)}
			  CASE    9: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_1PP_SATNA_04,00,0)} 
			  CASE    10: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_1PP_SATNA_01)}		//	  1439
			  CASE    11: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_1PP_SATNA_01)}
			  CASE    12: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_1PP_SATNA_01,00,0)} 
			  CASE    13: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_1PP_SATNA_05,100,0)} ///	   1442
			  CASE    14: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_1PP_SATNA_05,00,0)} 	///    1443
			  CASE    16:  {CALL 'POWER_OFF_0NP_SATNA'}							///  NECHAPU PROC CHODI OBRACENE    1444
			  CASE    17:  {CALL 'REQUEST_CHANNELS_1PP_SATNA_RGB' }				///   NECHAPU PROC CHODI OBRACENE 1445 
			}
			///CANCEL_WAIT 'KILL RGB'
		}
	HOLD[2,REPEAT]:
		{
		STACK_VAR INTEGER nBtnIdx
		nBtnIdx = GET_LAST(nBTN_SV_SATNA_RGB)
		SWITCH(nBtnIdx)
			{
			CASE  1: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_1PP_SATNA_02)}			
			CASE  2: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_1PP_SATNA_02)}
			CASE  4: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_1PP_SATNA_03)}			
			CASE  5: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_1PP_SATNA_03)}
			CASE  7: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_1PP_SATNA_04)}			
			CASE  8: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_1PP_SATNA_04)}
			CASE  10: {CALL 'ILIGHT_CHANNEL_RAISE' (SV_1PP_SATNA_01)}			
			CASE  11: {CALL 'ILIGHT_CHANNEL_LOWER' (SV_1PP_SATNA_01)}
			}
		}
	RELEASE:
		{
		WAIT 20
		CALL 'REQUEST_CHANNELS_1PP_SATNA_RGB'
		}
}
BUTTON_EVENT[dvMyTP_02,1446]				/// SCENA pro Satnu
{
	
 RELEASE:
	{
	 STACK_VAR CHAR SC[2]	  
		{
			SC[1] = ILT_0NP_SATNA_AREA
			SC[2] = 4 //Konkretni jedna scena
			IF (BUTTON.HOLDTIME < 4000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 5s
			{ // VYVOLEJ SCENU
				CALL 'ILIGHT_SCENA' (SC,1)
			}
			ELSE
			{ // ULOZ SCENU
			  CALL 'ILIGHT_SAVE_SCENE' (SC)
				//SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA V HALE CISLO ',ITOA(nBtnIdx)"
				SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			}
			WAIT 10 // PRO REALNOU ZPETNOU VAZBU
				CALL 'REQUEST_CHANNELS_1PP_SATNA_RGB'	
		}
	}
}

BUTTON_EVENT[dvMyTP_02,nBTN_SV_FASADA]		// NEPOUZITO - POUZIT!!
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_SV_FASADA)
    SWITCH(nBtnIdx)
    {
      CASE    1: {}
      CASE    2: {}
      CASE    3: {}
      CASE    4: {}
      CASE    5: {}
      CASE    6: {}
      CASE    7: {}
      CASE    8: {}
      CASE    9: {}
      CASE   10: {}
    }
  }
  HOLD[5]:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_SV_FASADA)
    SWITCH(nBtnIdx)
    {
      CASE    1: {}
      CASE    2: {}
      CASE    3: {}
      CASE    4: {}
      CASE    5: {}
      CASE    6: {}
      CASE    7: {}
      CASE    8: {}
      CASE    9: {}
      CASE   10: {}
    }
  }
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_SV_FASADA)
    SWITCH(nBtnIdx)
    {
      CASE    1: {}
      CASE    2: {}
      CASE    3: {}
      CASE    4: {}
      CASE    5: {}
      CASE    6: {}
      CASE    7: {}
      CASE    8: {}
      CASE    9: {}
      CASE   10: {}
    }
  }
}



// }}NSX_DEFINE_EVENT

BUTTON_EVENT[dvMyTP_01,nBTN_SV_RELAX_RGB5]	// NEPOUZITO ZALOHA
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_SV_RELAX_RGB5)
    SWITCH(nBtnIdx)
    {
      CASE   24: {}
      CASE   25: {}
    }
  }
}


BUTTON_EVENT[dvMyTP_02,nBTN_0NP_SV_RELAX_VYRIVKA1]			/// 1PP RELAX VIRIVKA
{
	PUSH:
		{
		STACK_VAR INTEGER nBtnIdx
		nBtnIdx = GET_LAST(nBTN_0NP_SV_RELAX_VYRIVKA1)
		SWITCH(nBtnIdx)
			{
			  CASE    1: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_VIR_R01)}		//460
			  CASE    2: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_VIR_R01)}
			  CASE    3: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_VIR_R01,00,0)} 
			  CASE    4: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_VIR_G01)}		//463
			  CASE    5: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_VIR_G01)}
			  CASE    6: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_VIR_G01,00,0)} 
			  CASE    7: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_VIR_B01)}		// 466
			  CASE    8: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_VIR_B01)}
			  CASE    9: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_VIR_B01,00,0)} 
			  CASE    10: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_VIR_W01)}		//469
			  CASE    11: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_VIR_W01)}
			  CASE    12: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_VIR_W01,00,0)} 
			  
			  //CASE    13: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_VIR_C05)}		//472 PREDELAT o Barvu menì
			  //CASE    14: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_VIR_C05)}
			  //CASE    15: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_VIR_C05,00,0)} 
			  (*
			  CASE    16: {	SC[2] = 90								/// SCENA NA ILIGHT PRO RGB 
							CALL 'ILIGHT_SCENA' (SC,1)							//1315	
							}							
			  CASE    17: {	SC[2] = 90								/// SCENA NA ILIGHT PRO RGB 
							CALL 'ILIGHT_SAVE_SCENE' (SC)}	
			  *)
			  //CASE    18: {CALL 'REQUEST_CHANNELS_1PP_RELAX_RGB1'} 		//1317
			  (*
			  CASE    19: {	SC[2] = 91								//1318	/// SCENA NA ILIGHT PRO RGB 
							CALL 'ILIGHT_SCENA' (SC,1)							
							}	
			   
			  CASE    20: { SC[2] = 91								/// SCENA NA ILIGHT PRO RGB 
							CALL 'ILIGHT_SAVE_SCENE' (SC)}	
						
			  *)
			  CASE    21: {} 											//1320
			  //CASE    22: {CALL 'POWER_OFF_0NP_RELAX_RGB_ALL'} 		//1321  - ALL OFF
			}
		}
	HOLD[2,REPEAT]:
		{
		STACK_VAR INTEGER nBtnIdx
		nBtnIdx = GET_LAST(nBTN_0NP_SV_RELAX_VYRIVKA1)
		SWITCH(nBtnIdx)
			{
			CASE    1: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_VIR_R01)}		//460
			CASE    2: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_VIR_R01)}
			CASE    4: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_VIR_G01)}		//463
			CASE    5: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_VIR_G01)}
			CASE    7: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_VIR_B01)}		// 466
			CASE    8: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_VIR_B01)}
			CASE    10: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_VIR_W01)}		//469
			CASE    11: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_VIR_W01)}
			}
		}
	RELEASE:
		{
		WAIT 20
		CALL 'REQUEST_CHANNELS_1PP_VIRIVKA'
		}
}
BUTTON_EVENT[dvMyTP_02,nBTN_0NP_SV_RELAX_VYRIVKA2]			/// 1PP RELAX VIRIVKA 2
{
	PUSH:
		{
		STACK_VAR INTEGER nBtnIdx
		nBtnIdx = GET_LAST(nBTN_0NP_SV_RELAX_VYRIVKA2)
		SWITCH(nBtnIdx)
			{
			  CASE    1: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_VIR_R02)}		//460
			  CASE    2: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_VIR_R02)}
			  CASE    3: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_VIR_R02,00,0)} 
			  CASE    4: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_VIR_G02)}		//463
			  CASE    5: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_VIR_G02)}
			  CASE    6: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_VIR_G02,00,0)} 
			  CASE    7: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_VIR_B02)}		// 466
			  CASE    8: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_VIR_B02)}
			  CASE    9: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_VIR_B02,00,0)} 
			  CASE    10: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_VIR_W02)}		//469
			  CASE    11: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_VIR_W02)}
			  CASE    12: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_VIR_W02,00,0)} 
			  CASE    21: {} 											//
			  //CASE    22: {CALL 'POWER_OFF_0NP_RELAX_RGB_ALL'} 		//1321  - ALL OFF
			}
		}
	HOLD[2,REPEAT]:
		{
		STACK_VAR INTEGER nBtnIdx
		nBtnIdx = GET_LAST(nBTN_0NP_SV_RELAX_VYRIVKA2)
		SWITCH(nBtnIdx)
			{
			CASE    1: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_VIR_R02)}		//900
			CASE    2: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_VIR_R02)}
			CASE    4: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_VIR_G02)}		//
			CASE    5: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_VIR_G02)}
			CASE    7: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_VIR_B02)}		// 
			CASE    8: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_VIR_B02)}
			CASE    10: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_VIR_W02)}		//4
			CASE    11: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_VIR_W02)}
			}
		}
	RELEASE:
		{
		WAIT 20
		CALL 'REQUEST_CHANNELS_1PP_VIRIVKA'
		}
}
BUTTON_EVENT[dvMyTP_02,nBTN_0NP_SV_RELAX_VYRIVKA3]			/// 1PP RELAX VIRIVKA 3
{
	PUSH:
		{
		STACK_VAR INTEGER nBtnIdx
		nBtnIdx = GET_LAST(nBTN_0NP_SV_RELAX_VYRIVKA3)
		SWITCH(nBtnIdx)
			{
			  CASE    1: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_VIR_R03)}		//900
			  CASE    2: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_VIR_R03)}
			  CASE    3: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_VIR_R03,00,0)} 
			  CASE    4: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_VIR_G03)}		//
			  CASE    5: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_VIR_G03)}
			  CASE    6: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_VIR_G03,00,0)} 
			  CASE    7: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_VIR_B03)}		// 
			  CASE    8: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_VIR_B03)}
			  CASE    9: {CALL 'ILIGHT_CHANNEL_VALUE' (SV_RELAX_1PP_VIR_B03,00,0)} 
			  CASE    21: {} 											//
			  //CASE    22: {CALL 'POWER_OFF_0NP_RELAX_RGB_ALL'} 		//1321  - ALL OFF
			}
		}
	HOLD[2,REPEAT]:
		{
		STACK_VAR INTEGER nBtnIdx
		nBtnIdx = GET_LAST(nBTN_0NP_SV_RELAX_VYRIVKA3)
		SWITCH(nBtnIdx)
			{
			CASE    1: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_VIR_R03)}		//
			CASE    2: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_VIR_R03)}
			CASE    4: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_VIR_G03)}		//
			CASE    5: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_VIR_G03)}
			CASE    7: {CALL 'ILIGHT_CHANNEL_RAISE2' (SV_RELAX_1PP_VIR_B03)}		// 
			CASE    8: {CALL 'ILIGHT_CHANNEL_LOWER2' (SV_RELAX_1PP_VIR_B03)}
			}
		}
	RELEASE:
		{
		WAIT 20
		CALL 'REQUEST_CHANNELS_1PP_VIRIVKA'
		}
}
BUTTON_EVENT[dvMyTP_02,nBTN_1PP_RELAX_SC_VIRIV]				/// DVORKY SCENY  Port 2 770-776 783
{
  PUSH:
  {
	STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SC[2]
	nBtnIdx = GET_LAST(nBTN_1PP_RELAX_SC_VIRIV)
	SC[1] = ILT_0NP_RELAX_VIRIVKA_AREA
	//SC[2] = 0
    SWITCH(nBtnIdx)
		{
		  CASE 1: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','ZLATOZLUTA'"}
		  CASE 2: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','RUZOVA'"}
		  CASE 3: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','TEPLA BILA'"}
		  CASE 4: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','ZELENA'"}
		  CASE 5: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','RUBINOVA'"}
		  CASE 6: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','FIALOVA'"}
		  CASE 7: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','MODRA'"}
		  CASE 8: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','VLASTNI 1'"}
		  CASE 9: {SEND_COMMAND dvMyTP_01,"'^TXT-142,0,','VLASTNI 2'"}
		  CASE 10: {CALL 'REQUEST_CHANNELS_1PP_VIRIVKA'}
		}
	}
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
	STACK_VAR CHAR SC[2]
    nBtnIdx = GET_LAST(nBTN_1PP_RELAX_SC_VIRIV)
	SC[1] = ILT_0NP_RELAX_VIRIVKA_AREA
	SC[2] = 0
    SWITCH(nBtnIdx)
    {
	  CASE 1: {SC[2] = 1}
	  CASE 2: {SC[2] = 2}
	  CASE 3: {SC[2] = 3}
	  CASE 4: {SC[2] = 4}
	  CASE 5: {SC[2] = 5}
	  CASE 6: {SC[2] = 6}
	  CASE 7: {SC[2] = 7}
	  CASE 8: {SC[2] = 8}	// Vlastni 1
	  CASE 9: {SC[2] = 9}	// Vlastni 2
	}
	IF (BUTTON.HOLDTIME < 3000) // JEN POKUD TLACITKO BYLO DRZENO KRATSI DOBU NEZ 3s
			{ // VYVOLEJ SCENU
				CALL 'ILIGHT_SCENA' (SC,1)
				WAIT 25
				CALL 'REQUEST_CHANNELS_1PP_VIRIVKA'
			}
			ELSE
			{ // ULOZ SCENU
			  CALL 'ILIGHT_SAVE_SCENE' (SC)
				SEND_STRING 0,"'BYLA ULOZENA SVETELNA SCENA CISLO ',ITOA(nBtnIdx)"
				SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
			}
  }
}

BUTTON_EVENT[dvMyTP_02,nBTN_1PP_SV_PRACOVNA]					/// PRACOVNA VENKOVNI SV
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_1PP_SV_PRACOVNA)
    SWITCH(nBtnIdx)
    {
      CASE    1: {CALL 'ILIGHT_CHANNEL_ON' (SV_VEN_KANCL_01)}
      CASE    2: {CALL 'ILIGHT_CHANNEL_OFF' (SV_VEN_KANCL_01)}
      CASE    3: {CALL 'ILIGHT_CHANNEL_ON' (SV_VEN_KANCL_02)}
      CASE    4: {CALL 'ILIGHT_CHANNEL_OFF' (SV_VEN_KANCL_02)}
      CASE    5: {CALL 'ILIGHT_CHANNEL_ON' (SV_VEN_KANCL_03)}
      CASE    6: {CALL 'ILIGHT_CHANNEL_OFF' (SV_VEN_KANCL_03)}
      CASE    7: {CALL 'ILIGHT_CHANNEL_ON' (SV_VEN_KANCL_04)}
      CASE    8: {CALL 'ILIGHT_CHANNEL_OFF' (SV_VEN_KANCL_04)}
      CASE    9: {CALL 'ILIGHT_CHANNEL_ON' (SV_VEN_KANCL_05)}
      CASE   10: {CALL 'ILIGHT_CHANNEL_OFF' (SV_VEN_KANCL_05)}
      CASE   11: {
				CALL 'ILIGHT_CHANNEL_OFF' (SV_VEN_KANCL_01)
				CALL 'ILIGHT_CHANNEL_OFF' (SV_VEN_KANCL_02)
				CALL 'ILIGHT_CHANNEL_OFF' (SV_VEN_KANCL_03)
				CALL 'ILIGHT_CHANNEL_OFF' (SV_VEN_KANCL_04)
				CALL 'ILIGHT_CHANNEL_OFF' (SV_VEN_KANCL_05) 
				}
      CASE   12: {}
      CASE   13: {}
      CASE   14: {}
      CASE   15: {}
    }
  }
  HOLD[5,REPEAT]:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_1PP_SV_PRACOVNA)
    SWITCH(nBtnIdx)
    {
      CASE    1: {}
      CASE    2: {}
      CASE    3: {}
      CASE    4: {}
      CASE    5: {}
      CASE    6: {}
      CASE    7: {}
      CASE    8: {}
      CASE    9: {}
      CASE   10: {}
      CASE   11: {}
      CASE   12: {}
      CASE   13: {}
      CASE   14: {}
      CASE   15: {}
    }
  }
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_1PP_SV_PRACOVNA)
    SWITCH(nBtnIdx)
    {
      CASE    1: {}
      CASE    2: {}
      CASE    3: {}
      CASE    4: {}
      CASE    5: {}
      CASE    6: {}
      CASE    7: {}
      CASE    8: {}
      CASE    9: {}
      CASE   10: {}
      CASE   11: {}
      CASE   12: {}
      CASE   13: {}
      CASE   14: {}
      CASE   15: {}
    }
  }
}

BUTTON_EVENT[dvMyTP_02,nBTN_1PP_ZAL_PRACOVNA]					/// PRACOVNA VENKOVNI ZALUZIE  Port 2 1220 1228
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_1PP_ZAL_PRACOVNA)
    SWITCH(nBtnIdx)
    {
      CASE	1:{ 													/// Zaluzie pracovna vlevo nahoru
				  WAIT_ZAL_LOZNICE1 = FALSE
				  IF (ZAL_0MK_PRAC_Z1<6)
							{
							CALL 'ZL_VEN_KANCL_01_NAHORU'
							ZAL_0MK_PRAC_Z1=2
							}
					  WAIT ilightDLOUHY_STISK 'ZALUZIE LOZNICE'
							{
							WAIT_ZAL_LOZNICE1 = TRUE
							}			
				  } 
      CASE    2: { 													/// Zaluzie pracovna vlevo stop
				  WAIT_ZAL_LOZNICE1 = FALSE
				  CALL 'ZL_VEN_KANCL_01_STOP'
				  } 
      CASE    3: { 													/// Zaluzie pracovna vlevo dolu
				  WAIT_ZAL_LOZNICE1 = FALSE
				  IF (ZAL_0MK_PRAC_Z1<6)
							{
							CALL 'ZL_VEN_KANCL_01_DOLU'
							ZAL_0MK_PRAC_Z1=1
							}
				  WAIT ilightDLOUHY_STISK 'ZALUZIE LOZNICE'
						{
						WAIT_ZAL_LOZNICE1 = TRUE
						}			
				  } 
      CASE    4: { 													/// Zaluzie pracovna stred nahoru
				  WAIT_ZAL_LOZNICE1 = FALSE
				  IF (ZAL_0MK_PRAC_Z2<6)
						{
						CALL 'ZL_VEN_KANCL_02_NAHORU'
						ZAL_0MK_PRAC_Z2=2
						}
				  WAIT ilightDLOUHY_STISK 'ZALUZIE LOZNICE'
						{
						WAIT_ZAL_LOZNICE1 = TRUE
						}			
				  } 
      CASE    5: {
				 WAIT_ZAL_LOZNICE1 = FALSE											
				  CALL 'ZL_VEN_KANCL_02_STOP'
				  }			
      CASE    6: { 													/// Zaluzie pracovna stred dolu
				  WAIT_ZAL_LOZNICE1 = FALSE
					IF (ZAL_0MK_PRAC_Z2<6)
						{
						CALL 'ZL_VEN_KANCL_02_DOLU'
						ZAL_0MK_PRAC_Z2=1
						}
				  WAIT ilightDLOUHY_STISK 'ZALUZIE LOZNICE'
						{
						WAIT_ZAL_LOZNICE1 = TRUE
						}			
				  } 
      CASE    7: { 													/// Zaluzie pracovna vpravo nahoru
				  WAIT_ZAL_LOZNICE1 = FALSE
				 IF (ZAL_0MK_PRAC_Z3<6)
						{
						CALL 'ZL_VEN_KANCL_03_NAHORU'
						ZAL_0MK_PRAC_Z3=2
						}
				  WAIT ilightDLOUHY_STISK 'ZALUZIE LOZNICE'
						{
						WAIT_ZAL_LOZNICE1 = TRUE
						}			
				  } 
      CASE    8:{  
				WAIT_ZAL_LOZNICE1 = FALSE
				 CALL 'ZL_VEN_KANCL_03_STOP'
				  }
      CASE    9: { 													/// Zaluzie pracovna vpravo dolu
				  WAIT_ZAL_LOZNICE1 = FALSE
				   IF (ZAL_0MK_PRAC_Z3<6)
						{
						CALL 'ZL_VEN_KANCL_03_DOLU'
						ZAL_0MK_PRAC_Z3=1
						}
				  WAIT ilightDLOUHY_STISK 'ZALUZIE LOZNICE'
						{
						WAIT_ZAL_LOZNICE1 = TRUE
						}			
				  } 
      CASE   10: {}
    }
  }
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_1PP_ZAL_PRACOVNA)
    SWITCH(nBtnIdx)
    {
      CASE	1:{ 													///
			  CANCEL_WAIT 'ZALUZIE LOZNICE'
			  IF (!WAIT_ZAL_LOZNICE1)
			  WAIT 1
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_02_DW)
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_02_DW)
			  } 
      CASE    2: {}
      CASE    3:  CANCEL_WAIT 'ZALUZIE LOZNICE'
			  IF (!WAIT_ZAL_LOZNICE1)
			  WAIT 1
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_02_DW)
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_02_DW)
      CASE    4:  CANCEL_WAIT 'ZALUZIE LOZNICE'
			  IF (!WAIT_ZAL_LOZNICE1)
			  WAIT 1
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_02_DW)
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_02_UP)
      CASE    5: {}
      CASE    6:  CANCEL_WAIT 'ZALUZIE LOZNICE'
			  IF (!WAIT_ZAL_LOZNICE1)
			  WAIT 1
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_02_DW)
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_02_UP)
      CASE    7:  CANCEL_WAIT 'ZALUZIE LOZNICE'
			  IF (!WAIT_ZAL_LOZNICE1)
			  WAIT 1
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_01_DW)
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_01_UP)
      CASE    8: {}
      CASE    9:  CANCEL_WAIT 'ZALUZIE LOZNICE'
			  IF (!WAIT_ZAL_LOZNICE1)
			  WAIT 1
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_01_DW)
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_01_UP)
      CASE   10: {}
    }
  }
}

BUTTON_EVENT[dvMyTP_01,nBTN_ZALUZIE_1NP_HOST]					///  ZALUZIE HOST VENKOVNI PORT 1 1360-1369
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_ZALUZIE_1NP_HOST)
    SWITCH(nBtnIdx)
    {
      CASE	1:{ 													/// Zaluzie U LESA
				  WAIT_ZAL_LOZNICE1 = FALSE
				  IF (ZAL_0MK_HOST_Z1<6)
						{
						  CALL 'ZL_VEN_HOST_01_NAHORU'
						  ZAL_0MK_HOST_Z1=1
						  WAIT ilightDLOUHY_STISK 'ZALUZIE LOZNICE'
								{
								WAIT_ZAL_LOZNICE1 = TRUE
								}		
						}
				  } 
      CASE    2: { 													/// Zaluzie 
				  WAIT_ZAL_LOZNICE1 = FALSE
				  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST1_DW)
				  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST1_UP)
				  } 
      CASE    3: { 													/// Zaluzie 
				  WAIT_ZAL_LOZNICE1 = FALSE
				  IF (ZAL_0MK_HOST_Z1<6)
						{
						  CALL 'ZL_VEN_HOST_01_DOLU'
						  ZAL_0MK_HOST_Z1=1
						  WAIT ilightDLOUHY_STISK 'ZALUZIE LOZNICE'
								{
								WAIT_ZAL_LOZNICE1 = TRUE
								}		
						}
				  } 
      CASE    4: { 													/// Zaluzie K DOMU
				  WAIT_ZAL_LOZNICE1 = FALSE
				  IF (ZAL_0MK_HOST_Z2<6)
						{
						  CALL 'ZL_VEN_HOST_02_NAHORU'
						  ZAL_0MK_HOST_Z2=1
						  WAIT ilightDLOUHY_STISK 'ZALUZIE LOZNICE'
								{
								WAIT_ZAL_LOZNICE1 = TRUE
								}		
						}
				  } 
      CASE    5: {
				 WAIT_ZAL_LOZNICE1 = FALSE											
				   CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST2_DW)
				  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST2_UP)
				  }			
      CASE    6: { 													/// Zaluzie 
				   WAIT_ZAL_LOZNICE1 = FALSE
				  IF (ZAL_0MK_HOST_Z2<6)
						{
						  CALL 'ZL_VEN_HOST_02_DOLU'
						  ZAL_0MK_HOST_Z2=2
						  WAIT ilightDLOUHY_STISK 'ZALUZIE LOZNICE'
								{
								WAIT_ZAL_LOZNICE1 = TRUE
								}
						}
				  } 
      CASE    7: { 													/// Zaluzie K UDIRNE
				   WAIT_ZAL_LOZNICE1 = FALSE
				  IF (ZAL_0MK_HOST_Z3<6)
						{
						  CALL 'ZL_VEN_HOST_03_NAHORU'
						  ZAL_0MK_HOST_Z3=1
						  WAIT ilightDLOUHY_STISK 'ZALUZIE LOZNICE'
								{
								WAIT_ZAL_LOZNICE1 = TRUE
								}		
						}
				  } 
      CASE    8:{  
					WAIT_ZAL_LOZNICE1 = FALSE
					CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST3_DW)
					CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST3_UP)
				  }
      CASE    9: { 													/// Zaluzi
				 WAIT_ZAL_LOZNICE1 = FALSE
				  IF (ZAL_0MK_HOST_Z3<6)
						{
						  CALL 'ZL_VEN_HOST_03_DOLU'
						  ZAL_0MK_HOST_Z3=2
						  WAIT ilightDLOUHY_STISK 'ZALUZIE LOZNICE'
								{
								WAIT_ZAL_LOZNICE1 = TRUE
								}	
						}
				  } 
      CASE   10: {}
    }
  }
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_ZALUZIE_1NP_HOST)
    SWITCH(nBtnIdx)
    {
      CASE	1:{ 													///
			  CANCEL_WAIT 'ZALUZIE LOZNICE'
			  IF (!WAIT_ZAL_LOZNICE1)
			  WAIT 1
			   CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST1_UP)
			   CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST1_DW)
			  } 
      CASE    2: {}
      CASE    3:  CANCEL_WAIT 'ZALUZIE LOZNICE'
			  IF (!WAIT_ZAL_LOZNICE1)
			  WAIT 1
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST1_UP)
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST1_DW)
      CASE    4:  CANCEL_WAIT 'ZALUZIE LOZNICE'
			  IF (!WAIT_ZAL_LOZNICE1)
			  WAIT 1
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST2_UP)
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST2_DW)
      CASE    5: {}
      CASE    6:  CANCEL_WAIT 'ZALUZIE LOZNICE'
			  IF (!WAIT_ZAL_LOZNICE1)
			  WAIT 1
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST2_UP)
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST2_DW)
      CASE    7:  CANCEL_WAIT 'ZALUZIE LOZNICE'
			  IF (!WAIT_ZAL_LOZNICE1)
			  WAIT 1
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST3_UP)
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST3_DW)
      CASE    8: {}
      CASE    9:  CANCEL_WAIT 'ZALUZIE LOZNICE'
			  IF (!WAIT_ZAL_LOZNICE1)
			  WAIT 1
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST3_UP)
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST3_DW)
      CASE   10: {}
    }
  }
}
BUTTON_EVENT[dvMyTP_01,1369]	
BUTTON_EVENT[dvMyTP_01,1370]
{
PUSH:
	  {
	  SWITCH(BUTTON.INPUT.CHANNEL)
		  {
			CASE 1369:{CALL 'ZaluzieVenek_Dolu_100'}
			CASE 1370:{CALL 'ZL_DUM_HOST_Dolu'}
			}
		}
}
			
(*
BUTTON_EVENT[dvMyTP_01,1360]	
BUTTON_EVENT[dvMyTP_01,1361]	
BUTTON_EVENT[dvMyTP_01,1362]	
BUTTON_EVENT[dvMyTP_01,1363]	
BUTTON_EVENT[dvMyTP_01,1364]	
BUTTON_EVENT[dvMyTP_01,1365]	
BUTTON_EVENT[dvMyTP_01,1366]	
BUTTON_EVENT[dvMyTP_01,1367]	
BUTTON_EVENT[dvMyTP_01,1368]
{
PUSH:
	  {
	  SWITCH(BUTTON.INPUT.CHANNEL)
		  {
		CASE 1360:{ 													//ZALUZIE HOST NAHORU 	LES 
			  WAIT_ZAL_LOZNICE1 = FALSE
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST1_DW)
			  WAIT 2
			  CALL 'ILIGHT_CHANNEL_ON' (ZL_VEN_HOST1_UP)   			
			  WAIT ilightDLOUHY_STISK 'ZALUZIE LOZNICE'
					{
					WAIT_ZAL_LOZNICE1 = TRUE
					}			
			  } 
		CASE 1361: { 													/// Zaluzie 
			  WAIT_ZAL_LOZNICE1 = FALSE
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST1_DW)
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST1_UP)
			  } 
		CASE 1362: { 													/// Zaluzie 
			  WAIT_ZAL_LOZNICE1 = FALSE
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST1_UP)
			  WAIT 2
			  CALL 'ILIGHT_CHANNEL_ON' (ZL_VEN_HOST1_DW)
			  WAIT ilightDLOUHY_STISK 'ZALUZIE LOZNICE'
					{
					WAIT_ZAL_LOZNICE1 = TRUE
					}			
			  } 
		CASE 1363: { 													//ZALUZIE HOST NAHORU 	Barak
			  WAIT_ZAL_LOZNICE1 = FALSE
			   CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST2_DW)
			  WAIT 2
			  CALL 'ILIGHT_CHANNEL_ON' (ZL_VEN_HOST2_UP)   
			  WAIT ilightDLOUHY_STISK 'ZALUZIE LOZNICE'
					{
					WAIT_ZAL_LOZNICE1 = TRUE
					}			
			  } 
		CASE 1364: {
			 WAIT_ZAL_LOZNICE1 = FALSE											
			   CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST2_DW)
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST2_UP)
			  }			
		CASE 1365: { 													/// Zaluzie 
			  WAIT_ZAL_LOZNICE1 = FALSE
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST2_UP)
			  WAIT 2
			  CALL 'ILIGHT_CHANNEL_ON' (ZL_VEN_HOST2_DW)
			  WAIT ilightDLOUHY_STISK 'ZALUZIE LOZNICE'
					{
					WAIT_ZAL_LOZNICE1 = TRUE
					}			
			  } 
		CASE 1366: { 													//ZALUZIE HOST NAHORU k pracovne
			  WAIT_ZAL_LOZNICE1 = FALSE
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST3_DW)
			  WAIT 2
			  CALL 'ILIGHT_CHANNEL_ON' (ZL_VEN_HOST3_UP)   
			  WAIT ilightDLOUHY_STISK 'ZALUZIE LOZNICE'
					{
					WAIT_ZAL_LOZNICE1 = TRUE
					}			
			  } 
		CASE 1367:{  
				WAIT_ZAL_LOZNICE1 = FALSE
				CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST3_DW)
				CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST3_UP)
			  }
		CASE 1368: { 													/// Zaluzi
			  WAIT_ZAL_LOZNICE1 = FALSE
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST3_UP)
			  WAIT 2
			  CALL 'ILIGHT_CHANNEL_ON' (ZL_VEN_HOST3_DW)
			  WAIT ilightDLOUHY_STISK 'ZALUZIE LOZNICE'
					{
					WAIT_ZAL_LOZNICE1 = TRUE
					}			
			  } 
    }
  }
  RELEASE:
  {
    SWITCH(BUTTON.INPUT.CHANNEL)
		{
		CASE 1360:{ 													//ZALUZIE Kancl NAHORU 	LES 
			  CANCEL_WAIT 'ZALUZIE LOZNICE'
			  IF (!WAIT_ZAL_LOZNICE1)
			  WAIT 1
			  CALL 'ILIGHT_CHANNEL_OFF' ((ZL_VEN_KANCL_02_DW)_DW)
			  CALL 'ILIGHT_CHANNEL_OFF' ((ZL_VEN_KANCL_02_DW)_UP)
			  } 
      CASE    2: {}
      CASE    3:  CANCEL_WAIT 'ZALUZIE LOZNICE'
			  IF (!WAIT_ZAL_LOZNICE1)
			  WAIT 1
			  CALL 'ILIGHT_CHANNEL_OFF' ((ZL_VEN_KANCL_02_DW)_DW)
			  CALL 'ILIGHT_CHANNEL_OFF' ((ZL_VEN_KANCL_02_DW)_UP)
      CASE    4:  CANCEL_WAIT 'ZALUZIE LOZNICE'
			  IF (!WAIT_ZAL_LOZNICE1)
			  WAIT 1
			  CALL 'ILIGHT_CHANNEL_OFF' ((ZL_VEN_KANCL_02_DW))
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_02_UP)
      CASE    5: {}
      CASE    6:  CANCEL_WAIT 'ZALUZIE LOZNICE'
			  IF (!WAIT_ZAL_LOZNICE1)
			  WAIT 1
			  CALL 'ILIGHT_CHANNEL_OFF' ((ZL_VEN_KANCL_02_DW))
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_02_UP)
      CASE    7:  CANCEL_WAIT 'ZALUZIE LOZNICE'
			  IF (!WAIT_ZAL_LOZNICE1)
			  WAIT 1
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_01_DW)
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_01_UP)
      CASE    8: {}
      CASE    9:  CANCEL_WAIT 'ZALUZIE LOZNICE'
			  IF (!WAIT_ZAL_LOZNICE1)
			  WAIT 1
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_01_DW)
			  CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_01_UP)
      CASE   10: {}
    }
  }
}
*)
//***************************************** ZALUZIE 1PP *******************************************************//
//***************************************** ZALUZIE 1NP *******************************************************//
BUTTON_EVENT[dvMyTP_01,nBTN_ZALUZIE_1NP_OBYVAK]						/// ZALUZIE OBYVAK - 1100 -1115
{
	 PUSH:
		  {
		  STACK_VAR INTEGER nBtnIdx
		  nBtnIdx = GET_LAST(nBTN_ZALUZIE_1NP_OBYVAK)
		  SWITCH(nBtnIdx)
				{
					 CASE	1:{ 													/// Zaluzie obyvak krb vlevo nahoru
						  WAIT_ZAL_OBYVAK1 = FALSE
						  IF (ZAL_1NP_OBYV_Z1<6)
							{
							CALL 'ZL_OBYVAK_KRBLEVA_NAHORU'
							ZAL_1NP_OBYV_Z1=2
							}
						  WAIT ilightDLOUHY_STISK 'ZALUZIE OBYVAK'
								{
								WAIT_ZAL_OBYVAK1 = TRUE
								}			
						  } 
					 CASE	2:{ 													/// Zaluzie obyvak krb vlevo stop
						  WAIT_ZAL_OBYVAK1 = FALSE
						 CALL 'ZL_OBYVAK_KRBLEVA_STOP'
						  } 
					 CASE	3:{ 													/// Zaluzie obyvak krb vlevo dolu
						  WAIT_ZAL_OBYVAK1 = FALSE
						  IF (ZAL_1NP_OBYV_Z1<6)
							{
							CALL 'ZL_OBYVAK_KRBLEVA_DOLU'
							ZAL_1NP_OBYV_Z1=1
							}
						  WAIT ilightDLOUHY_STISK 'ZALUZIE OBYVAK'
								{
								WAIT_ZAL_OBYVAK1 = TRUE
								}			
						  } 
					 CASE	4:{ 													/// 1104 Zaluzie obyvak krb vpravo nahoru
						  WAIT_ZAL_OBYVAK2 = FALSE
						  IF (ZAL_1NP_OBYV_Z2<6)
							{
							CALL 'ZL_OBYVAK_KRBPRAVA_NAHORU'
							ZAL_1NP_OBYV_Z2=2
							}
							WAIT ilightDLOUHY_STISK 'ZALUZIE OBYVAK'
								{
								WAIT_ZAL_OBYVAK2 = TRUE
								}			
						  } 
					 CASE	5:{ 													/// Zaluzie obyvak krb vpravo stop
						  WAIT_ZAL_OBYVAK2 = FALSE
						  CALL 'ZL_OBYVAK_KRBPRAVA_STOP'
						  } 
					 CASE	6:{ 													/// Zaluzie obyvak krb vpravo dolu
						  WAIT_ZAL_OBYVAK2 = FALSE
						  IF (ZAL_1NP_OBYV_Z2<6)
								{
								CALL 'ZL_OBYVAK_KRBPRAVA_DOLU'
								ZAL_1NP_OBYV_Z2=1
								}
						  WAIT ilightDLOUHY_STISK 'ZALUZIE OBYVAK'
								{
								WAIT_ZAL_OBYVAK2 = TRUE
								}			
						  } 
(*
					 CASE	7:{ 													///1103 obyvak zimni zahrada vpravo nahoru
						  WAIT_ZAL_OBYVAK3 = FALSE
						  IF (ZAL_1NP_ZZAH_Z4<6)
									{
								  CALL 'ZL_ZZAHRAD_VYCHODZ_NAHORU'
								  WAIT ilightDLOUHY_STISK 'ZALUZIE OBYVAK'
										{
										WAIT_ZAL_OBYVAK3 = TRUE
										}
									}
						  } 

					 CASE	8:{ 													/// Zaluzie obyvak zimni zahrada vpravo stop
						  WAIT_ZAL_OBYVAK3 = FALSE
						  CALL 'ZL_ZZAHRAD_VYCHODZ_STOP'
						  } 
					 CASE	9:{ 													/// Zaluzie obyvak zimni zahrada vpravo dolu
						  WAIT_ZAL_OBYVAK3 = FALSE
						  CALL 'ZL_ZZAHRAD_VYCHODZ_DOLU'
						  WAIT ilightDLOUHY_STISK 'ZALUZIE OBYVAK'
								{
								WAIT_ZAL_OBYVAK3 = TRUE
								}			
						  } 
					 CASE	10:{ 													///1109 Zaluzie obyvak zimni zahrada vlevo nahoru
						  WAIT_ZAL_OBYVAK4 = FALSE
						  CALL 'ZL_ZZAHRAD_VYCHODJ_NAHORU'
						  WAIT ilightDLOUHY_STISK 'ZALUZIE OBYVAK'
								{
								WAIT_ZAL_OBYVAK4 = TRUE
								}			
						  } 
					 CASE	11:{ 													/// Zaluzie obyvak zimni zahrada vlevo stop
						  WAIT_ZAL_OBYVAK4 = FALSE
						  CALL 'ZL_ZZAHRAD_VYCHODJ_STOP'
						  } 
					 CASE	12:{ 													/// Zaluzie obyvak zimni zahrada vlevo dolu
						  WAIT_ZAL_OBYVAK4 = FALSE
						  CALL 'ZL_ZZAHRAD_VYCHODJ_DOLU'
						  WAIT ilightDLOUHY_STISK 'ZALUZIE OBYVAK'
								{
								WAIT_ZAL_OBYVAK4 = TRUE
								}			
						  } 
					 CASE	13:{ 													///1112 Zaluzie obyvak zimni zahrada stred nahoru
						  WAIT_ZAL_OBYVAK5 = FALSE
						  CALL 'ZL_ZZAHRAD_DVERE_NAHORU'
						  WAIT ilightDLOUHY_STISK 'ZALUZIE OBYVAK'
								{
								WAIT_ZAL_OBYVAK5 = TRUE
								}			
						  } 
					 CASE	14:{ 													/// Zaluzie obyvak zimni zahrada stred stop
						  WAIT_ZAL_OBYVAK5 = FALSE
						  CALL 'ZL_ZZAHRAD_DVERE_STOP'
						  } 
					 CASE	15:{ 													/// Zaluzie obyvak zimni zahrada stred dolu
						  WAIT_ZAL_OBYVAK5 = FALSE
						  CALL 'ZL_ZZAHRAD_DVERE_DOLU'
						  WAIT ilightDLOUHY_STISK 'ZALUZIE OBYVAK'
								{
								WAIT_ZAL_OBYVAK5 = TRUE
								}			
						  } 
*)
				}
		  }
	 RELEASE:
		  {
		  STACK_VAR INTEGER nBtnIdx
		  nBtnIdx = GET_LAST(nBTN_ZALUZIE_1NP_OBYVAK)
		  SWITCH(nBtnIdx)
				{
					 CASE	1:{ 													///
							CANCEL_WAIT 'ZALUZIE OBYVAK'
							IF (!WAIT_ZAL_OBYVAK1)
							WAIT 5
							CALL 'ZL_OBYVAK_KRBLEVA_STOP'	
						  } 
					 CASE	3:{ 													///
						  CANCEL_WAIT 'ZALUZIE OBYVAK'
						  IF (!WAIT_ZAL_OBYVAK1)
						  WAIT 5
						  CALL 'ZL_OBYVAK_KRBLEVA_STOP'	
						  } 
					 CASE	4:{ 													///
						  CANCEL_WAIT 'ZALUZIE OBYVAK'
						  IF (!WAIT_ZAL_OBYVAK2)
						  WAIT 5
						  CALL 'ZL_OBYVAK_KRBPRAVA_STOP'	
						  } 
					 CASE	6:{ 													///
						  CANCEL_WAIT 'ZALUZIE OBYVAK'
						  IF (!WAIT_ZAL_OBYVAK2)
						  WAIT 5
						  CALL 'ZL_OBYVAK_KRBPRAVA_STOP'	
						  } 
(*
					 CASE	7:{ 													///
						  CANCEL_WAIT 'ZALUZIE OBYVAK'
						  IF (!WAIT_ZAL_OBYVAK3)
						  WAIT 5
						  CALL 'ZL_ZZAHRAD_VYCHODZ_STOP'	
						  } 
					 CASE	9:{ 													///
						  CANCEL_WAIT 'ZALUZIE OBYVAK'
						  IF (!WAIT_ZAL_OBYVAK3)
						  WAIT 5
						  CALL 'ZL_ZZAHRAD_VYCHODZ_STOP'	
						  } 
					 CASE	10:{ 													///
						  CANCEL_WAIT 'ZALUZIE OBYVAK'
						  IF (!WAIT_ZAL_OBYVAK4)
						  WAIT 5
						  CALL 'ZL_ZZAHRAD_VYCHODJ_STOP'	
						  } 
					 CASE	12:{ 													///
						  CANCEL_WAIT 'ZALUZIE OBYVAK'
						  IF (!WAIT_ZAL_OBYVAK4)
						  WAIT 5
						  CALL 'ZL_ZZAHRAD_VYCHODJ_STOP'	
						  } 
					 CASE	13:{ 													///
						  CANCEL_WAIT 'ZALUZIE OBYVAK'
						  IF (!WAIT_ZAL_OBYVAK5)
						  WAIT 5
						  CALL 'ZL_ZZAHRAD_DVERE_STOP'	
						  } 
					 CASE	15:{ 													///
						  CANCEL_WAIT 'ZALUZIE OBYVAK'
						  IF (!WAIT_ZAL_OBYVAK5)
						  WAIT 5
						  CALL 'ZL_ZZAHRAD_DVERE_STOP'	
						  } 
*)
				}
		  }
	 
}
BUTTON_EVENT[dvMyTP_01,nBTN_ZALUZIE_1NP_KOUPEL]	// 1NP Zaluzie male - wc, kuchyn a koupelna 1180 - 1191
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_ZALUZIE_1NP_KOUPEL)
    SWITCH(nBtnIdx)
    {
		CASE	1:{ 													/// zaluz koupelna  nahoru
			  WAIT_ZAL_2NP_KOUP = FALSE
			  CALL 'ZL_KOUP1NP_ZALUZ_NAHORU'
			  ZAL_1NP_KOUP_Z1 = 1
			  WAIT ilightDLOUHY_STISK 'ZALUZIE 2NP_KOUPEL'
					{
					WAIT_ZAL_2NP_KOUP = TRUE
					}			
			  } 
		CASE	2:{ 													///  stop
			  WAIT_ZAL_2NP_KOUP = FALSE
			  CALL 'ZL_KOUP1NP_ZALUZ_STOP'
			  } 
		CASE	3:{ 													///  dolu
			  WAIT_ZAL_2NP_KOUP = FALSE
			  CALL 'ZL_KOUP1NP_ZALUZ_DOLU'
			  ZAL_1NP_KOUP_Z1 = 1
			  WAIT ilightDLOUHY_STISK 'ZALUZIE 2NP_KOUPEL'
					{
					WAIT_ZAL_2NP_KOUP = TRUE
					}			
				} 
      CASE	4:{ 													/// koupelna Roleta  nahoru
			  WAIT_ZAL_2NP_KOUP = FALSE
			  CALL 'ILIGHT_SEQ_START' (SEQ_1NPKOR_UP,1)
			  ZAL_1NP_KOUP_Z1 = 1
			  WAIT ilightDLOUHY_STISK 'ZALUZIE 2NP_KOUPEL'
					{
					WAIT_ZAL_2NP_KOUP = TRUE
					}			
			  } 
		CASE	5:{ 													/// Roleta stop
			  WAIT_ZAL_2NP_KOUP = FALSE
			  CALL 'ILIGHT_SEQ_START' (SEQ_1NPKOR_UP,5)
			  } 
		CASE	6:{ 													/// Roleta dolu
			  WAIT_ZAL_2NP_KOUP = FALSE
			  CALL 'ILIGHT_SEQ_START' (SEQ_1NPKOR_DW,1)
			  ZAL_1NP_KOUP_Z1 = 1
			  WAIT ilightDLOUHY_STISK 'ZALUZIE 2NP_KOUPEL'
					{
					WAIT_ZAL_2NP_KOUP = TRUE
					}			
				} 
      CASE	7:{ 													/// kuchyn zaluz nahoru
			  WAIT_ZAL_2NP_KOUP = FALSE
			  CALL 'ZL_KUCHYN1NP_ZALUZ_NAHORU'
			  ZAL_1NP_KUCH_Z1 = 1
			  WAIT ilightDLOUHY_STISK 'ZALUZIE 2NP_KOUPEL'
					{
					WAIT_ZAL_2NP_KOUP = TRUE
					}			
			  } 
		CASE	8:{ 													/// stop
			  WAIT_ZAL_2NP_KOUP = FALSE
			  CALL 'ZL_KUCHYN1NP_ZALUZ_STOP'
			  } 
		CASE	9:{ 													/// dolu
			  WAIT_ZAL_2NP_KOUP = FALSE
			  CALL 'ZL_KUCHYN1NP_ZALUZ_DOLU'
			  ZAL_1NP_KUCH_Z1 = 1
			  WAIT ilightDLOUHY_STISK 'ZALUZIE 2NP_KOUPEL'
					{
					WAIT_ZAL_2NP_KOUP = TRUE
					}
				}
		CASE	10:{ 													/// wc zaluz nahoru
			  WAIT_ZAL_2NP_KOUP = FALSE
			  CALL 'ZL_WC1NP_ZALUZ_NAHORU'
			  ZAL_1NP_KUCH_Z1 = 1
			  WAIT ilightDLOUHY_STISK 'ZALUZIE 2NP_KOUPEL'
					{
					WAIT_ZAL_2NP_KOUP = TRUE
					}			
			  } 
		CASE	11:{ 													/// stop
			  WAIT_ZAL_2NP_KOUP = FALSE
			  CALL 'ZL_WC1NP_ZALUZ_STOP'
			  } 
		CASE	12:{ 													/// dolu
			  WAIT_ZAL_2NP_KOUP = FALSE
			  CALL 'ZL_WC1NP_ZALUZ_DOLU'
			  ZAL_1NP_KUCH_Z1 = 1
			  WAIT ilightDLOUHY_STISK 'ZALUZIE 2NP_KOUPEL'
					{
					WAIT_ZAL_2NP_KOUP = TRUE
					}
				}
		CASE	13:{ 													/// wc roleta nahoru
			  WAIT_ZAL_2NP_KOUP = FALSE
			  CALL 'ILIGHT_SEQ_START' (SEQ_1NPWCR_UP,1)
			  ZAL_1NP_KUCH_Z1 = 1
			  WAIT ilightDLOUHY_STISK 'ZALUZIE 2NP_KOUPEL'
					{
					WAIT_ZAL_2NP_KOUP = TRUE
					}			
			  } 
		CASE	14:{ 													/// stop
			  WAIT_ZAL_2NP_KOUP = FALSE
			  CALL 'ILIGHT_SEQ_START' (SEQ_1NPWCR_UP,5)
			  } 
		CASE	15:{ 													/// dolu
			  WAIT_ZAL_2NP_KOUP = FALSE
			  CALL 'ILIGHT_SEQ_START' (SEQ_1NPWCR_DW,1)
			  ZAL_1NP_KUCH_Z1 = 1
			  WAIT ilightDLOUHY_STISK 'ZALUZIE 2NP_KOUPEL'
					{
					WAIT_ZAL_2NP_KOUP = TRUE
					}	
				}
    }
  }
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_ZALUZIE_1NP_KOUPEL)
    SWITCH(nBtnIdx)
    {
	CASE	1:{ 													///
			  CANCEL_WAIT 'ZALUZIE 2NP_KOUPEL'
			  IF (!WAIT_ZAL_2NP_KOUP)
			  WAIT 5
			  CALL 'ZL_KOUP1NP_ZALUZ_STOP'	
			  } 
	CASE	3:{ 													///
			  CANCEL_WAIT 'ZALUZIE 2NP_KOUPEL'
			  IF (!WAIT_ZAL_2NP_KOUP)
			  WAIT 5
			  CALL 'ZL_KOUP1NP_ZALUZ_STOP'	
			  } 
	CASE	4:{ 													///
			  CANCEL_WAIT 'ZALUZIE 2NP_KOUPEL'
			  IF (!WAIT_ZAL_2NP_KOUP)
			  WAIT 5
			  CALL 'ILIGHT_SEQ_START' (SEQ_1NPKOR_UP,5)	
			  } 
	CASE	6:{ 													///
			  CANCEL_WAIT 'ZALUZIE 2NP_KOUPEL'
			  IF (!WAIT_ZAL_2NP_KOUP)
			  WAIT 5
			  CALL 'ILIGHT_SEQ_START' (SEQ_1NPKOR_DW,5)	
			  }
    CASE	7:{ 													///
			  CANCEL_WAIT 'ZALUZIE 2NP_KOUPEL'
			  IF (!WAIT_ZAL_2NP_KOUP)
			  WAIT 5
			  CALL 'ZL_KUCHYN1NP_ZALUZ_STOP'	
			  } 
	CASE	9:{ 													///
			  CANCEL_WAIT 'ZALUZIE 2NP_KOUPEL'
			  IF (!WAIT_ZAL_2NP_KOUP)
			  WAIT 5
			  CALL 'ZL_KUCHYN1NP_ZALUZ_STOP'	
			  }
	CASE	10:{ 													///
			  CANCEL_WAIT 'ZALUZIE 2NP_KOUPEL'
			  IF (!WAIT_ZAL_2NP_KOUP)
			  WAIT 5
			  CALL 'ZL_WC1NP_ZALUZ_STOP'	
			  } 
	CASE	12:{ 													///
			  CANCEL_WAIT 'ZALUZIE 2NP_KOUPEL'
			  IF (!WAIT_ZAL_2NP_KOUP)
			  WAIT 5
			  CALL 'ZL_WC1NP_ZALUZ_STOP'	
			  }
	CASE	13:{ 													///
			  CANCEL_WAIT 'ZALUZIE 2NP_KOUPEL'
			  IF (!WAIT_ZAL_2NP_KOUP)
			  WAIT 5
			  CALL 'ILIGHT_SEQ_START' (SEQ_1NPWCR_UP,5)	
			  } 
	CASE	15:{ 													///
			  CANCEL_WAIT 'ZALUZIE 2NP_KOUPEL'
			  IF (!WAIT_ZAL_2NP_KOUP)
			  WAIT 5
			  CALL 'ILIGHT_SEQ_START' (SEQ_1NPWCR_DW,5)	
			  }
    }
  }
}

BUTTON_EVENT[dvMyTP_02,nBTN_ZAL_ZIMNI]  /// ZAL Zimni Zahrada Port 2 1100-1120
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_ZAL_ZIMNI)
    SWITCH(nBtnIdx)
    {
      CASE	1:{ 													/// Zaluzie sever CHODI   -- 1100
			  WAIT_ZAL_OBYVAK6 = FALSE
			  IF (ZAL_1NP_ZZAH_Z5<6)
						{
						CALL 'ZL_ZZAHRAD_SEVER_NAHORU'
						ZAL_1NP_ZZAH_Z5 = 2
						}
						WAIT ilightDLOUHY_STISK 'ZALUZIE ZIMA'
							{
							WAIT_ZAL_OBYVAK6 = TRUE
							}			
			  } 
      CASE    2: {
					WAIT_ZAL_OBYVAK6 = FALSE
					CALL 'ZL_ZZAHRAD_SEVER_STOP'}
      CASE    3: { 													/// Zaluzie 1102
				  WAIT_ZAL_OBYVAK6 = FALSE
				  IF (ZAL_1NP_ZZAH_Z5<6)
						{
						CALL 'ZL_ZZAHRAD_SEVER_DOLU'
						ZAL_1NP_ZZAH_Z5 = 1
						}
					WAIT ilightDLOUHY_STISK 'ZALUZIE ZIMA'
						{
						WAIT_ZAL_OBYVAK6 = TRUE
						}			
			  } 
      CASE	4:{ 													/// ZZ ZALUZIE VLEVO OD VCHODU (JIH) 
			  WAIT_ZAL_OBYVAK6 = FALSE
			  IF (ZAL_1NP_ZZAH_Z1<6)
					{
					CALL 'ZL_ZZAHRAD_KRAJLEVY_NAHORU'
					ZAL_1NP_ZZAH_Z1 = 2
					}
				WAIT ilightDLOUHY_STISK 'ZALUZIE ZIMA'
					{
					WAIT_ZAL_OBYVAK6 = TRUE
					}			
			  } 
      CASE    5: {
					WAIT_ZAL_OBYVAK6 = FALSE
					CALL 'ZL_ZZAHRAD_KRAJLEVY_STOP'}
      CASE    6: { 													/// ZZ ZALUZIE VLEVO OD VCHODU (JIH)
			  WAIT_ZAL_OBYVAK6 = FALSE
			  IF (ZAL_1NP_ZZAH_Z1<6)
				{
				CALL 'ZL_ZZAHRAD_KRAJLEVY_DOLU'
				ZAL_1NP_ZZAH_Z1 = 1
				}
			  WAIT ilightDLOUHY_STISK 'ZALUZIE ZIMA'
					{
					WAIT_ZAL_OBYVAK6 = TRUE
					}			
			  } 
	  
      CASE	7:{ 													/// Zaluzie na panelu zapad cela strana vchod 2,3,4
			  WAIT_ZAL_OBYVAK6 = FALSE
			  CALL 'ZL_ZZAHRAD_VVYCHOD_NAHORU'
			  WAIT ilightDLOUHY_STISK 'ZALUZIE ZIMA'
					{
					//ZAL_1NP_ZZAH_Z2 = 2
					//ZAL_1NP_ZZAH_Z3 = 2
					//ZAL_1NP_ZZAH_Z4 = 2
					WAIT_ZAL_OBYVAK6 = TRUE
					}			
			  } 
      CASE    8: {CALL 'ZL_ZZAHRAD_VVYCHOD_STOP'}
      CASE    9: { 													/// Zaluzie
			  WAIT_ZAL_OBYVAK6 = FALSE
			  CALL 'ZL_ZZAHRAD_VVYCHOD_DOLU'
			  WAIT ilightDLOUHY_STISK 'ZALUZIE ZIMA'
					{
					WAIT_ZAL_OBYVAK6 = TRUE
					//ZAL_1NP_ZZAH_Z2 = 1
					//ZAL_1NP_ZZAH_Z3 = 1
					//ZAL_1NP_ZZAH_Z4 = 1
					}			
			  } 
      CASE	10:{ 													/// 2109 Zaluzie vlevo od dveri
			  WAIT_ZAL_OBYVAK6 = FALSE
			  IF (ZAL_1NP_ZZAH_Z2<6)
					{
					CALL 'ZL_ZZAHRAD_VYCHODJ_NAHORU'
					ZAL_1NP_ZZAH_Z2 = 2
					}
					WAIT ilightDLOUHY_STISK 'ZALUZIE ZIMA'
						{
						WAIT_ZAL_OBYVAK6 = TRUE
						}			
			  } 
      CASE    11: {CALL 'ZL_ZZAHRAD_VYCHODJ_STOP'}
      CASE    12: { 													/// Zaluzie
			  WAIT_ZAL_OBYVAK6 = FALSE
				IF (ZAL_1NP_ZZAH_Z2<6)
					{
					CALL 'ZL_ZZAHRAD_VYCHODJ_DOLU'
					ZAL_1NP_ZZAH_Z2 = 1
					}
					WAIT ilightDLOUHY_STISK 'ZALUZIE ZIMA'
						{
						WAIT_ZAL_OBYVAK6 = TRUE
						}			
			  } 
      CASE	13:{ 													/// 1112 Zaluzie vpravo od dveri
			  WAIT_ZAL_OBYVAK6 = FALSE
			   IF (ZAL_1NP_ZZAH_Z4<6)
					{
					CALL 'ZL_ZZAHRAD_VYCHODZ_NAHORU'
					ZAL_1NP_ZZAH_Z4 = 2
					}
				WAIT ilightDLOUHY_STISK 'ZALUZIE ZIMA'
					{
					WAIT_ZAL_OBYVAK6 = TRUE
					}			
			  } 
      CASE    14: {CALL 'ZL_ZZAHRAD_VYCHODZ_STOP'}
      CASE    15: { 													///1114 Zaluzie vpravo od dveri
			  WAIT_ZAL_OBYVAK6 = FALSE
			  IF (ZAL_1NP_ZZAH_Z4<6)
				{
				CALL 'ZL_ZZAHRAD_VYCHODZ_DOLU'
				ZAL_1NP_ZZAH_Z4 = 1
				}
			  WAIT ilightDLOUHY_STISK 'ZALUZIE ZIMA'
					{
					WAIT_ZAL_OBYVAK6 = TRUE
					}			
				} 
      CASE	16:{ 													///2015 Zaluzie dvere
			  WAIT_ZAL_OBYVAK6 = FALSE
			  IF (ZAL_1NP_ZZAH_Z3<6)
				{
				CALL 'ZL_ZZAHRAD_DVERE_NAHORU'
				ZAL_1NP_ZZAH_Z3 = 2
				}
			  WAIT ilightDLOUHY_STISK 'ZALUZIE ZIMA'
					{
					WAIT_ZAL_OBYVAK6 = TRUE
					}			
			  } 
	CASE    17: {CALL 'ZL_ZZAHRAD_DVERE_STOP'}
	CASE    18: { 													///2017 Zaluzie dvere
			  WAIT_ZAL_OBYVAK6 = FALSE
			  IF (ZAL_1NP_ZZAH_Z3<6)
				{
				CALL 'ZL_ZZAHRAD_DVERE_DOLU'
				ZAL_1NP_ZZAH_Z3 = 1
				}
				WAIT ilightDLOUHY_STISK 'ZALUZIE ZIMA'
					{
					WAIT_ZAL_OBYVAK6 = TRUE
					}			
			  } 
      CASE   19: {}
      CASE   20: {}
      CASE   21: {}
    }
  }
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_ZAL_ZIMNI)
    SWITCH(nBtnIdx)
    {
      CASE	1:{ 													///
			  CANCEL_WAIT  'ZALUZIE ZIMA'
			  IF (!WAIT_ZAL_OBYVAK6)
					CALL 'ZL_ZZAHRAD_SEVER_STOP'	
			  } 
      CASE    2: {}
      CASE    3: { 													///
				CANCEL_WAIT  'ZALUZIE ZIMA'
				IF (!WAIT_ZAL_OBYVAK6)
					CALL 'ZL_ZZAHRAD_SEVER_STOP'	
			  } 
      CASE	4:{ 													///
			  CANCEL_WAIT  'ZALUZIE ZIMA'
			  IF (!WAIT_ZAL_OBYVAK6)
					CALL 'ZL_ZZAHRAD_KRAJLEVY_STOP'	
			  } 
      CASE    5: {}
      CASE    6: { 													///
				CANCEL_WAIT  'ZALUZIE ZIMA'
				IF (!WAIT_ZAL_OBYVAK6)
					CALL 'ZL_ZZAHRAD_KRAJLEVY_STOP'	
			  } 
      CASE	7:{ 													///
			  CANCEL_WAIT  'ZALUZIE ZIMA'
			  IF (!WAIT_ZAL_OBYVAK6)
					CALL 'ZL_ZZAHRAD_VVYCHOD_STOP'	
			  } 
      CASE    8: {}
      CASE    9: { 													///
				CANCEL_WAIT  'ZALUZIE ZIMA'
				IF (!WAIT_ZAL_OBYVAK6)
					CALL 'ZL_ZZAHRAD_VVYCHOD_STOP'	
			  } 
      CASE	10:{ 													///
			  CANCEL_WAIT  'ZALUZIE ZIMA'
			  IF (!WAIT_ZAL_OBYVAK6)
					CALL 'ZL_ZZAHRAD_VYCHODJ_STOP'	
			  } 
      CASE    11: {}
      CASE    12: { 													///
				CANCEL_WAIT  'ZALUZIE ZIMA'
				IF (!WAIT_ZAL_OBYVAK6)
					CALL 'ZL_ZZAHRAD_VYCHODJ_STOP'	
			  } 
       CASE	13:{ 													///
			  CANCEL_WAIT  'ZALUZIE ZIMA'
			  IF (!WAIT_ZAL_OBYVAK6)
					CALL 'ZL_ZZAHRAD_VYCHODZ_STOP'	
			  } 
      CASE    14: {}
      CASE    15: { 													///
				CANCEL_WAIT  'ZALUZIE ZIMA'
				IF (!WAIT_ZAL_OBYVAK6)
					CALL 'ZL_ZZAHRAD_VYCHODZ_STOP'	
			  } 
       CASE	16:{ 													///
			  CANCEL_WAIT  'ZALUZIE ZIMA'
			  IF (!WAIT_ZAL_OBYVAK6)
					CALL 'ZL_ZZAHRAD_DVERE_STOP'	
			  } 
      CASE    17: {}
      CASE    18: { 													///
				CANCEL_WAIT  'ZALUZIE ZIMA'
				IF (!WAIT_ZAL_OBYVAK6)
					CALL 'ZL_ZZAHRAD_DVERE_STOP'	
			  } 
      CASE   19: {}
      CASE   20: {}
      CASE   21: {}
    }
  }
}
//***************************************** ZALUZIE 2NP *******************************************************//


BUTTON_EVENT[dvMyTP_01,nBTN_ZALUZIE_2NP_LOZNICE]						/// ZALUZIE LOZNICE - 1201
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_ZALUZIE_2NP_LOZNICE)
    SWITCH(nBtnIdx)
    {
					 CASE	1:{ 													/// Zaluzie loznice vlevo nahoru
							  WAIT_ZAL_LOZNICE1 = FALSE
							  IF (ZAL_2NP_LOZN_Z1<6)
									{
									  CALL 'ZL_2NP_LOZNICE_01_NAHORU'
									  ZAL_2NP_LOZN_Z1 = 1
									  WAIT ilightDLOUHY_STISK 'ZALUZIE LOZNICE'
											{
											WAIT_ZAL_LOZNICE1 = TRUE
											}
								}
						  } 
					 CASE	2:{ 													/// Zaluzie loznice vlevo stop
						  WAIT_ZAL_LOZNICE1 = FALSE
						  CALL 'ZL_2NP_LOZNICE_01_STOP'
						  } 
					 CASE	3:{ 													/// Zaluzie loznice vlevo dolu
						  WAIT_ZAL_LOZNICE1 = FALSE
						  IF (ZAL_2NP_LOZN_Z1<6)
									{
								  CALL 'ZL_2NP_LOZNICE_01_DOLU'
								  ZAL_2NP_LOZN_Z1 = 2
								  WAIT ilightDLOUHY_STISK 'ZALUZIE LOZNICE'
										{
										WAIT_ZAL_LOZNICE1 = TRUE
										}	
									}
						  } 
					 CASE	4:{ 													/// Zaluzie loznice vpravo nahoru
						  WAIT_ZAL_LOZNICE2 = FALSE
						 IF (ZAL_2NP_LOZN_Z2<6)
									{
									 CALL 'ZL_2NP_LOZNICE_02_NAHORU'
									  ZAL_2NP_LOZN_Z2 = 1
									  WAIT ilightDLOUHY_STISK 'ZALUZIE LOZNICE'
											{
											WAIT_ZAL_LOZNICE2 = TRUE
											}	
									}
						  } 
					 CASE	5:{ 													/// Zaluzie loznice vpravo stop
						  WAIT_ZAL_LOZNICE2 = FALSE
						  CALL 'ZL_2NP_LOZNICE_02_STOP'
						  } 
					 CASE	6:{ 													/// Zaluzie loznice vpravo dolu
						  WAIT_ZAL_LOZNICE2 = FALSE
						 IF (ZAL_2NP_LOZN_Z2<6)
									{
									 CALL 'ZL_2NP_LOZNICE_02_DOLU'
									  ZAL_2NP_LOZN_Z2 = 2
									  WAIT ilightDLOUHY_STISK 'ZALUZIE LOZNICE'
											{
											WAIT_ZAL_LOZNICE2 = TRUE
											}	
									}
						  } 
				}
		  }
	 RELEASE:
		  {
		  STACK_VAR INTEGER nBtnIdx
		  nBtnIdx = GET_LAST(nBTN_ZALUZIE_2NP_LOZNICE)
		  SWITCH(nBtnIdx)
				{
					 CASE	1:{ 													///
						  CANCEL_WAIT 'ZALUZIE LOZNICE'
						  IF (!WAIT_ZAL_LOZNICE1)
						  WAIT 5
						  CALL 'ZL_2NP_LOZNICE_01_STOP'	
						  } 
					 CASE	3:{ 													///
						  CANCEL_WAIT 'ZALUZIE LOZNICE'
						  IF (!WAIT_ZAL_LOZNICE1)
						  WAIT 5
						  CALL 'ZL_2NP_LOZNICE_01_STOP'	
						  } 
					 CASE	4:{ 													///
						  CANCEL_WAIT 'ZALUZIE LOZNICE'
						  IF (!WAIT_ZAL_LOZNICE2)
						  WAIT 5
						  CALL 'ZL_2NP_LOZNICE_02_STOP'
						  } 
					 CASE	6:{ 													///
						  CANCEL_WAIT 'ZALUZIE LOZNICE'
						  IF (!WAIT_ZAL_LOZNICE2)
						  WAIT 5
						  CALL 'ZL_2NP_LOZNICE_02_STOP'	
						  } 
				}
		  }
}

//***************************************** ZALUZIE 2NP *******************************************************//
BUTTON_EVENT[dvMyTP_01,nBTN_ZALUZIE_2NP_DETI]							/// ZALUZIE DETI - 1210
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_ZALUZIE_2NP_DETI)
    SWITCH(nBtnIdx)
		  {
					 CASE	1:{ 													/// 1210 Roleta detsky pokoj vlevo nahoru
						  WAIT_ZAL_DETI1 = FALSE
						  CALL 'ILIGHT_SEQ_START' (SEQ_2NPDRL_UP,1)
						  ZAL_2NP_DETP_Z1 = 1
						  WAIT ilightDLOUHY_STISK 'ZALUZIE DETI'
								{
								WAIT_ZAL_DETI1 = TRUE
								}			
						  } 
					 CASE	2:{ 													/// 1211 Roleta detsky pokoj okno vlevo stop
						  WAIT_ZAL_DETI1 = FALSE
						  CALL 'ILIGHT_SEQ_START' (SEQ_2NPDRL_DW,5)
						  } 
					 CASE	3:{ 													/// 1212 Roleta detsky pokoj okno vlevo dolu
						  WAIT_ZAL_DETI1 = FALSE
						  CALL 'ILIGHT_SEQ_START' (SEQ_2NPDRL_DW,1)
						ZAL_2NP_DETP_Z1 = 2
						  WAIT ilightDLOUHY_STISK 'ZALUZIE DETI'
								{
								WAIT_ZAL_DETI1 = TRUE
								}			
						  } 
					 CASE	4:{ 													/// 1213 Roleta detsky pokoj okno vpravo nahoru
						  WAIT_ZAL_DETI2 = FALSE
						  CALL 'ILIGHT_SEQ_START' (SEQ_2NPDRP_UP,1)
						  ZAL_2NP_DETP_Z3 = 2
						  WAIT ilightDLOUHY_STISK 'ZALUZIE DETI'
								{
								WAIT_ZAL_DETI2 = TRUE
								}			
						  } 
					 CASE	5:{ 													/// 1214 Roleta detsky pokoj okno vpravo stop
						  WAIT_ZAL_DETI2 = FALSE
						  CALL 'ILIGHT_SEQ_START' (SEQ_2NPDRP_DW,5)
						  } 
					 CASE	6:{ 													/// 1215 Roleta detsky pokoj okno vpravo dolu
						  WAIT_ZAL_DETI2 = FALSE
						  CALL 'ILIGHT_SEQ_START' (SEQ_2NPDRP_DW,1)
						  ZAL_2NP_DETP_Z3 = 1
						  WAIT ilightDLOUHY_STISK 'ZALUZIE DETI'
								{
								WAIT_ZAL_DETI2 = TRUE
								}			
						  } 
					 CASE	7:{ 													/// 1216 Zaluzie detsky pokoj balkon nahoru
						  WAIT_ZAL_DETI3 = FALSE
						  CALL 'ZL_2NP_DETPOK_02_NAHORU'
						  ZAL_2NP_DETP_Z2 = 2
						  WAIT ilightDLOUHY_STISK 'ZALUZIE DETI'
								{
								WAIT_ZAL_DETI3 = TRUE
								}			
						  } 
					 CASE	8:{ 													/// 1217 Zaluzie detsky pokoj balkon stop
						  WAIT_ZAL_DETI3 = FALSE
						  CALL 'ZL_2NP_DETPOK_02_STOP'
						  } 
					 CASE	9:{ 													/// 1218 Zaluzie detsky pokoj balkon dolu
						  WAIT_ZAL_DETI3 = FALSE
						  CALL 'ZL_2NP_DETPOK_02_DOLU'
						  ZAL_2NP_DETP_Z2 = 1
						  WAIT ilightDLOUHY_STISK 'ZALUZIE DETI'
								{
								WAIT_ZAL_DETI3 = TRUE
								}			
						  } 
		  }
  }
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_ZALUZIE_2NP_DETI)
    SWITCH(nBtnIdx)
    {
					 CASE	1:{ 													///
						  CANCEL_WAIT 'ZALUZIE DETI'
						  IF (!WAIT_ZAL_DETI1)
						  WAIT 5
						  CALL 'ZL_2NP_DETPOK_01_STOP'	
						  } 
					 CASE	3:{ 													///
						  CANCEL_WAIT 'ZALUZIE DETI'
						  IF (!WAIT_ZAL_DETI1)
						  WAIT 5
						  CALL 'ZL_2NP_DETPOK_01_STOP'	
						  } 
					 CASE	4:{ 													///
						  CANCEL_WAIT 'ZALUZIE DETI'
						  IF (!WAIT_ZAL_DETI2)
						  WAIT 5
						  CALL 'ZL_2NP_DETPOK_02_STOP'
						  } 
					 CASE	6:{ 													///
						  CANCEL_WAIT 'ZALUZIE DETI'
						  IF (!WAIT_ZAL_DETI2)
						  WAIT 5
						  CALL 'ZL_2NP_DETPOK_02_STOP'	
						  } 
					 CASE	7:{ 													///
						  CANCEL_WAIT 'ZALUZIE DETI'
						  IF (!WAIT_ZAL_DETI3)
						  WAIT 5
						 CALL 'ZL_2NP_DETPOK_03_STOP'
						  } 
					 CASE	9:{ 													///
						  CANCEL_WAIT 'ZALUZIE DETI'
						  IF (!WAIT_ZAL_DETI3)
						  WAIT 5
						  CALL 'ZL_2NP_DETPOK_03_STOP'	
						  } 
    }
  }
}
BUTTON_EVENT[dvMyTP_01,nBTN_ZALUZIE_2NP_HALA]							/// ZALUZIE HALA - 1080
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_ZALUZIE_2NP_HALA)
    SWITCH(nBtnIdx)
		  {
					 CASE	1:{ 													///
						  WAIT_ZAL_HALA1 = FALSE
						  CALL 'ZL_2NP_HALA_01_NAHORU'
						  ZAL_2NP_HALA_Z3 = 1
						  WAIT ilightDLOUHY_STISK 'ZALUZIE HALA'
								{
								WAIT_ZAL_HALA1 = TRUE
								}			
						  } 
					 CASE	2:{ 													/// 
						  WAIT_ZAL_HALA1 = FALSE
						  CALL 'ZL_2NP_HALA_01_STOP'
						  } 
					 CASE	3:{ 													/// 
						  WAIT_ZAL_HALA1 = FALSE
						  CALL 'ZL_2NP_HALA_01_DOLU'
						  ZAL_2NP_HALA_Z3 = 1
						  WAIT ilightDLOUHY_STISK 'ZALUZIE HALA'
								{
								WAIT_ZAL_HALA1 = TRUE
								}			
						  } 
					 CASE	4:{ 													/// 
						  WAIT_ZAL_HALA2 = FALSE
						  CALL 'ZL_2NP_HALA_02_NAHORU'
						  ZAL_2NP_HALA_Z2 = 1
						  WAIT ilightDLOUHY_STISK 'ZALUZIE HALA'
								{
								WAIT_ZAL_HALA2 = TRUE
								}			
						  } 
					 CASE	5:{ 													/// 
						  WAIT_ZAL_HALA2 = FALSE
						  CALL 'ZL_2NP_HALA_02_STOP'
						  } 
					 CASE	6:{ 													/// 
						  WAIT_ZAL_HALA2 = FALSE
						  CALL 'ZL_2NP_HALA_02_DOLU'
						  ZAL_2NP_HALA_Z2 = 1
						  WAIT ilightDLOUHY_STISK 'ZALUZIE HALA'
								{
								WAIT_ZAL_HALA2 = TRUE
								}			
						  } 
					 CASE	7:{ 													///  nahoru
						  WAIT_ZAL_HALA3 = FALSE
						  CALL 'ZL_2NP_HALA_03_NAHORU'
						  ZAL_2NP_HALA_Z1 = 1
						  WAIT ilightDLOUHY_STISK 'ZALUZIE HALA'
								{
								WAIT_ZAL_HALA3 = TRUE
								}			
						  } 
					 CASE	8:{ 													///  stop
						  WAIT_ZAL_HALA3 = FALSE
						  CALL 'ZL_2NP_HALA_03_STOP'
						  } 
					 CASE	9:{ 													///  dolu
						  WAIT_ZAL_HALA3 = FALSE
						  CALL 'ZL_2NP_HALA_03_DOLU'
						  ZAL_2NP_HALA_Z1 = 1
						  WAIT ilightDLOUHY_STISK 'ZALUZIE HALA'
								{
								WAIT_ZAL_HALA3 = TRUE
								}			
						  } 
		  }
  }
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_ZALUZIE_2NP_HALA)
    SWITCH(nBtnIdx)
    {
					 CASE	1:{ 													///
						  CANCEL_WAIT 'ZALUZIE HALA'
						  IF (!WAIT_ZAL_HALA1)
						  WAIT 5
						  CALL 'ZL_2NP_HALA_01_STOP'	
						  } 
					 CASE	3:{ 													///
						  CANCEL_WAIT 'ZALUZIE HALA'
						  IF (!WAIT_ZAL_HALA1)
						  WAIT 5
						  CALL 'ZL_2NP_HALA_01_STOP'	
						  } 
					 CASE	4:{ 													///
						  CANCEL_WAIT 'ZALUZIE HALA'
						  IF (!WAIT_ZAL_HALA2)
						  WAIT 5
						  CALL 'ZL_2NP_HALA_02_STOP'	
						  } 
					 CASE	6:{ 													///
						  CANCEL_WAIT 'ZALUZIE HALA'
						  IF (!WAIT_ZAL_HALA2)
						  WAIT 5
						  CALL 'ZL_2NP_HALA_02_STOP'	
						  } 
					 CASE	7:{ 													///
						  CANCEL_WAIT 'ZALUZIE HALA'
						  IF (!WAIT_ZAL_HALA3)
						  WAIT 5
						  CALL 'ZL_2NP_HALA_03_STOP'	
						  } 
					 CASE	9:{ 													///
						  CANCEL_WAIT 'ZALUZIE HALA'
						  IF (!WAIT_ZAL_HALA3)
						  WAIT 5
						  CALL 'ZL_2NP_HALA_03_STOP'	
						  } 
    }
  }
}
BUTTON_EVENT[dvMyTP_01,nBTN_ZALUZIE_2NP_KOUPEL]							/// 2NP ZALUZIE KOUPELNA - 1350
{
  PUSH:
	{
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_ZALUZIE_2NP_KOUPEL)
    SWITCH(nBtnIdx)
		  {
					 CASE	1:{ 													/// Roleta  nahoru
						  WAIT_ZAL_2NP_KOUP = FALSE
						  CALL 'ZL_2NP_KOUPELNA_NAHORU'
						  ZAL_2NP_KOUP_Z1 = 1
						  WAIT ilightDLOUHY_STISK 'ZALUZIE 2NP_KOUPEL'
								{
								WAIT_ZAL_2NP_KOUP = TRUE
								}			
						  } 
					 CASE	2:{ 													/// Roleta stop
						  WAIT_ZAL_2NP_KOUP = FALSE
						  CALL 'ZL_2NP_KOUPELNA_STOP'
						  } 
					 CASE	3:{ 													/// Roleta do dolu
						  WAIT_ZAL_2NP_KOUP = FALSE
						  CALL 'ZL_2NP_KOUPELNA_DOLU'
						  ZAL_2NP_KOUP_Z1 = 1
						  WAIT ilightDLOUHY_STISK 'ZALUZIE 2NP_KOUPEL'
								{
								WAIT_ZAL_2NP_KOUP = TRUE
								}			
							} 
			} 
	}
  RELEASE:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_ZALUZIE_2NP_KOUPEL)
    SWITCH(nBtnIdx)
    {
					 CASE	1:{ 													///
						  CANCEL_WAIT 'ZALUZIE 2NP_KOUPEL'
						  IF (!WAIT_ZAL_2NP_KOUP)
						  WAIT 5
						  CALL 'ILIGHT_SEQ_START' (SEQ_2NPDRL_UP,5)	
						  } 
					 CASE	3:{ 													///
						  CANCEL_WAIT 'ZALUZIE 2NP_KOUPEL'
						  IF (!WAIT_ZAL_2NP_KOUP)
						  WAIT 5
						  CALL 'ILIGHT_SEQ_START' (SEQ_2NPDRL_DW,5)	
						  } 
    }
  }
}
BUTTON_EVENT[dvMyTP_01,2371]									/// MANUAL NOC
{
  PUSH:
    {
	 CALL 'ILIGHT_SEQ_START' (SEQ_CIDLO_NOC,1)
	 WAIT 13
	 CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_FASADA_01)
	 CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_FASADA_02)
	 CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_FASADA_03)
	 CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_FASADA_04)
	 CALL 'ILIGHT_CHANNEL_OFF' (SV_2NP_FASADA_05)
	 }
}
BUTTON_EVENT[dvMyTP_01,2372]									/// MANUAL auto
{
  PUSH:
    {
	 MANUAL_NOC = 0
	 }
}
BUTTON_EVENT[dvMyTP_01,2373]									/// MANUAL DEN 
{
  PUSH:
    {
	CALL 'ILIGHT_SEQ_START' (SEQ_CIDLO_DEN,7)
	}
}


BUTTON_EVENT[dvMyTP_01,2380]									/// MANUAL NOC/DEN
{
  PUSH:
    {
	 CALL 'NOCNI_REZIM_PANEL'
	 IF (TIMELINE_ACTIVE(TL_MANUAL_NOC))TIMELINE_KILL(TL_MANUAL_NOC)
	 TIMELINE_CREATE(TL_MANUAL_NOC,CAS_MANUAL_NOC,11,TIMELINE_RELATIVE,TIMELINE_ONCE) 
	 ON [dvMyTP_01,2380]
	 OFF [dvMyTP_01,2381]
	 OFF [dvMyTP_01,2382]
	 }
}
BUTTON_EVENT[dvMyTP_01,2381]									/// MANUAL NOC/DEN
{
  PUSH:
    {
	 CALL 'DENNI_REZIM_PANEL'
	 IF (TIMELINE_ACTIVE(TL_MANUAL_NOC))
		 {
		 TIMELINE_KILL(TL_MANUAL_NOC)
		 }
	 TIMELINE_CREATE(TL_MANUAL_NOC,CAS_MANUAL_NOC,11,TIMELINE_RELATIVE,TIMELINE_ONCE)  
	 ON [dvMyTP_01,2381]
	 OFF [dvMyTP_01,2380]
	 OFF [dvMyTP_01,2382]
	 }
}
BUTTON_EVENT[dvMyTP_01,2382]									/// MANUAL NOC/DEN VYP
{
  PUSH:
    {
	 CALL 'VRATIT_AUTOMAT_PANEL'
	 ON [dvMyTP_01,2382]
	 OFF [dvMyTP_01,2381]
	 OFF [dvMyTP_01,2380]
	 }
}

BUTTON_EVENT[dvMyTP_01,2500]									/// ZALUZ 1NP DOLU
{
  PUSH:
    {
	
	 CALL 'Zaluzie1_Dolu'
	 //WAIT 800
	 ///CALL 'ZALUZIE_1 NP PAUSE'
	 //SEND_COMMAND dvMyTP_01,"'^TXT-850,0,','ZALUZIE 1NP PAUSE'"
	 }
}
BUTTON_EVENT[dvMyTP_01,2501]									/// ZALUZ 1NP NAHORU
{
  PUSH:
    {
	 CALL 'Zaluzie1_Nahoru'
	 // CALL 'ZALUZIE_1 NP PAUSE'
	 // SEND_COMMAND dvMyTP_01,"'^TXT-850,0,','ZALUZIE 1NP PAUSE'"
	 }
}
BUTTON_EVENT[dvMyTP_01,2502]									/// ZALUZ 2NP DOLU
{
  PUSH:
    {
	 // CALL 'Zaluzie2_Dolu'		// DOCASNE
	 CALL 'Zaluzie1_Dolu_Srovnat'
	 }
}

BUTTON_EVENT[dvMyTP_01,2503]									/// ZALUZ 2NP NAHORU
{
  PUSH:
    {
	 CALL 'Zaluzie2_Nahoru'
	  ///CALL 'ZALUZIE_2 NP PAUSE'
	  ///SEND_COMMAND dvMyTP_01,"'^TXT-850,0,','ZALUZIE 2NP PAUSE'"
	 }
}

BUTTON_EVENT[dvMyTP_01,2590]									/// ZALUZIE ALL UP
{
  PUSH:
    {
	CALL 'ZALUZIE_RESET'
	 WAIT 3
	 CALL 'ZaluzieALL_Nahoru'
	 WAIT 15000
	 CALL 'ZALUZIE_1 NP PAUSE'
	 CALL 'ZALUZIE_2 NP PAUSE'
	 SEND_COMMAND dvMyTP_01,"'^TXT-850,0,','ZALUZIE ALL PAUSE'"
	 }
}
BUTTON_EVENT[dvMyTP_01,2591]									/// ZALUZIE ALL DOWN
{
  PUSH:
    {
	 CALL 'ZALUZIE_RESET'
	 WAIT 3
	 CALL 'ZaluzieALL_Dolu'
	 WAIT 15000
	 CALL 'ZALUZIE_1 NP PAUSE'
	 CALL 'ZALUZIE_2 NP PAUSE'
	 SEND_COMMAND dvMyTP_01,"'^TXT-850,0,','ZALUZIE ALL PAUSE'"
	 }
}
BUTTON_EVENT[dvMyTP_01,2592]									/// ZALUZIE ALL STOP
{
  PUSH:
    {
	 //IF(TIMELINE_ACTIVE(TLCASZAL_ALL_DOWN))TIMELINE_KILL(TLCASZAL_ALL_DOWN)
	 //IF(TIMELINE_ACTIVE(TLCASZAL_ALL_UP))TIMELINE_KILL(TLCASZAL_ALL_UP)
	 CALL 'ZaluzieALL_Stop'
	 WAIT 990
	 CALL 'ZALUZIE_1 NP PAUSE'
	 CALL 'ZALUZIE_2 NP PAUSE'
	 SEND_COMMAND dvMyTP_01,"'^TXT-850,0,','ZALUZIE ALL PAUSE'"
	 }
}
BUTTON_EVENT[dvMyTP_01,2593]									/// ZALUZIE LETO
{
  PUSH:
    {
	 LETO_ZIMA = FALSE   // 0 JE LETO
	 CALL 'Zaluzie_Display_Feedback'
	 }
}
BUTTON_EVENT[dvMyTP_01,2594]									/// ZALUZIE ZIMA
{
  PUSH:
    {
	 CALL 'ZALUZIE_RESET'
	 }
}
BUTTON_EVENT[dvMyTP_01,2595]									/// ZALUZIE DOVOLENA
{
  PUSH:
    {
	 DOVOLENA=TRUE
	 CALL 'Zaluzie_Display_Feedback'
	 }
}
BUTTON_EVENT[dvMyTP_01,2596]									/// ZALUZIE NORMAL
{
  PUSH:
    {
	 DOVOLENA=FALSE
	 CALL 'Zaluzie_Display_Feedback'
	 }
}
BUTTON_EVENT[dvMyTP_01,1488]									/// AUTOMAT
{
  PUSH:
    {
	 MANUALNI_OVLADANI = FALSE
	 CALL 'Zaluzie_Display_Feedback'
	 }
}
BUTTON_EVENT[dvMyTP_01,1489]									/// MANUAL
{
  PUSH:
    {
	 MANUALNI_OVLADANI = TRUE
	 CALL 'Zaluzie_Display_Feedback'
	 }
}


BUTTON_EVENT[dvMyTP_03,90]									/// Tlacitko pocasi nacist teploty
{
  PUSH:
    {
	SEND_STRING dvMeteo,"'00TR1',$0D" // Teplomer teplota
	WAIT 10
	DO_PUSH(dvTP1,2114)	// Topeni pro teplotu z micropelu
	}
}

BUTTON_EVENT[dvMyTP_03,nBTN_ZALUZIE_STOP]		/// ZALUZIE PORT 3 OVLADANI - AUTO/STOP
{
  PUSH:
  {
    STACK_VAR INTEGER nBtnIdx
    nBtnIdx = GET_LAST(nBTN_ZALUZIE_STOP)
    SWITCH(nBtnIdx)
    {
		CASE   1:  {ZAL_1PP_RELA_Z1=0; CALL 'RELAX_FEEDBACK_AUTO'}		/// 200 RELAX
		CASE   2:  {ZAL_1PP_RELA_Z1=6; CALL 'RELAX_FEEDBACK_AUTO'}
		CASE   3:  {ZAL_0MK_HOST_Z1=0; CALL 'HOST_FEEDBACK_AUTO'}			/// 202 HOST	
		CASE   4:  {ZAL_0MK_HOST_Z1=6; CALL 'HOST_FEEDBACK_AUTO'}	
		CASE   5:  {ZAL_0MK_HOST_Z2=0; CALL 'HOST_FEEDBACK_AUTO'}	
		CASE   6:  {ZAL_0MK_HOST_Z2=6; CALL 'HOST_FEEDBACK_AUTO'}	
		CASE   7:  {ZAL_0MK_HOST_Z3=0; CALL 'HOST_FEEDBACK_AUTO'}	
		CASE   8:  {ZAL_0MK_HOST_Z3=6; CALL 'HOST_FEEDBACK_AUTO'}		/// 207 HOST OFF	
		CASE   9:  {ZAL_0MK_PRAC_Z1=0; CALL 'STUDIO_FEEDBACK_AUTO'}		/// 208 STUDIO
		CASE   10: {ZAL_0MK_PRAC_Z1=6; CALL 'STUDIO_FEEDBACK_AUTO'}	
		CASE   11: {ZAL_0MK_PRAC_Z2=0; CALL 'STUDIO_FEEDBACK_AUTO'}			///	210
		CASE   12: {ZAL_0MK_PRAC_Z2=6; CALL 'STUDIO_FEEDBACK_AUTO'}		
		CASE   13: {ZAL_0MK_PRAC_Z3=0; CALL 'STUDIO_FEEDBACK_AUTO'}	
		CASE   14: {ZAL_0MK_PRAC_Z3=6; CALL 'STUDIO_FEEDBACK_AUTO'}		/// 213 STUDIO OFF
		CASE   15: {ZAL_1NP_KOUP_Z1=0; CALL '1NP_KOUP_FEEDBACK_AUTO'}		
		CASE   16: {ZAL_1NP_KOUP_Z1=6; CALL '1NP_KOUP_FEEDBACK_AUTO'}	
		CASE   17: {ZAL_1NP_KOUP_Z2=0; CALL '1NP_KOUP_FEEDBACK_AUTO'}	
		CASE   18: {ZAL_1NP_KOUP_Z2=6; CALL '1NP_KOUP_FEEDBACK_AUTO'}		/// 217 KOUP 1NP	
		CASE   19: {ZAL_1NP_KUCH_Z1=0; CALL '1NP_KUCHYN_FEEDBACK_AUTO'}		
		CASE   20: {ZAL_1NP_KUCH_Z1=6; CALL '1NP_KUCHYN_FEEDBACK_AUTO'}	/// 219 KUCHYN 1NP	
		CASE   21: {ZAL_1NP_OBYV_Z1=0; CALL 'OBYVAK_FEEDBACK_AUTO'}		
		CASE   22: {ZAL_1NP_OBYV_Z1=6; CALL 'OBYVAK_FEEDBACK_AUTO'}		
		CASE   23: {ZAL_1NP_OBYV_Z2=0; CALL 'OBYVAK_FEEDBACK_AUTO'}		
		CASE   24: {ZAL_1NP_OBYV_Z2=6; CALL 'OBYVAK_FEEDBACK_AUTO'}		/// 223 OBYVAK OFF
		CASE   25: {ZAL_1NP_ZZAH_Z1=0; CALL 'ZIMNIZ_FEEDBACK_AUTO'}		/// 224 ZZ - JIH  
		CASE   26: {ZAL_1NP_ZZAH_Z1=6; CALL 'ZIMNIZ_FEEDBACK_AUTO'}		/// 245
		CASE   27: {ZAL_1NP_ZZAH_Z2=0; CALL 'ZIMNIZ_FEEDBACK_AUTO'}		/// 226 ZZ DVERE KRAJLEVY 
		CASE   28: {ZAL_1NP_ZZAH_Z2=6; CALL 'ZIMNIZ_FEEDBACK_AUTO'}	  	/// 227
		CASE   29: {ZAL_1NP_ZZAH_Z3=0; CALL 'ZIMNIZ_FEEDBACK_AUTO'}		/// 228 ZZ DVERE
		CASE   30: {ZAL_1NP_ZZAH_Z3=6; CALL 'ZIMNIZ_FEEDBACK_AUTO'}	    /// 229
		CASE   31: {ZAL_1NP_ZZAH_Z4=0; CALL 'ZIMNIZ_FEEDBACK_AUTO'}		/// 230 ZZ VYCHODZ
		CASE   32: {ZAL_1NP_ZZAH_Z4=6; CALL 'ZIMNIZ_FEEDBACK_AUTO'}		/// 231	
		CASE   33: {ZAL_1NP_ZZAH_Z5=0; CALL 'ZIMNIZ_FEEDBACK_AUTO'}		/// 232 ZZ SEVER	
		CASE   34: {ZAL_1NP_ZZAH_Z5=6; CALL 'ZIMNIZ_FEEDBACK_AUTO'}	  	/// 233 
		CASE   35: {ZAL_1NP_ZZAH_Z2=0; ZAL_1NP_ZZAH_Z3=0; ZAL_1NP_ZZAH_Z4=0; CALL 'ZIMNIZ_FEEDBACK_AUTO'}	    ///	234 SPOLECNE ZAPAD
		CASE   36: {ZAL_1NP_ZZAH_Z2=6; ZAL_1NP_ZZAH_Z3=6; ZAL_1NP_ZZAH_Z4=6; CALL 'ZIMNIZ_FEEDBACK_AUTO'}		/// 235	SPOLECNE ZAPAD
		CASE   37: {ZAL_2NP_DETP_Z2=0; CALL 'DETI_FEEDBACK_AUTO'}	    ///	236 
		CASE   38: {ZAL_2NP_DETP_Z2=6; CALL 'DETI_FEEDBACK_AUTO'}		/// 237
		CASE   39: {ZAL_2NP_LOZN_Z1=0; CALL 'LOZNICE_FEEDBACK_AUTO'}		//  238 LOZNICE  
		CASE   40: {ZAL_2NP_LOZN_Z1=6; CALL 'LOZNICE_FEEDBACK_AUTO'}	   ///  239 LOZNICE	
		CASE   41: {ZAL_2NP_LOZN_Z2=0; CALL 'LOZNICE_FEEDBACK_AUTO'}		//  240 LOZNICE
		CASE   42: {ZAL_2NP_LOZN_Z2=6; CALL 'LOZNICE_FEEDBACK_AUTO'}	   ///  241 LOZNICE	
		CASE   43: {ZAL_2NP_HALA_Z1=0; CALL 'HALA2_FEEDBACK_AUTO'}		//  242 
		CASE   44: {ZAL_2NP_HALA_Z1=6; CALL 'HALA2_FEEDBACK_AUTO'}	   ///  243 
		CASE   45: {ZAL_2NP_HALA_Z2=0; CALL 'HALA2_FEEDBACK_AUTO'}		//  244 
		CASE   46: {ZAL_2NP_HALA_Z2=6; CALL 'HALA2_FEEDBACK_AUTO'}	   ///  245 	
		CASE   47: {ZAL_2NP_HALA_Z3=0; CALL 'HALA2_FEEDBACK_AUTO'}		//  246 
		CASE   48: {ZAL_2NP_HALA_Z3=6; CALL 'HALA2_FEEDBACK_AUTO'}	   ///  247 
		CASE   49: {ZAL_2NP_DETP_Z1=0; CALL 'DETI_FEEDBACK_AUTO'}	    ///	248 
		CASE   50: {ZAL_2NP_DETP_Z1=6; CALL 'DETI_FEEDBACK_AUTO'}		/// 249
		CASE   51: {ZAL_2NP_DETP_Z3=0; CALL 'DETI_FEEDBACK_AUTO'}	    ///	250 
		CASE   52: {ZAL_2NP_DETP_Z3=6; CALL 'DETI_FEEDBACK_AUTO'}		/// 251
		CASE   53: {ZAL_2NP_KOUP_Z1=0; CALL 'DETI_FEEDBACK_AUTO'}	    ///	252 
		CASE   54: {ZAL_2NP_KOUP_Z1=6; CALL 'DETI_FEEDBACK_AUTO'}		/// 253
    }
  }
}

BUTTON_EVENT[dvMyTP_03,300]									/// NACIST STAV ZALUZIE ZIMNI ZAHRADA
{
  PUSH:
    {
	CALL 'ZIMNIZ_FEEDBACK_AUTO'
	}
}
BUTTON_EVENT[dvMyTP_03,301]									/// NACIST STAV ZALUZIE HALA 2NP
{
  PUSH:
    {
	CALL 'HALA2_FEEDBACK_AUTO'
	}
}
BUTTON_EVENT[dvMyTP_03,302]									/// NACIST STAV ZALUZIE OBYVAK
{
  PUSH:
    {
	CALL 'OBYVAK_FEEDBACK_AUTO'
	}
}
BUTTON_EVENT[dvMyTP_03,303]									/// NACIST STAV ZALUZIE KUCHYNE 1NP
{
  PUSH:
    {
	CALL '1NP_KUCHYN_FEEDBACK_AUTO'
	}
}
BUTTON_EVENT[dvMyTP_03,304]									/// NACIST STAV ZALUZIE 
{
  PUSH:
    {
	CALL 'STUDIO_FEEDBACK_AUTO'
	}
}

BUTTON_EVENT[dvMyTP_03,305]									/// NACIST STAV ZALUZIE 
{
  PUSH:
    {
	CALL 'HOST_FEEDBACK_AUTO'
	}
}

BUTTON_EVENT[dvMyTP_03,306]									/// NACIST STAV ZALUZIE 
{
  PUSH:
    {
	CALL 'RELAX_FEEDBACK_AUTO'
	}
}

BUTTON_EVENT[dvMyTP_03,307]									/// NACIST STAV ZALUZIE 
{
  PUSH:
    {
	CALL '1NP_KOUP_FEEDBACK_AUTO'
	}
}

BUTTON_EVENT[dvMyTP_03,308]									/// NACIST STAV ZALUZIE 
{
  PUSH:
    {
	CALL 'DETI_FEEDBACK_AUTO'
	}
}

BUTTON_EVENT[dvMyTP_03,309]									/// NACIST STAV ZALUZIE 
{
  PUSH:
    {
	CALL 'LOZNICE_FEEDBACK_AUTO'
	}
}
BUTTON_EVENT[dvMyTP_03,311]									/// ZALUZIE 2 NP KOUPELNA AUTO
{
  PUSH:
    {
	ZAL_2NP_KOUP_Z1=0
	CALL 'DETI_FEEDBACK_AUTO'
	}
}
BUTTON_EVENT[dvMyTP_03,312]									/// ZALUZIE 2 NP KOUPELNA STOP 
{
  PUSH:
    {
	ZAL_2NP_KOUP_Z1=6
	CALL 'DETI_FEEDBACK_AUTO'
	}
}
BUTTON_EVENT[dvMyTP_01,2505]	  /// TESTY ZALUZIE POHYB V CASE
BUTTON_EVENT[dvMyTP_01,2506]	
BUTTON_EVENT[dvMyTP_01,2507]	
BUTTON_EVENT[dvMyTP_01,2508]	
BUTTON_EVENT[dvMyTP_01,2509]	
BUTTON_EVENT[dvMyTP_01,2510]	
BUTTON_EVENT[dvMyTP_01,2511]	
BUTTON_EVENT[dvMyTP_01,2512]	
BUTTON_EVENT[dvMyTP_01,2513]	
BUTTON_EVENT[dvMyTP_01,2514]	
BUTTON_EVENT[dvMyTP_01,2515]	
BUTTON_EVENT[dvMyTP_01,2516]	
BUTTON_EVENT[dvMyTP_01,2517]	
BUTTON_EVENT[dvMyTP_01,2518]	
BUTTON_EVENT[dvMyTP_01,2519]	
BUTTON_EVENT[dvMyTP_01,2520]	
BUTTON_EVENT[dvMyTP_01,2521]	
BUTTON_EVENT[dvMyTP_01,2522]	
BUTTON_EVENT[dvMyTP_01,2523]	
BUTTON_EVENT[dvMyTP_01,2524]	  /// TESTY ZALUZIE POHYB V CASE
{
PUSH:
	  {
	  SWITCH(BUTTON.INPUT.CHANNEL)
		  {
				CASE 2505:
					{
					CALL 'Zaluzie1_Nahoru_10'
					WAIT 60
					CALL 'Zaluzie2_Nahoru_10'
					}
				CASE 2506:
						{
						CALL 'Zaluzie1_Nahoru_25'
						WAIT 60
						CALL 'Zaluzie2_Nahoru_30'
						}
				CASE 2507:
						{
						 CALL 'Zaluzie1_Nahoru_25'
						 WAIT 60
						 CALL 'Zaluzie2_Nahoru_30'
						 }
				CASE 2508:
						{
						CALL 'Zaluzie1_Nahoru'
						//WAIT 60
						//CALL 'Zaluzie2_Nahoru'
						}
				CASE 2509: CAS_ZMENY = 9		CALL 'DEN_V_TYDNU_SWITCH'			/// 7:00		žaluzie vyjedou do kasliku
				CASE 2510: {
							ZAL_JIH_CITAC=280
							TEPLOTA_ZALUZ=1
							WAIT 10
							CALL 'ZaluzieCidlo_JihDW' ///CALL 'ZaluzieCidlo_JihDW'
							}
				CASE 2511: {
							ZAL_JIH_CITAC=2  
							WAIT 10
							CALL 'ZaluzieCidlo_JihUP'  /// CALL 'ZaluzieCidlo_JihUP'
							}
				CASE 2512: CAS_ZMENY = 15  		CALL 'DEN_V_TYDNU_SWITCH'			/// 10:00 	Koupelna 2NP pootevøené o 10% + vikend v 2NP žaluzie vyjedou do kasliku
				CASE 2513: CAS_ZMENY = 16  		CALL 'DEN_V_TYDNU_SWITCH'			/// 10:15	Koupelna 2NP pootevøené o 30%
				CASE 2514: CAS_ZMENY = 17  		CALL 'DEN_V_TYDNU_SWITCH'			/// 10:30	Koupelna 2NP pootevøené o 30%
				CASE 2515: CAS_ZMENY = 18  		CALL 'DEN_V_TYDNU_SWITCH'			/// 10:45	Koupelna 2NP otevøené na 100%
				CASE 2516: {
							  CAS_ZMENY = 19
							  CALL 'DEN_V_TYDNU_SWITCH'			/// 11:00	Koupelna 2NP zajedou do kasliku
							  }
				CASE 2517: CAS_ZMENY = 25  CALL 'DEN_V_TYDNU_SWITCH'			/// 16:00 	Koupelna 2NP žaluzie sjedou dolu a otevøou se na 100% (90°)
				CASE 2518: //CALL 'ZaluzieZZ_Dolu_C30'
				CASE 2519: //CALL 'ZaluzieZZ_Nahoru_C30'
				CASE 2520: CALL 'ZALUZIE_RESET' 
				CASE 2521:
					{
					CALL 'ZL_DUM_HOST_Srovnat'   
					WAIT 6
					CALL 'ZL_PRACOVNA_Srovnat'
					}
				CASE 2522:  /// 20:15     poivoou se o 30%
					{
					CALL 'Zaluzie1_Dolu_30'
					WAIT 80
					CALL 'Zaluzie2_Dolu_30'
						}
				CASE 2523: /// 20:45    poivoou se o dalších 30%
						{
						CALL 'Zaluzie1_Dolu_30'
						WAIT 80
						CALL 'Zaluzie2_Dolu_30'
						}
				CASE 2524: { //Zavrou se uplne
						   // CALL 'Zaluzie1_Dolu_30'
							//WAIT 80
							//CALL 'Zaluzie2_Dolu_30'
							CALL 'Zaluzie1_Dolu_100'
						}
				}
		  }
}
BUTTON_EVENT[dvMyTP_01,2525]	  /// TESTY ZALUZIE CIDLA
BUTTON_EVENT[dvMyTP_01,2526]	
BUTTON_EVENT[dvMyTP_01,2527]	
BUTTON_EVENT[dvMyTP_01,2528]	
BUTTON_EVENT[dvMyTP_01,2529]	
BUTTON_EVENT[dvMyTP_01,2530]	// TEST ZALUZIE PODLE SVETLA
	{
	PUSH:
		  {
		  SWITCH(BUTTON.INPUT.CHANNEL)
			  {
			  CASE 2525: CALL 'ZaluzieCidlo_ZapadDW'
			  CASE 2526: CALL 'ZaluzieCidlo_ZapadUP'
			  CASE 2527: CALL 'ZaluzieCidlo_VychodDW'
			  CASE 2528: CALL 'ZaluzieCidlo_VychodUP'
			  //CASE 2529: CALL 'Soumrak_ZaluzTEST'
			  CASE 2530: CALL 'Rano_Zaluzie'
			  }
			}
	}
BUTTON_EVENT[dvMyTP_01,2531]									/// 
{
  PUSH:
    {
	 CALL 'ZL_2NP_DETPOK_02_DOLU'
	 }
}

BUTTON_EVENT[dvMyTP_01,2532]									/// POVEL VITR
{
  PUSH:
    {
	 CALL 'ZALUZIE_RESET'
	 WAIT 5
	 CALL 'ZaluzieALL_Nahoru'
	 }
}
BUTTON_EVENT[dvMyTP_01,2533]									/// ZALUZIE STAV 0  ALL
{
  PUSH:
    {
	 CALL 'ZALUZIE_STAV_NULA'
	 }
}
BUTTON_EVENT[dvMyTP_01,2533]									///  ZALUZIE STAV 6		ALL	/// PREDELAT - DUPLICITNI TLACITKO - NEMAM CAS
{
  PUSH:
    {
	 CALL 'ZALUZIE_STAV_SEST'
	 }
}
BUTTON_EVENT[dvMyTP_01,2534]									/// ZALUZIE RESET
{
  PUSH:
    {
	 CALL 'ZALUZIE_RESET'
	 }
}
BUTTON_EVENT[dvMyTP_01,2597]									/// Vikend
{
  PUSH:
    {
	 IF (MANUALNI_OVLADANI = TRUE)
		  {
		  MANUAL_VIKEND = TRUE
		  CALL 'Zaluzie_Display_Feedback'
		  }
	 }
}
BUTTON_EVENT[dvMyTP_01,2598]									/// Pracovni den
{
  PUSH:
    {
	 IF (MANUALNI_OVLADANI = TRUE)
		  {
		  MANUAL_VIKEND = FALSE
		  CALL 'Zaluzie_Display_Feedback'
		  }
	 }
}

BUTTON_EVENT[dvMyTP_01,2599]									/// AUTOMAT ZAP
{
  PUSH:
    {
	 CALL 'ZALUZIE_RESET'
	 WAIT 5
	 CALL 'VRATIT_AUTOMAT_PANEL'
	 CALL 'Zaluzie_Display_Feedback'
	 }
}

/////////////////////  TESTY	/////////////////////////////////////					
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
BUTTON_EVENT[dvMyTP_01,3940]									/// Svetlo obnov urovne OBYVAK
{
  PUSH:
    {
	 CALL 'ILIGHT_CHANNEL_REQUEST' (SV_1NP_CHODBA_11)
	 }
}
BUTTON_EVENT[dvMyTP_01,3941]									/// Refresh channel kuchyn
{
  PUSH:
    {
	 CALL 'REQUEST_CHANNELS_1NP_KUCHYN'
	 }
}


BUTTON_EVENT[dvMyTP_01,3955]									/// testy Svetlo obnov urovne OBYVAK
{
  PUSH:
    {
	 CALL 'SCHODY_SWITCH' 
	 }
}
BUTTON_EVENT[dvMyTP_01,3956]									/// Svetlo obnov urovne OBYVAK
{
  PUSH:
    {
	 CALL 'ALL_SVETLA_OFF' 
	 //CALL 'POWER_OFF_0NP_RELAX_ALL'
	 }
}
BUTTON_EVENT[dvMyTP_01,3957]									/// Svetlo obnov urovne OBYVAK
{
  PUSH:
    {
	 CALL 'POWER_OFF_0NP_RELAX_ALL'
	 }
}
BUTTON_EVENT[dvMyTP_01,3958]									/// Svetlo obnov urovne OBYVAK
{
  PUSH:
    {
	 CALL 'VYPINACE_RESTART'
	 }
}
BUTTON_EVENT[dvMyTP_01,3990]									/// Svetlo obnov urovne OBYVAK
{
  PUSH:
    {
	 CALL 'OBNOV_PERSIST_OBYVAK'
	 }
}
BUTTON_EVENT[dvMyTP_01,3991]									/// Svetlo obnov urovne VRETENO
{
  PUSH:
    {
	 CALL 'OBNOV_PERSIST_VRETENO'
	 }
}
BUTTON_EVENT[dvMyTP_01,3992]									/// Svetlo obnov urovne LOZNICE ANGEL
{
  PUSH:
    {
	 CALL 'OBNOV_PERSIST_LOZNICE_ANGEL'
	 }
}
BUTTON_EVENT[dvMyTP_01,3993]									/// TESTY
{
  PUSH:
    {
	CALL 'ZL_DUM_HOST_Srovnat'   
	WAIT 6
	CALL 'ZL_PRACOVNA_Srovnat'
	 }
}
BUTTON_EVENT[dvMyTP_01,3994]									/// TESTY zaluzie nahoru
{
  PUSH:
    {
		CALL 'Zaluzie2_Dolu_100'
		//WAIT 60
		//CALL 'Zaluzie2_Nahoru'
	 }
}
BUTTON_EVENT[dvMyTP_01,3995]									/// TESTY	
{
  PUSH:
    {
	CALL 'Zaluzie2_Nahoru'
	 }
}
BUTTON_EVENT[dvMyTP_01,3996]									/// TESTY Nocni rezim zrychlene
{
  PUSH:
  {
  //CALL 'Soumrak_ZaluzTEST'  
  }
}

BUTTON_EVENT[dvMyTP_01,3997]									/// TEST Zaluzie sever dolu
{
  PUSH:
    {
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_SEVER_UP,0,0)	
		wait 5
			{
			CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_SEVER_DW,100,0)
			}
	 }
}
BUTTON_EVENT[dvMyTP_01,3998]									/// TEST Zaluzie sever nahoru
{
  PUSH:
    {
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_SEVER_DW,0,0)	
		wait 5
			{
			CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_SEVER_UP,100,0)
			}
	 }
}
BUTTON_EVENT[dvMyTP_01,3999]									/// TEST Provetrani, modul od Romana nedokazu ridit primo, obchazim to simulaci stisku tlacitka
{
  PUSH:
    {

	DO_PUSH(dvTP1,2138)	// Pridam minutu na nastaveni provetrani obyvak
	WAIT 10
	DO_PUSH(dvTP1,2129)	// Simuluju zmacknuti provetrani v obyvaku
	WAIT 80
		{
		DO_PUSH(dvTP1,2137)	// Uberu minutu na nastaveni provetrani obyvak
		}
	 }
}

BUTTON_EVENT[dvMyTP_02,1501]									/// TESTY
{
  PUSH:
    {
	CALL 'DEBUG_CASU_A_SLUNCE'
	}
}

BUTTON_EVENT[dvMyTP_04, 1200] // FONTANA CERPADLO
{
      PUSH:
		{
			bFontana = !bFontana

			IF (bFontana)
			{
				ON[dvMyTP_04,1200]
				CALL 'ILIGHT_CHANNEL_ON'(FO_VEN_ZAHRADA_01)
			}
			ELSE
			{
				OFF[dvMyTP_04,1200]
				CALL 'ILIGHT_CHANNEL_OFF'(FO_VEN_ZAHRADA_01)
			}
		}
}

BUTTON_EVENT[dvMyTP_04, 1201] // FONTANA SVETLO
{
    PUSH:
    {
        IF ([dvMyTP_04, 1201] == 0)
        {
            ON[dvMyTP_04, 1201]
            CALL 'ILIGHT_CHANNEL_ON'(FO_VEN_ZAHRADA_02)
        }
        ELSE
        {
            OFF[dvMyTP_04, 1201]
            CALL 'ILIGHT_CHANNEL_OFF'(FO_VEN_ZAHRADA_02)
        }
    }
}
	
TIMELINE_EVENT[TLCOUNTER_ODCHOD]
{
    SEND_COMMAND dvMyTP_01,"'^TXT-',ITOA(TLCOUNTER_ODCHOD_CH),',0,',ITOA(TLCOUNTER_ODCHOD_LONG-TIMELINE.REPETITION-1),'s'"
    [dvMyTP_01,1480] = ![dvMyTP_01,1480] 			// BLIKAME NAPISEM REZIM ODCHOD KAZDOU SEKUNDU
    IF (TIMELINE.REPETITION=TLCOUNTER_ODCHOD_LONG-1)
	 {	
	 CALL 'KONEC_COUNTER_ODCHOD'
	 //CALL 'All_AV_OFF'
	 //CALL 'OKNA_VSE_ZAVRIT'
	 SEND_COMMAND dvMyTP_01,"'PAGE-MainPage'"
	 WAIT 50
			{
			 //CALL 'SVETLA_VSE_OFF'
			 SEND_COMMAND dvMyTP_01, "'@PPK-Rezim_odchod'"
			 WAIT 20
				{
				SEND_COMMAND dvMyTP_01,"'@PPX'" 				// CLOSE ALL POPUP ON ALL PAGES
				//CALL 'ZALUZIE_VSE_DOLU'
				//Svet_simul=il_1
				}
			}
	 }
}	
	 
TIMELINE_EVENT[TL_MANUAL_NOC]    // EVENTS FOR TIMELINE
{
  
  SWITCH(Timeline.Sequence)
  {
    case 1:{          
			
			}
    case 2:{     
			
           }   
   case 3:{          // 
			
           }
    case 4:{          //
	
           }
    case 5:{          
			
			}
    case 6:{     
			
           }     
    case 7:{          // 
              
				}
    case 8:{          // 
             
           }
    case 9:{          
			
			}
    case 10:{     
	    CALL 'VRATIT_AUTOMAT_PANEL'
           }        
                             

  }
}					

LEVEL_EVENT[dvMyTP_01,100]
{
    SEND_COMMAND dvMyTP_01,"'^TXT-100,0,',itoa(LEVEL.VALUE)"
    
    IF ((LEVEL.VALUE > 38) && (LEVEL.VALUE < 96))
    {
        IF (SRDCE_VOLNO)
        {
            SRDCE_VOLNO = FALSE
            SEND_LEVEL dvMyTP_01, 100, LEVEL.VALUE
            
            // Odeslání nové hodnoty tepu
            SEND_STRING vdSrdceTep, "'Level=',itoa(LEVEL.VALUE),'Konec'"
            
            WAIT 5
            {
                IF (fTEMP1 != LEVEL.VALUE)
                {
                    SEND_STRING 0,"'OPRAVA - zmena tepu z ',itoa(fTEMP1),' na ',itoa(LEVEL.VALUE)"
                    fTEMP1 = LEVEL.VALUE  // Aktualizace hodnoty tepu
                    fTEMP2 = 6000 / fTEMP1  // Prepocet casového intervalu
                    cCASs1 = fTEMP2 * 10    // Nastavení timeline
                    
                    CALL 'SrdceTep_OFF'
                    WAIT 12
                    {
                        // Odeslání potvrzení
                        SEND_STRING vdSrdceTep,"'Level=',itoa(LEVEL.VALUE),'Konec'"
                        SRDCE_VOLNO = TRUE
                    }
                }
                ELSE
                {
                    SRDCE_VOLNO = TRUE
                }
            }
        }
    }
    ELSE
    {
        // Neplatný rozsah - mužete pridat reakci
        SEND_COMMAND dvMyTP_01, "'^TXT-100,0,','>>:<<'"
    }
}

LEVEL_EVENT[dvMyTP_01,101]
{    
    SEND_STRING vdSrdceTep,"'Level=',itoa(LEVEL.VALUE),'Konec'"
}

LEVEL_EVENT[dvMyTP_01,102]
{    
    SEND_STRING vdSrdceTep,"'Level=',itoa(LEVEL.VALUE),'Konec'"
}
	
DATA_EVENT[dvMyTP_01]	//
{
  ONLINE: 
	{
	 CALL 'Zaluzie_Display_Feedback'
	}
}  
(***********************************************************)
(*            THE ACTUAL PROGRAM GOES BELOW                *)
(***********************************************************)
DEFINE_PROGRAM
WAIT 580
{
    SELECT
    {
        ACTIVE(DAY == 'MON'): DEN_V_TYDNU = dPON
        ACTIVE(DAY == 'TUE'): DEN_V_TYDNU = dUTR
        ACTIVE(DAY == 'WED'): DEN_V_TYDNU = dSTR
        ACTIVE(DAY == 'THU'): DEN_V_TYDNU = dCTV
        ACTIVE(DAY == 'FRI'): DEN_V_TYDNU = dPAT
        ACTIVE(DAY == 'SAT'): DEN_V_TYDNU = dSOB
        ACTIVE(DAY == 'SUN'): DEN_V_TYDNU = dNED
    }
}
// 2. Casové události
// Zkontrolujeme se, zda je nový cas jiný než ten, který jsme rešili naposledy
IF(TIME != sPosledniProvedenyCas) 
{
    // Uložíme si novou vterinu, aby se tento blok znovu spustil až za sekundu
    sPosledniProvedenyCas = TIME 

    // Nyní porovnáváme aktuální cas
    SELECT
		{
		ACTIVE(sPosledniProvedenyCas == '05:00:00'):
			{
				 CAS_ZMENY = 1
				 ZALUZIE_NOC = 0
				 ZALUZIE_DEN = 1
				 CALL 'DEN_V_TYDNU_SWITCH'	// ZALUZIE - VYRAZENO
			}
		ACTIVE(sPosledniProvedenyCas == '05:15:00'):
			{
				 CAS_ZMENY = 2
				 CALL 'DEN_V_TYDNU_SWITCH'
			}
		ACTIVE(sPosledniProvedenyCas == '05:30:00'):
			{
				 CAS_ZMENY = 3
				 CALL 'DEN_V_TYDNU_SWITCH'
			}
		ACTIVE(sPosledniProvedenyCas == '05:45:00'):
			{
				CAS_ZMENY = 4
				CALL 'DEN_V_TYDNU_SWITCH'	// ZALUZIE - VYRAZENO
			}
		ACTIVE(sPosledniProvedenyCas == '06:00:00'):
			{
				CAS_ZMENY = 5
				CALL 'POWER_OFF_0NP_ANG_DVORKY'
				CALL 'DEN_V_TYDNU_SWITCH'			// ZALUZIE - VYRAZENO
			}
		ACTIVE(sPosledniProvedenyCas == '06:15:00'):
			{
				CAS_ZMENY = 6
				CALL 'DEN_V_TYDNU_SWITCH'		// ZALUZIE - VYRAZENO
			}
		ACTIVE(sPosledniProvedenyCas == '06:30:00'):
			{
				 CAS_ZMENY = 7
				 CALL 'DEN_V_TYDNU_SWITCH'
			}
		ACTIVE(sPosledniProvedenyCas == '06:45:00'):
			{
				CAS_ZMENY = 8
				CALL 'DEN_V_TYDNU_SWITCH'	// ZALUZIE - VYRAZENO
				CALL 'POWER_OFF_0NP_ANG_DVORKY'
			}
		ACTIVE(sPosledniProvedenyCas == '07:00:00'):
			{
				CAS_ZMENY = 9
				CALL 'DEN_V_TYDNU_SWITCH'			// ZALUZIE - VYRAZENO
				SV_Manual=0
				DEN_ZAPNUT=1
			}
		ACTIVE(sPosledniProvedenyCas == '07:20:00'):
			{
				IF (DEN_V_TYDNU<6)	// PRACOVNI DNY, KDYZ CIDLO SVETLA NEBERE 
					{
					CALL 'ZALUZIE_RANO'
					}
			}
		ACTIVE(sPosledniProvedenyCas == '08:00:00'):
			{
				CAS_ZMENY = 10
				CALL 'DEN_V_TYDNU_SWITCH'	// ZALUZIE - VYRAZENO
				bCidlaZablokovana = 0	//ODBLOKOVANI REAKCE NA POHYBOVA CIDLA V MODULU ZAHRADA
				PO_PULNOCI = FALSE
				IF (DEN_V_TYDNU<6)	// PRACOVNI DNY, KDYZ CIDLO SVETLA NEBERE  - DUPLIKACE PRO SICHR
					{
					IF (ZAL_VYCHOD_STAV=0)
						{
						CALL 'Rano_Zaluzie'
						}
					}
			}
		ACTIVE(sPosledniProvedenyCas == '08:20:00'):
			{
				IF (DEN_V_TYDNU>5)	// VIKEND, KDYZ CIDLO SVETLA NEBERE
					{
						IF (ZAL_VYCHOD_STAV=0)
						{
						CALL 'ZALUZIE_RANO'
						}
					}
			}
		ACTIVE(sPosledniProvedenyCas == '09:00:00'):
			{
				CAS_ZMENY = 11
				CALL 'DEN_V_TYDNU_SWITCH'
				IF (DEN_V_TYDNU>5)	// VIKEND, KDYZ CIDLO SVETLA NEBERE - PRO SICHR VYTAHNOUT
					{
					IF (ZAL_VYCHOD_STAV=0)
						{
						CALL 'Zaluzie2_Nahoru'
						}
					}
			}	
		ACTIVE(sPosledniProvedenyCas == '09:15:00'):
			{
				CAS_ZMENY = 12
				CALL 'DEN_V_TYDNU_SWITCH'
				CALL 'POWER_OFF_0NP_ANG_DVORKY'  // ANGLICKE DVORKY ME TRAPI, DOST CASTO SVITI, TAK JE VYPINAM NEKOLIKRAT
			}
		ACTIVE(sPosledniProvedenyCas == '09:30:00'):
			{
				CAS_ZMENY = 13
				CALL 'DEN_V_TYDNU_SWITCH'
				CALL 'SEKVENCE_2NP_DETI_STOP'  // TAKY ME TRAPI 
			}
		ACTIVE(sPosledniProvedenyCas == '09:45:00'):
			{
				 CAS_ZMENY = 14
				CALL 'DEN_V_TYDNU_SWITCH'
			}
		ACTIVE(sPosledniProvedenyCas == '10:00:00'):
			{
				CAS_ZMENY = 15
				CALL 'DEN_V_TYDNU_SWITCH'	/// KOUPELNA 2NP
			}
		ACTIVE(sPosledniProvedenyCas == '10:15:00'):
			{
				CAS_ZMENY = 16
				CALL 'DEN_V_TYDNU_SWITCH'	/// KOUPELNA 2NP
			}
		ACTIVE(sPosledniProvedenyCas == '10:30:00'):
			{
				CAS_ZMENY = 17
				CALL 'DEN_V_TYDNU_SWITCH'	/// KOUPELNA 2NP
			}
		ACTIVE(sPosledniProvedenyCas == '10:45:00'):
			{
				CAS_ZMENY = 18
				CALL 'DEN_V_TYDNU_SWITCH'	/// KOUPELNA 2NP
			}
		ACTIVE(sPosledniProvedenyCas == '11:00:00'):
			{
				CAS_ZMENY = 19
				CALL 'DEN_V_TYDNU_SWITCH'	/// KOUPELNA 2NP VYTAHNOUT NAHORU
			}
		ACTIVE(sPosledniProvedenyCas == '11:15:00'):
			{
				CAS_ZMENY = 19
				CALL 'DEN_V_TYDNU_SWITCH'	/// KOUPELNA 2NP VYTAHNOUT NAHORU - SICHR
			}
		ACTIVE(sPosledniProvedenyCas == '12:00:00'):
			{
				CAS_ZMENY = 20
				CALL 'DEN_V_TYDNU_SWITCH'	
				CALL 'POWER_OFF_0NP_ANG_DVORKY'
			}
		ACTIVE(sPosledniProvedenyCas == '13:00:00'):
			{
				CAS_ZMENY = 21
				CALL 'DEN_V_TYDNU_SWITCH'	/// 
			}
		ACTIVE(sPosledniProvedenyCas == '14:00:00'):
			{
				CAS_ZMENY = 22
				NOC_STAV=0
				DET_POK_SV = 1
			}
		ACTIVE(sPosledniProvedenyCas == '15:00:00'):
			{
				CAS_ZMENY = 23
				CALL 'DEN_V_TYDNU_SWITCH'	/// KOUPELNA 2NP
			}
		ACTIVE(sPosledniProvedenyCas == '15:15:00'):
			{
				CAS_ZMENY = 24
			}
		ACTIVE(sPosledniProvedenyCas == '16:00:00'):
			{
				CAS_ZMENY = 25
				CALL 'DEN_V_TYDNU_SWITCH'	/// KOUPELNA 2NP
			}
		ACTIVE(sPosledniProvedenyCas == '16:15:00'):
			{
				CAS_ZMENY = 26
				CALL 'DEN_V_TYDNU_SWITCH'
			}
		ACTIVE(sPosledniProvedenyCas == '16:30:00'):
			{
				CAS_ZMENY = 27
				CALL 'DEN_V_TYDNU_SWITCH'	/// KOUPELNA 2NP
			}
		ACTIVE(sPosledniProvedenyCas == '16:45:00'):
			{
				CAS_ZMENY = 28
				ZALUZIE_NOC = 1
				CALL 'DEN_V_TYDNU_SWITCH'	/// KOUPELNA 2NP ZAVRIT UPLNE
			}
		ACTIVE(sPosledniProvedenyCas == '17:00:00'):
			{
				CAS_ZMENY = 29
				CALL 'DEN_V_TYDNU_SWITCH'	/// nic
			}
		ACTIVE(sPosledniProvedenyCas == '17:15:00'):
			{
				CAS_ZMENY = 30
				ZALUZIE_NOC = 1
				CALL 'DEN_V_TYDNU_SWITCH'
			}
		ACTIVE(sPosledniProvedenyCas == '17:30:00'):
			{
				CAS_ZMENY = 31
				CALL 'DEN_V_TYDNU_SWITCH'	/// KOUPELNA 2NP
			}
		ACTIVE(sPosledniProvedenyCas == '17:45:00'):
			{
				CAS_ZMENY = 32
				DET_POK_SV = 0
				CALL 'DEN_V_TYDNU_SWITCH'
			}
		ACTIVE(sPosledniProvedenyCas == '19:00:00'):
			{
				CAS_ZMENY = 33
				ZALUZIE_DEN = 0
				CALL 'DEN_V_TYDNU_SWITCH'	/// KOUPELNA 2NP
			}
		ACTIVE(sPosledniProvedenyCas == '19:45:00'):
			{
				CAS_ZMENY = 34
				CALL 'DEN_V_TYDNU_SWITCH'
			}
		ACTIVE(sPosledniProvedenyCas == '20:15:00'):
			{
				CAS_ZMENY = 35
				CALL 'DEN_V_TYDNU_SWITCH'	/// KOUPELNA 2NP
			}
		ACTIVE(sPosledniProvedenyCas == '20:45:00'):
			{
				CAS_ZMENY = 36
				CALL 'DEN_V_TYDNU_SWITCH'
			}
		ACTIVE(sPosledniProvedenyCas == '21:00:00'):
			{
				CAS_ZMENY = 37
				CALL 'DEN_V_TYDNU_SWITCH'	/// KOUPELNA 2NP
			}
		ACTIVE(sPosledniProvedenyCas == '21:30:00'):
			{
				CALL 'Zaluzie1_Dolu'    // Zcela zavrou
				WAIT 80
				CALL 'Zaluzie2_Dolu'
			}
		ACTIVE(sPosledniProvedenyCas == '22:00:00'):
			{
				CAS_ZMENY = 38
				CALL 'DEN_V_TYDNU_SWITCH'	/// 
			}
		ACTIVE(sPosledniProvedenyCas == '23:00:00'):
			{
				CAS_ZMENY = 39
				CALL 'DEN_V_TYDNU_SWITCH'
				CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_FASA_OBRAZ_01,0,0)
				CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_FASA_OBRAZ_02,0,0)
			}
		ACTIVE(sPosledniProvedenyCas == '24:00:00'):
			{
				CAS_ZMENY = 40
				CALL 'VRATIT_AUTOMAT_PANEL'
				CALL 'DEN_V_TYDNU_SWITCH'
			}
		ACTIVE(sPosledniProvedenyCas == '00:01:00'):
			{
				CAS_ZMENY = 0
				CALL 'DEN_V_TYDNU_SWITCH'
				PO_PULNOCI = TRUE
				WIND_MAX=0
				CALL 'ZALUZIE_RESET'
			}
		ACTIVE(sPosledniProvedenyCas == '00:05:00'):
			{
				CALL 'PULNOCNI_RGB_VYP'
				WAIT 10
				CALL 'ZALUZIE_RESET'
				DO_PUSH(dvTP1_04,1001)
			}
	}
}		
(*
/////////////	NEPOUZITO DOVOLENA /////////////////////////////

IF(TIME = '02:15:00')			
    {
    CALL 'Svetla_Simulace'(6)
    }
IF(TIME = '02:30:00')			
    {
    CALL 'Svetla_Simulace'(7)
    }
IF(TIME = '03:00:00')			
    {
    CALL 'Svetla_Simulace'(8)
    }
IF(TIME = '03:15:00')			
    {
    CALL 'Svetla_Simulace'(9)
    }

IF(TIME = '12:25:00')			//Test1
    {
    CALL 'Zaluzie_Automat'(1)
    }
IF(TIME = '12:28:00')			//Test2
    {
    CALL 'Zaluzie_Automat'(2)
    }
IF(TIME = '12:32:00')			//Test3
    {
    CALL 'Zaluzie_Automat'(3)
    }
*)
(***********************************************************)
(*                     END OF PROGRAM                      *)
(*        DO NOT PUT ANY CODE BELOW THIS COMMENT           *)
(***********************************************************)

