PROGRAM_NAME='Zaluzie'
(***********************************************************)
(*  FILE CREATED ON: 02/07/2016  AT: 09:57:57              *)
(***********************************************************)
(*  FILE_LAST_MODIFIED_ON: 10/04/2016  AT: 13:00:34        *)
(***********************************************************)
(*  ................................................       *)
(*  			PRO ZABEZPEC TQS3 a protokol SPINEL				  *)
(*  			PRO Clima Sensor D od Adolf Thies GmbH			  *)
(*  ................................................       *)
(***********************************************************)

DEFINE_DEVICE

//dvEsz = 5001:1:1

DEFINE_CONSTANT
///--------------- TIMELINE -----------------///
//TLCOUNTER_ODCHOD 		= 1 		// 
//TLCASZAL_ALL_UP 		= 2 		// 
//TLCASZAL_ALL_DOWN 	= 3 		// 
//BACHA! TL_THERM 		= 4 		// JE UMISTEN U TEPLOMERU 
TL_ZALUZ_1NP_UP 		= 5 		// Zaluzie 1P nahoru
TL_ZALUZ_1NP_DOWN 		= 6 		// Zaluzie 1P dolu
TL_ZALUZ_1NP_OPEN		= 7 		// Zaluzie 1P otevrit
TL_ZALUZ_1NP_CLOSE		= 8 		// Zaluzie 1P zavrit
TL_ZALUZ_2NP_UP 		= 9 		// Zaluzie 2P nahoru
TL_ZALUZ_2NP_DOWN 		= 10 		// Zaluzie 2P dolu
TL_ZALUZ_2NP_OPEN		= 11 		// Zaluzie 2P otevrit
TL_ZALUZ_2NP_CLOSE		= 12 		// Zaluzie 2P zavrit
TL_ZALUZ_2NPKOUP_DOWN 	= 13 		// Zaluzie 2P KOU dolu 100
TL_ZALUZ_2NPKOUP_UP 	= 14 		// Zaluzie 2P KOU nahoru 100
//BACHA! TL_SRDCE_TEP 	= 15 		// TIMELINE PRO SRDCE
//TL_CASOVAC_RANO 		= 16 		// TIMELINE ZALUZIE NAHORU - MASTER
//TL_CASOV_RANO_VIKEND	= 17 		// TIMELINE ZALUZIE VIKEND NAHORU - MASTER
//TL_CASOVAC_VECER 		= 18 		// TIMELINE ZALUZIE DOLU - MASTER
//TL_MANUAL_NOC			= 20 		// VYPNOUT AUTOMAT - MASTER
TL_ZALUZ_VENEK_VECER	= 21		// VENKOVNI ZALUZIE NAKLOPIT
//TL_ZALUZ_TEST			= 22		// Testovaci zaluzie
//TL_SOLAX 				= 23 
//TL_ZAHRADA_PARTY		= 24		// Kratky na spusteni

//TL_CASOVAC_VECER_TEST	= 99
////----------- TIMELINE END -----------------////

POVEL_MANUALNI  = 1
POVEL_AUTOMAT   = 2

DEFINE_VARIABLE
//////----------- ZAKLADNI CASY PRO TIMELINE -----------------------///
VOLATILE LONG ZALUZ_ALL_UP[] = {10,10000,10000,10000,10000,45000} //Cas pro Zaluzie ALL Nahoru
VOLATILE LONG ZALUZ_ALL_DWN[] = {10,45000,10000,10000,10000,10000} //Cas pro Zaluzie ALL Dolu 
VOLATILE LONG ZALUZIE_CAS_UNI1[] = {10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000} // 27 casu
VOLATILE LONG ZALUZIE_CAS_UNI2[] = {10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000,10000} // 27 casu
VOLATILE LONG ZALUZIE_CASOVAC_RANO[] = {100,900000,900000,1000000,9000,9000} //Casovac nahoru
VOLATILE LONG ZALUZIE_CASOVAC_VECER[] = {100,900000,900000,900000,90000,9000} //Casovac dolu
//VOLATILE LONG ZALUZIE_MANUAL_OD[] = {90,90,90,90,90,90,90,90,90} //Casovac pauza automat
//////----------- ZAKLADNI CASY PRO TIMELINE END -----------------------///
VOLATILE CHAR TIMER_ID=0			//?? UZ NEVIM
//VOLATILE INTEGER TIME_EVENT=0		//?? UZ NEVIM

VOLATILE CHAR STAV_ZZ_CIDLO_SOUMRAK=0		// STAV CIDLO SOUMRAK
VOLATILE CHAR STAV_ZZ_CIDLO_DVERE=0			// STAV CIDLO OTEVRENYCH DVERI ZIMNI ZAHRADA
VOLATILE CHAR STAV_ZZ_DVERE_NAHORE=0		// VYJELY NAHORU PRES CIDLO OTEVRENYCH DVERI

// ---------- STAV A PRIKAZ PRO ZALUZIE Z ILIGHT -----------------//////
// 	iLigt posila z tlacitek povel ve tvaru @Z1O2:D        //
// 	zapamatuji a ten den jiz zaluzie nepojedou na automat //
// 	Povely z Tlacitek cislo dolu 3 a nahoru 4             //
// 	napriklad ZAL_1PP_KUCH_Z1=3 = Zaluzie v kuchyni jeli dolu
//  kPATRO = "'P',sMESS[1]"  // Patro
//	kAREA = "'A',sMESS[2]"	 // Area
//	kCISLO = "'Z',sMESS[3]"  // Cislo zaluzie v mistnosti
//	kSMER = "'S',sMESS[5]"	 // Smer nahoru (4) nebo dolu (3)
/////////////////////////////////////////////////////////////
//  Z TABLETU POSILAM 1 - NAHORU A 2 - DOLU
// 	Z TLACITE POSILAM 3 DOLU A 4 DOLU (MOZNA 5 PRO STOP?)
//  POKUD BUDU CHTIT ZALUZIE VYRADIT, ZADAM 5 (6] 
//  CISLO 0 JE AUTOMAT

//////////////--- 0MK --------------////////////////////////
PERSISTENT INTEGER ZAL_0MK_PRAC_Z1=0	// VLEVO
PERSISTENT INTEGER ZAL_0MK_PRAC_Z2=0	// STRED 
PERSISTENT INTEGER ZAL_0MK_PRAC_Z3=0	// VPRAVO

PERSISTENT INTEGER ZAL_0MK_HOST_Z1=0	// U LESA
PERSISTENT INTEGER ZAL_0MK_HOST_Z2=0	// K DOMU
PERSISTENT INTEGER ZAL_0MK_HOST_Z3=0	// K UDIRNE

//////////////--- 1PP --------------////////////////////////
/// NENASEL JSEM OVLADANI V TABLETU, TAKZE NEBUDU ZATEZOVAT TRVALOU PAMET
VOLATILE INTEGER ZAL_1PP_KUCH_Z1=0		//
VOLATILE INTEGER ZAL_1PP_RELA_Z1=0		//
VOLATILE INTEGER ZAL_1PP_KOUP_Z1=0		//

//////////////--- 1NP --------------/////////////////
PERSISTENT INTEGER 	ZAL_1NP_OBYV_Z1=0		// KRB vlevo
PERSISTENT INTEGER 	ZAL_1NP_OBYV_Z2=0		// KRB vpravo
//VOLATILE INTEGER 	ZAL_1NP_OBYV_Z3=0		// NEVIM CO TO JE

PERSISTENT INTEGER ZAL_1NP_KUCH_Z1=0		// Kuchyne linka

PERSISTENT INTEGER ZAL_1NP_ZZAH_Z1=0		// Zimni zahrada leva strana
PERSISTENT INTEGER ZAL_1NP_ZZAH_Z2=0		// Zimni zahrada u vchodu leva
PERSISTENT INTEGER ZAL_1NP_ZZAH_Z3=0		// Zimni zahrada VCHOD 
PERSISTENT INTEGER ZAL_1NP_ZZAH_Z4=0		// Zimni zahrada u vchodu prava
PERSISTENT INTEGER ZAL_1NP_ZZAH_Z5=0		// Zimni zahrada prava strana


PERSISTENT INTEGER ZAL_1NP_KOUP_Z1=0		// Koupelna ZALUZIE
PERSISTENT INTEGER ZAL_1NP_KOUP_Z2=0		// Koupelna ROLETA

PERSISTENT INTEGER ZAL_1NP_WC_Z1=0			// WC ZALUZIR
VOLATILE INTEGER ZAL_1NP_WC_Z2=0			// WC ROLETA		/// VOLATILE PROTOZE TO PODLE ME NENI NA TLACITKACH

//////////////--- 2PP --------------/////////////////

PERSISTENT INTEGER ZAL_2NP_LOZN_Z1=0			// LOZNICE VLEVO
PERSISTENT INTEGER ZAL_2NP_LOZN_Z2=0			// LOZNICE VPRAVO

PERSISTENT INTEGER ZAL_2NP_HALA_Z1=0			// SCHODY V MEZIPATRE
PERSISTENT INTEGER ZAL_2NP_HALA_Z2=0			// STRED
PERSISTENT INTEGER ZAL_2NP_HALA_Z3=0			// KRAJE

PERSISTENT INTEGER ZAL_2NP_DETP_Z1=0			// 	ROLETA LEVA
PERSISTENT INTEGER ZAL_2NP_DETP_Z2=0			//  ZALUZIE BALKON
PERSISTENT INTEGER ZAL_2NP_DETP_Z3=0			//  ROLETA PRAVA

PERSISTENT INTEGER ZAL_2NP_KOUP_Z1=0			// ZALUZIE KOUPELNA
(**)

PERSISTENT INTEGER ZAL_1NP_ZZAH_AUTO		// 0 auto 1 pause 2 stop
PERSISTENT INTEGER ZAL_2NP_HALA_AUTO		// 0 auto 1 pause 2 stop
VOLATILE CHAR ZalZZ=0  						// zaluzie zimni zahrada dole, nebo nahore, 0 = zcela zavrene
VOLATILE CHAR SOUMRAK_DOLU=0
VOLATILE CHAR RANO_NAHORU=0
//VOLATILE INTEGER ZAL_1NP_ALL=0	// 1NP ALL


//VOLATILE CHAR TIMER_ID_ZALUZIE  		// JAKA ZALUZIE SE VYRADI Z AUTOMATU - Nepouzito
	
//VOLATILE CHAR ZAL_1NP_ZZ_03 = FALSE  // Zimni dvere manual ovladane	 - Nepouzito
//////////////////////////////		CEKACKY PRO ZALUZIE		///////////////////////////

VOLATILE CHAR WAIT_ZAL_OBYVAK1
VOLATILE CHAR WAIT_ZAL_OBYVAK2
VOLATILE CHAR WAIT_ZAL_OBYVAK3
VOLATILE CHAR WAIT_ZAL_OBYVAK4
VOLATILE CHAR WAIT_ZAL_OBYVAK5
VOLATILE CHAR WAIT_ZAL_OBYVAK6
VOLATILE CHAR WAIT_ZAL_LOZNICE1
VOLATILE CHAR WAIT_ZAL_LOZNICE2
VOLATILE CHAR WAIT_ZAL_2NP_KOUP
VOLATILE CHAR WAIT_ZAL_DETI1
VOLATILE CHAR WAIT_ZAL_DETI2
VOLATILE CHAR WAIT_ZAL_DETI3
VOLATILE CHAR WAIT_ZAL_HALA1
VOLATILE CHAR WAIT_ZAL_HALA2
VOLATILE CHAR WAIT_ZAL_HALA3


//////////////////   ZALUZIE  ////////////////////
/// ZPRACOV8V8M ZPRAVY Z TLACITEK, ZDA JSEM RUCNE NECO NEMENIL
DEFINE_CALL 'ZPRACUJ_ZALUZIE_AREA'(CHAR sMESS[])	//DEFINOVANA ZPRAVA K OVLÁDÁNÍ ZALUZII Z TLACITEK
{
	LOCAL_VAR CHAR kPATRO[2]	//:, @P0Z1O2:D - HLAVNI PROGRAM
	LOCAL_VAR CHAR kAREA[2]
    LOCAL_VAR CHAR kCISLO[2]
	LOCAL_VAR CHAR kSMER[2]
	LOCAL_VAR CHAR kALL[7]
	kPATRO = "'P',sMESS[1]"
	kAREA = "'A',sMESS[2]"
	kCISLO = "'Z',sMESS[3]"
	kSMER = "'S',sMESS[5]"
	kALL = "sMESS[1],sMESS[2],sMESS[3],sMESS[4],sMESS[5],sMESS[6],sMESS[7]"
	/// UPRAVUJI DO PODOBY: PATRO Px, AREA Ax, CISLO ZALUZIE Zx, SMER Sx 
	SWITCH (kPATRO)
	{
	CASE 'P0':  			// 1PP  K-KUCHYN, R-RELAX, S-KOUPELNA  - NENI NA TABLETU, NEVIM ZDA VUBEC RESIT
		{		
			//SEND_STRING 0,"'PRISLA ZALUZIE 0NP ',(kALL)"
			SWITCH (kAREA)
			{
			CASE 'AK':		// KUCHYN
				{			
				SEND_STRING 0,"'KUCHYN 1PP ',(kAREA)"
				SWITCH (kCISLO)
					{
					CASE 'Z1':	// ZALUZIE 1
						{			
						//SEND_STRING 0,"'CISLO 1 ',(kCISLO)"
						SWITCH (kSMER)		// NAHORU NEBO DOLU
							{
							CASE 'SD':
								{
								IF (ZAL_1PP_KUCH_Z1<6)		// 6 = ZAKAZ POHYBU ZADAVAM PRES TABLET
									{
									CALL 'ZL_1PP_KUCH_DVORKY_DOLU'
									ZAL_1PP_KUCH_Z1=3		// 3 = DOLU PRES TLACITKA
									}
								SEND_STRING 0,"'DOLU ',(kSMER)"
								}
							CASE 'SN':
								{
								IF (ZAL_1PP_KUCH_Z1<6)
									{
									CALL 'ZL_1PP_KUCH_DVORKY_NAHORU'
									ZAL_1PP_KUCH_Z1=4	// 4 = NAHORU PRES TLACITKA
									}
								SEND_STRING 0,"'NAHORU ',(kSMER)"
								}
							CASE 'SP':
								{
								CALL 'ZL_1PP_KUCH_DVORKY_STOP'
								SEND_STRING 0,"'STOP ',(kSMER)"
								}
							}
						}
					}
				}
			CASE 'AR':		// RELAX
				{			
				//SEND_STRING 0,"'RELAX 1PP ',(kAREA)"
				SWITCH (kCISLO)
					{
					CASE 'Z1':
						{			
						//SEND_STRING 0,"'CISLO 1 ',(kCISLO)"
						SWITCH (kSMER)
							{
							CASE 'SD':
								{
								IF (ZAL_1PP_RELA_Z1<6)
									{
									CALL 'ZL_1PP_RELAX_DOLU'
									ZAL_1PP_RELA_Z1=3
									}
								SEND_STRING 0,"'RELAX DOLU ',(kSMER)"
								}
							CASE 'SN':
								{
								IF (ZAL_1PP_RELA_Z1<6)
									{
									CALL 'ZL_1PP_RELAX_NAHORU'
									ZAL_1PP_RELA_Z1=4
									}
								SEND_STRING 0,"'NAHORU ',(kSMER)"
								}
							CASE 'SP':
								{
								CALL 'ZL_1PP_RELAX_STOP'
								SEND_STRING 0,"'RELAX NAHORU ',(kSMER)"
								}
							}
						}
					}
				}
			CASE 'AS':		// SPRCHA - KOUPELNA 
				{			
				//SEND_STRING 0,"'KOUPELNA 1PP ',(kAREA)"
				SWITCH (kCISLO)
					{
					CASE 'Z1':
						{			
						//SEND_STRING 0,"'CISLO 1 ',(kCISLO)"
						SWITCH (kSMER)
							{
							CASE 'SD':
								{
								IF (ZAL_1PP_KOUP_Z1<6)
									{
									CALL 'ZL_1PP_KOUPELNA_DOLU'
									ZAL_1PP_KOUP_Z1=3 
									}
								//SEND_STRING 0,"'KOUPELNA 1PP DOLU ',(kSMER)"
								}
							CASE 'SN':
								{
								IF (ZAL_1PP_KOUP_Z1<6)
									{
									CALL 'ZL_1PP_KOUPELNA_NAHORU'
									ZAL_1PP_KOUP_Z1=4
									}
								SEND_STRING 0,"'KOUPELNA 1PP NAHORU ',(kSMER)"
								}
							CASE 'SP':
								{
								CALL 'ZL_1PP_KOUPELNA_STOP'
								//ZAL_1PP_KOUP_Z1=4
								//SEND_STRING 0,"'NAHORU ',(kSMER)"
								}
							}
						}
					}
				}
			}
		}
	CASE 'P1':			// 1NP O-OBYVAK, Z-ZIMNI ZAHRADA, K-KUCHYN, S-KOUPELNA, W-WC, P-PRACOVNA, H-HOSTOVSKY DOMEK
		{
		//SEND_STRING 0,"'PRISLA ZALUZIE 1NP ',(kALL)"
		SWITCH (kAREA)
			{
			CASE 'AO':		// OBYVAK POHLED ZEVNITR
				{			
				//SEND_STRING 0,"'OBYVAK ',(kAREA)"
				SWITCH (kCISLO)
					{
					CASE 'Z1':		// OBYVAK  KRB VLEVO
						{			
						//SEND_STRING 0,"'CISLO 1 ',(kCISLO)"
						SWITCH (kSMER)
							{
							CASE 'SD':
								{
								IF (ZAL_1NP_OBYV_Z1<6)
									{
									CALL 'ZL_OBYVAK_KRBLEVA_DOLU'
									ZAL_1NP_OBYV_Z1=3
									}
								SEND_STRING 0,"'OBYVAK Z1 DOLU ',(kSMER)"
								}
							CASE 'SN':
								{
								IF (ZAL_1NP_OBYV_Z1<6)
									{
									CALL 'ZL_OBYVAK_KRBLEVA_NAHORU'
									ZAL_1NP_OBYV_Z1=4
									}
								SEND_STRING 0,"'OBYVAK Z1 NAHORU ',(kSMER)"
								}
							CASE 'SP':
								{
								IF (ZAL_1NP_OBYV_Z1<6)
									{
									CALL 'ZL_OBYVAK_KRBLEVA_STOP'
									}
								//SEND_STRING 0,"'Z1 STOP '"
								}
							}
						}
					CASE 'Z2':		// OBYVAK  KRB VPRAVO
						{			
						//SEND_STRING 0,"'CISLO 2 ',(kCISLO)"
						//ZAL_1NP_ZZ_03 = TRUE
						//CALL 'TIMER_ZALUZIE_MANUAL' (ZAL_1NP_ZZ_03)
						SWITCH (kSMER)
							{
							CASE 'SD':
								{
								IF (ZAL_1NP_OBYV_Z2<6)
									{
									CALL 'ZL_OBYVAK_KRBPRAVA_DOLU'
									ZAL_1NP_OBYV_Z2=3
									}
								SEND_STRING 0,"'OBYVAK Z2 DOLU ',(kSMER)"
								}
							CASE 'SN':
								{
								IF (ZAL_1NP_OBYV_Z2<6)
									{
									CALL 'ZL_OBYVAK_KRBPRAVA_NAHORU'
									ZAL_1NP_OBYV_Z2=4
									}
								SEND_STRING 0,"'OBYVAK Z2 NAHORU ',(kSMER)"
								}
							CASE 'SP':
								{
								IF (ZAL_1NP_OBYV_Z2<6)
									{
									CALL 'ZL_OBYVAK_KRBPRAVA_STOP'
									}
								//SEND_STRING 0,"'Z2 STOP '"
								}
							}
						}
					}
				}
			CASE 'AK':		// KUCHYN
				{			
				SEND_STRING 0,"'KUCHYN ',(kAREA)"
				SWITCH (kCISLO)
					{
					CASE 'Z1':
						{			
						//SEND_STRING 0,"'CISLO 1 ',(kCISLO)"
						SWITCH (kSMER)
							{
							CASE 'SD':
								{
								IF (ZAL_1NP_KUCH_Z1<6)
									{
									CALL 'ZL_KUCHYN1NP_ZALUZ_DOLU'
									ZAL_1NP_KUCH_Z1=3 
									}
								SEND_STRING 0,"'KUCHYN 1NP DOLU ',(kSMER)"
								}
							CASE 'SN':
								{
								IF (ZAL_1NP_KUCH_Z1<6)
									{
									CALL 'ZL_KUCHYN1NP_ZALUZ_NAHORU'
									ZAL_1NP_KUCH_Z1=4
									}
								SEND_STRING 0,"'KUCHYN 1NP NAHORU ',(kSMER)"
								}
							CASE 'SP':
								{
								CALL 'ZL_KUCHYN1NP_ZALUZ_STOP'
								//SEND_STRING 0,"'STOP ',(kSMER)"
								}
							}
						}
					}
				}
			CASE 'AS':		// KOUPELNA
				{			
				//SEND_STRING 0,"'KUCHYN ',(kAREA)"
				SWITCH (kCISLO)
					{
					CASE 'Z1':		/// KOUPELNA ZALUZIE
						{			
						//SEND_STRING 0,"'CISLO 1 ',(kCISLO)"
						SWITCH (kSMER)
							{
							CASE 'SD':
								{
								IF (ZAL_1NP_KOUP_Z1<6)
									{
									ZAL_1NP_KOUP_Z1=3
									CALL 'ZL_KOUP1NP_ZALUZ_DOLU'
									}
								SEND_STRING 0,"'KOUP 1NP DOLU ',(kSMER)"
								}
							CASE 'SN':
								{
								IF (ZAL_1NP_KOUP_Z1<6)
									{
									ZAL_1NP_KOUP_Z1=4
									CALL 'ZL_KOUP1NP_ZALUZ_NAHORU'
									}
								SEND_STRING 0,"'KOUP 1NP NAHORU ',(kSMER)"
								}
							CASE 'SP':
								{
								CALL 'ZL_KOUP1NP_ZALUZ_STOP'
								//SEND_STRING 0,"'STOP ',(kSMER)"
								}
							}
						}
					CASE 'Z2':		/// KOUPELNA ROLETA
						{			
						//SEND_STRING 0,"'CISLO 1 ',(kCISLO)"
						SWITCH (kSMER)
							{
							CASE 'SD':
								{
								IF (ZAL_1NP_KOUP_Z2<6)
									{
									ZAL_1NP_KOUP_Z2=3
									SEND_STRING 0,"'DOLU ',(kSMER)"
									}
								}
							CASE 'SN':
								{
								IF (ZAL_1NP_KOUP_Z2<6)
									{
									ZAL_1NP_KOUP_Z2=4
									SEND_STRING 0,"'NAHORU ',(kSMER)"
									}
								}
							CASE 'SP':
								{
								//CALL 'ZL_KUCHYN1NP_ZALUZ_STOP'
								SEND_STRING 0,"'STOP ',(kSMER)"
								}
							}
						}
					}
				}
			CASE 'AW':		// WC
				{			
				SEND_STRING 0,"'WC ',(kAREA)"
				SWITCH (kCISLO)
					{
					CASE 'Z1':		/// WC ZALUZIE
						{			
						//SEND_STRING 0,"'CISLO 1 ',(kCISLO)"
						SWITCH (kSMER)
							{
							CASE 'SD':
								{
								IF (ZAL_1NP_WC_Z1<6)
									{
									CALL 'ZL_WC1NP_ZALUZ_DOLU'
									ZAL_1NP_WC_Z1=3
									}
								SEND_STRING 0,"'WC 1NP DOLU ',(kSMER)"
								}
							CASE 'SN':
								{
								IF (ZAL_1NP_WC_Z1<6)
									{
									CALL 'ZL_WC1NP_ZALUZ_NAHORU'
									ZAL_1NP_WC_Z1=4
									}
								SEND_STRING 0,"'WC 1NP NAHORU ',(kSMER)"
								}
							CASE 'SP':
								{
								CALL 'ZL_WC1NP_ZALUZ_STOP'
								//SEND_STRING 0,"'STOP ',(kSMER)"
								}
							}
						}
					}
				}
			CASE 'AZ':		// ZIMNI ZAHRADA POHLED ZEVNITR
				{			
				SEND_STRING 0,"'ZIMNI ZAHRADA ',(kAREA)"
				SWITCH (kCISLO)
					{
					CASE 'Z1':  // Zimni zahrada leva strana - JIH
						{			
						//SEND_STRING 0,"'CISLO 1 ',(kCISLO)"
						SWITCH (kSMER)
							{
							CASE 'SD':
								{
								IF (ZAL_1NP_ZZAH_Z1<6)
									{
									ZAL_1NP_ZZAH_Z1=3
									CALL 'ZL_ZZAHRAD_KRAJLEVY_DOLU'
									}
								SEND_STRING 0,"'ZZ 1 DOLU ',(kSMER)"
								}
							CASE 'SN':
								{
								IF (ZAL_1NP_ZZAH_Z1<6)
									{
									ZAL_1NP_ZZAH_Z1=4
									CALL 'ZL_ZZAHRAD_KRAJLEVY_NAHORU'
									}
								SEND_STRING 0,"'ZZ 1 NAHORU ',(kSMER)"
								}
							CASE 'SP':
								{
								IF (ZAL_1NP_ZZAH_Z1<6)
									{
									CALL 'ZL_ZZAHRAD_KRAJLEVY_STOP'
									}
								//SEND_STRING 0,"'Z1 STOP ',(kSMER)"
								}
							}
						}
					CASE 'Z2':		/// ZIMNI ZAHRADA VLEVO OD VCHODU - JIHO ZAPAD
						{			
						//SEND_STRING 0,"'CISLO 2 ',(kCISLO)"
						//CALL 'TIMER_ZALUZIE_MANUAL' (ZAL_1NP_ZZ_03)
						SWITCH (kSMER)
							{
							CASE 'SD':
								{
								IF (ZAL_1NP_ZZAH_Z2<6)
										{
										CALL 'ZL_ZZAHRAD_VYCHODJ_DOLU'
										ZAL_1NP_ZZAH_Z2=3
										}
								SEND_STRING 0,"'ZZ 2 DOLU ',(kSMER)"
								}
							CASE 'SN':
								{
								IF (ZAL_1NP_ZZAH_Z2<6)
										{
										CALL 'ZL_ZZAHRAD_VYCHODJ_NAHORU'
										ZAL_1NP_ZZAH_Z2=4
										}
								SEND_STRING 0,"'ZZ 2 NAHORU ',(kSMER)"
								}
							CASE 'SP':
								{
								IF (ZAL_1NP_ZZAH_Z2<6)
									{
									CALL 'ZL_ZZAHRAD_VYCHODJ_STOP'
									}
								//SEND_STRING 0,"'STOP ',(kSMER)"
								}
							}
						}
					CASE 'Z3':			/// ZZ DVERE
						{			
						//ZAL_1NP_ZZ_03 = TRUE
						//CALL 'TIMER_ZALUZIE_MANUAL' (ZAL_1NP_ZZ_03)
						SWITCH (kSMER)
							{
							CASE 'SD':
								{
								IF (ZAL_1NP_ZZAH_Z3<6)
									{
									CALL 'ZL_ZZAHRAD_DVERE_DOLU'
									ZAL_1NP_ZZAH_Z3=3
									}
								SEND_STRING 0,"'ZZ 3 DOLU ',(kSMER)"
								}
							CASE 'SN':
								{
								IF (ZAL_1NP_ZZAH_Z3<6)
									{
									CALL 'ZL_ZZAHRAD_DVERE_NAHORU'
									ZAL_1NP_ZZAH_Z3=4
									}
								SEND_STRING 0,"'ZZ 3 NAHORU ',(kSMER)"
								}
							CASE 'SP':
								{
								IF (ZAL_1NP_ZZAH_Z3<6)
									{
									CALL 'ZL_ZZAHRAD_DVERE_STOP'
									}
								//SEND_STRING 0,"'STOP ',(kSMER)"
								}
							}
						}
					CASE 'Z4':	//// Zimni zahrada VPRAVO OD VCHODU SEVERO ZAPAD
						{			
						//SEND_STRING 0,"'CISLO 4 ',(kCISLO)"
						//ZAL_1NP_ZZ_04 = TRUE
						//CALL 'TIMER_ZALUZIE_MANUAL' (ZAL_1NP_ZZ_03)
						SWITCH (kSMER)
							{
							CASE 'SD':
								{
								 IF (ZAL_1NP_ZZAH_Z4<6)
									{
									CALL 'ZL_ZZAHRAD_VYCHODZ_DOLU'
									ZAL_1NP_ZZAH_Z4=3
									}
								SEND_STRING 0,"'ZZ 4 DOLU ',(kSMER)"
								}
							CASE 'SN':
								{
								IF (ZAL_1NP_ZZAH_Z4<6)
									{
									CALL 'ZL_ZZAHRAD_VYCHODZ_NAHORU'
									ZAL_1NP_ZZAH_Z4=4
									}
								SEND_STRING 0,"'ZZ 4 NAHORU ',(kSMER)"
								}
							CASE 'SP':
								{
								IF (ZAL_1NP_ZZAH_Z4<6)
									{
									CALL 'ZL_ZZAHRAD_VYCHODZ_STOP'
									}
								//SEND_STRING 0,"'STOP ',(kSMER)"
								}
							}
						}
					CASE 'Z5':    /// ZIMNI ZAHRADA  VPRAVO - SEVER
						{			
						//SEND_STRING 0,"'CISLO 5 ',(kCISLO)"
						//ZAL_1NP_ZZ_05 = TRUE
						//CALL 'TIMER_ZALUZIE_MANUAL' (ZAL_1NP_ZZ_03)
						SWITCH (kSMER)
							{
							CASE 'SD':
								{
								IF (ZAL_1NP_ZZAH_Z5<6)
									{
									CALL 'ZL_ZZAHRAD_SEVER_DOLU'
									ZAL_1NP_ZZAH_Z5=3
									}
								SEND_STRING 0,"'ZZ 5 DOLU ',(kSMER)"
								}
							CASE 'SN':
								{
								IF (ZAL_1NP_ZZAH_Z5<6)
									{
									CALL 'ZL_ZZAHRAD_SEVER_NAHORU'
									ZAL_1NP_ZZAH_Z5=4
									}
								SEND_STRING 0,"'ZZ 5 NAHORU ',(kSMER)"
								}
							CASE 'SP':
								{
								IF (ZAL_1NP_ZZAH_Z5<6)
									{
									CALL 'ZL_ZZAHRAD_SEVER_STOP'
									ZAL_1NP_ZZAH_Z5=4
									}
								//SEND_STRING 0,"'STOP ',(kSMER)"
								}
							}
						}
				}
			 }
			CASE 'AH':		// HOST
				{			
				//SEND_STRING 0,"'HOST ',(kAREA)"
				SWITCH (kCISLO)
					{
					CASE 'Z1':		// HOST K LESU
						{			
						//SEND_STRING 0,"'CISLO 1 ',(kCISLO)"
						SWITCH (kSMER)
							{
							CASE 'SD':
								{
								 IF (ZAL_0MK_HOST_Z1<6)
										{
										CALL 'ZL_VEN_HOST_01_DOLU'
										ZAL_0MK_HOST_Z1=3
										}
									SEND_STRING 0,"'HOST 1 DOLU ',(kSMER)"
									
								}
							CASE 'SN':
								{
								IF (ZAL_0MK_HOST_Z1<6)
									{
									CALL 'ZL_VEN_HOST_01_NAHORU'
									ZAL_0MK_HOST_Z1=4
									}
								SEND_STRING 0,"'HOST 1 NAHORU ',(kSMER)"
								}
							CASE 'SP':
								{
								CALL 'ZL_VEN_HOST_01_STOP'
								//SEND_STRING 0,"'STOP ',(kSMER)"
								}
							}
						}
					CASE 'Z2':		/// HOST K DOMU
						{			
						//SEND_STRING 0,"'CISLO 2 ',(kCISLO)"
						//ZAL_1NP_ZZ_03 = TRUE
						//CALL 'TIMER_ZALUZIE_MANUAL' (ZAL_1NP_ZZ_03)
						SWITCH (kSMER)
							{
							CASE 'SD':
								{
								IF (ZAL_0MK_HOST_Z2<6)
									{
									CALL 'ZL_VEN_HOST_02_DOLU'
									ZAL_0MK_HOST_Z2=3
									}
								SEND_STRING 0,"'HOST 2 DOLU ',(kSMER)"
								}
							CASE 'SN':
								{
								IF (ZAL_0MK_HOST_Z2<6)
									{
									CALL 'ZL_VEN_HOST_02_NAHORU'
									ZAL_0MK_HOST_Z2=4
									}
								SEND_STRING 0,"'HOST 2 NAHORU ',(kSMER)"
								}
							CASE 'SP':
								{
								CALL 'ZL_VEN_HOST_02_STOP'
								//SEND_STRING 0,"'STOP ',(kSMER)"
								}
							}
						}
					CASE 'Z3':		/// HOST K UDIRNE
						{			
						SWITCH (kSMER)
							{
							CASE 'SD':
								{
								IF (ZAL_0MK_HOST_Z3<6)
									{
									CALL 'ZL_VEN_HOST_03_DOLU'
									ZAL_0MK_HOST_Z3=3
									}
								SEND_STRING 0,"'HODT 3 DOLU ',(kSMER)"
								}
							CASE 'SN':
								{
								IF (ZAL_0MK_HOST_Z3<6)
									{
									CALL 'ZL_VEN_HOST_03_NAHORU'
									ZAL_0MK_HOST_Z3=4
									}
								SEND_STRING 0,"'HOST 3 NAHORU ',(kSMER)"
								}
							CASE 'SP':
								{
								CALL 'ZL_VEN_HOST_03_STOP'
								//SEND_STRING 0,"'STOP ',(kSMER)"
								}
							}
						}
					}
				}
			CASE 'AP':		// PRACOVNA POHLED Z VENKU
				{			
				//SEND_STRING 0,"'PRACOVNA ',(kAREA)"
				SWITCH (kCISLO)
					{
					CASE 'Z1':		// PRACOVNA VLEVO
						{			
						//SEND_STRING 0,"'CISLO 1 ',(kCISLO)"
						SWITCH (kSMER)
							{
							CASE 'SD':
								{
								IF (ZAL_0MK_PRAC_Z1<6)
									{
									CALL 'ZL_VEN_KANCL_01_DOLU'
									ZAL_0MK_PRAC_Z1=3
									}
								SEND_STRING 0,"'KANCL 01 DOLU ',(kSMER)"
								}
							CASE 'SN':
								{
								IF (ZAL_0MK_PRAC_Z1<6)
									{
									CALL 'ZL_VEN_KANCL_01_NAHORU'
									ZAL_0MK_PRAC_Z1=4
									}
									SEND_STRING 0,"'KANCL 01 NAHORU ',(kSMER)"
								}
							CASE 'SP':
								{
								CALL 'ZL_VEN_KANCL_01_STOP'
								//SEND_STRING 0,"'STOP ',(kSMER)"
								}
							}
						}
					CASE 'Z2':		/// PRACOVNA STRED
						{			
						//SEND_STRING 0,"'CISLO 2 ',(kCISLO)"
						//ZAL_1NP_ZZ_03 = TRUE
						//CALL 'TIMER_ZALUZIE_MANUAL' (ZAL_1NP_ZZ_03)
						SWITCH (kSMER)
							{
							CASE 'SD':
								{
								IF (ZAL_0MK_PRAC_Z2<6)
									{
									CALL 'ZL_VEN_KANCL_02_DOLU'
									ZAL_0MK_PRAC_Z2=3
									}
									SEND_STRING 0,"'KANCL 02 DOLU ',(kSMER)"
								}
							CASE 'SN':
								{
								IF (ZAL_0MK_PRAC_Z2<6)
									{
									CALL 'ZL_VEN_KANCL_02_NAHORU'
									ZAL_0MK_PRAC_Z2=4
									}
									SEND_STRING 0,"'KANCL 02 NAHORU ',(kSMER)"
								}
							CASE 'SP':
								{
								CALL 'ZL_VEN_KANCL_02_STOP'
								//SEND_STRING 0,"'STOP ',(kSMER)"
								}
							}
						}
					CASE 'Z3':			/// PRACOVNA VPRAVO
						{			
						//SEND_STRING 0,"'CISLO 3 ',(kCISLO)"
						SWITCH (kSMER)
							{
							CASE 'SD':
								{
								IF (ZAL_0MK_PRAC_Z3<6)
									{
									CALL 'ZL_VEN_KANCL_03_DOLU'
									ZAL_0MK_PRAC_Z3=3
									}
									SEND_STRING 0,"'KANCL 03 DOLU ',(kSMER)"
								}
							CASE 'SN':
								{
								IF (ZAL_0MK_PRAC_Z3<6)
									{
										CALL 'ZL_VEN_KANCL_03_NAHORU'
										ZAL_0MK_PRAC_Z3=4
										}
									SEND_STRING 0,"'KANCL 03 NAHORU ',(kSMER)"
								}
							CASE 'SP':
								{
								CALL 'ZL_VEN_KANCL_03_STOP'
								//SEND_STRING 0,"'STOP ',(kSMER)"
								}
							}
						}
					}
				}
		}

	}
	//////////////////////////////				2NP					/////////////////////////////
	CASE 'P2':			// 2NP K-KOUPELNA, L - LOZNICE, H - HALA, D - DETSKY POKOJ
		{
		//SEND_STRING 0,"'PRISLA ZALUZIE 2NP ',(kALL)"
		SWITCH (kAREA)
			{
			CASE 'AL':		// LOZNICE
				{			
				//SEND_STRING 0,"'LOZNICE ',(kAREA)"
				SWITCH (kCISLO)
					{
					CASE 'Z1':		// LOZNICE VLEVO
						{			
						//SEND_STRING 0,"'CISLO 1 ',(kCISLO)"
						SWITCH (kSMER)
							{
							CASE 'SD':
								{
								IF (ZAL_2NP_LOZN_Z1<6)
									{
									CALL 'ZL_2NP_LOZNICE_01_DOLU'
									ZAL_2NP_LOZN_Z1=3
									SEND_STRING 0,"'LOZNICE Z1 DOLU ',(kSMER)"
									}
								}
							CASE 'SN':
								{
								IF (ZAL_2NP_LOZN_Z1<6)
									{
									CALL 'ZL_2NP_LOZNICE_01_NAHORU'
									ZAL_2NP_LOZN_Z1=4
									SEND_STRING 0,"'LOZNICE Z1 NAHORU ',(kSMER)"
									}
								}
							CASE 'SP':
								{
								CALL 'ZL_2NP_LOZNICE_01_STOP'
								//SEND_STRING 0,"'NAHORU ',(kSMER)"
								}
							}
						}
					CASE 'Z2':		// LOZNICE VPRAVO
						{			
						//SEND_STRING 0,"'CISLO 2 ',(kCISLO)"
						//ZAL_1NP_ZZ_03 = TRUE
						//CALL 'TIMER_ZALUZIE_MANUAL' (ZAL_1NP_ZZ_03)
						SWITCH (kSMER)
							{
							CASE 'SD':
								{
								IF (ZAL_2NP_LOZN_Z2<6)
									{
									CALL 'ZL_2NP_LOZNICE_02_DOLU'
									ZAL_2NP_LOZN_Z2=3
									SEND_STRING 0,"'LOZNICE Z2 DOLU ',(kSMER)"
									}
								}
							CASE 'SN':
								{
								IF (ZAL_2NP_LOZN_Z2<6)
									{
									CALL 'ZL_2NP_LOZNICE_02_NAHORU'
									ZAL_2NP_LOZN_Z2=4
									SEND_STRING 0,"'LOZNICE Z2 NAHORU ',(kSMER)"
									}
								}
							CASE 'SP':
								{
								CALL 'ZL_2NP_LOZNICE_02_STOP'
								//SEND_STRING 0,"'NAHORU ',(kSMER)"
								}
							}
						}
					}
				}
			CASE 'AH':		// HALA		Nejak divne zmotano
				{			
				//SEND_STRING 0,"'2NP HALA ',(kAREA)"
				SWITCH (kCISLO)
					{
					CASE 'Z1':
						{			
						//SEND_STRING 0,"'CISLO 1 ',(kCISLO)"
						SWITCH (kSMER)
							{
							CASE 'SD':
								{
								IF (ZAL_2NP_HALA_Z1<6)
									{
									CALL 'ZL_2NP_HALA_02_DOLU'
									ZAL_2NP_HALA_Z1=3
									//SEND_STRING 0,"'DOLU ',(kSMER)"
									}
								}
							CASE 'SN':
								{
								IF (ZAL_2NP_HALA_Z1<6)
									{
									CALL 'ZL_2NP_HALA_02_NAHORU'
									ZAL_2NP_HALA_Z1=4
									//SEND_STRING 0,"'NAHORU ',(kSMER)"
									}
								}
							CASE 'SP':
								{
								CALL 'ZL_2NP_HALA_02_STOP'
								//SEND_STRING 0,"'NAHORU ',(kSMER)"
								}
							}
						}
					CASE 'Z2':
						{			
						//SEND_STRING 0,"'CISLO 2 ',(kCISLO)"
						SWITCH (kSMER)
							{
							CASE 'SD':
								{
								IF (ZAL_2NP_HALA_Z2<6)
									{
									CALL 'ZL_2NP_HALA_01_DOLU'
									ZAL_2NP_HALA_Z2=3
									//SEND_STRING 0,"'DOLU ',(kSMER)"
									}
								}
							CASE 'SN':
								{
								IF (ZAL_2NP_HALA_Z2<6)
									{
									CALL 'ZL_2NP_HALA_01_NAHORU'
									ZAL_2NP_HALA_Z2=4
									//SEND_STRING 0,"'NAHORU ',(kSMER)"
									}
								}
							CASE 'SP':
								{
								CALL 'ZL_2NP_HALA_01_STOP'
								//SEND_STRING 0,"'NAHORU ',(kSMER)"
								}
							}
						}
					CASE 'Z3':
						{			
						//SEND_STRING 0,"'CISLO 3 ',(kCISLO)"
						//ZAL_1NP_ZZ_03 = TRUE
						//CALL 'TIMER_ZALUZIE_MANUAL' (ZAL_1NP_ZZ_03)
						SWITCH (kSMER)
							{
							CASE 'SD':
								{
								IF (ZAL_2NP_HALA_Z3<6)
									{
									CALL 'ZL_2NP_HALA_03_DOLU'
									ZAL_2NP_HALA_Z3=4
									//SEND_STRING 0,"'DOLU ',(kSMER)"
									}
								}
							CASE 'SN':
								{
								IF (ZAL_2NP_HALA_Z3<6)
									{
									CALL 'ZL_2NP_HALA_03_NAHORU'
									ZAL_2NP_HALA_Z3=4
									//SEND_STRING 0,"'NAHORU ',(kSMER)"
									}
								}
							CASE 'SP':
								{
								CALL 'ZL_2NP_HALA_03_STOP'
								//SEND_STRING 0,"'NAHORU ',(kSMER)"
								}
							}
						}
					}
				}
			CASE 'AD':		// DETSKY POKOJ 
				{			
				//SEND_STRING 0,"'DETSKY POKOJ 1PP ',(kAREA)"
				SWITCH (kCISLO)
					{
					CASE 'Z1': //  -- ROLETA LEVA
						{			
					   //SEND_STRING 0,"'CISLO 1 ROLETA L',(kCISLO)"
						SWITCH (kSMER)
							{
							CASE 'SD':
								{
								IF (ZAL_2NP_DETP_Z1<6)
									{
									CALL 'ZL_2NP_DETPOK_01_DOLU'
									ZAL_2NP_DETP_Z1=3
									}
								//SEND_STRING 0,"'DP Z1 DOLU',(kSMER)"
								}
							CASE 'SN':
								{
								IF (ZAL_2NP_DETP_Z1<6)
									{
									CALL 'ZL_2NP_DETPOK_01_NAHORU'
									ZAL_2NP_DETP_Z1=4
									}
								//SEND_STRING 0,"'DP Z1 NAHORU ',(kSMER)"
								}
							CASE 'SP':
								{
								CALL 'ZL_2NP_DETPOK_01_STOP'
								//SEND_STRING 0,"'DP Z1 PAUZA ',(kSMER)"
								}
							}
						}
						CASE 'Z2':	// --- ZALUZIE
						{			
						SEND_STRING 0,"'CISLO 2 ZALUZIE',(kCISLO)"
						SWITCH (kSMER)
							{
							CASE 'SD':
								{
								IF (ZAL_2NP_DETP_Z2<6)
									{
									CALL 'ZL_2NP_DETPOK_02_DOLU'
									ZAL_2NP_DETP_Z2=3
									}
								//SEND_STRING 0,"'DP Z2 DOLU',(kSMER)"
								}
							CASE 'SN':
								{
								IF (ZAL_2NP_DETP_Z2<6)
									{
									CALL 'ZL_2NP_DETPOK_02_NAHORU'
									ZAL_2NP_DETP_Z2=4
									}
								//SEND_STRING 0,"'DP Z2 NAHORU',(kSMER)"
								}
							CASE 'SP':
								{
								CALL 'ZL_2NP_DETPOK_02_STOP'
								//SEND_STRING 0,"'DP Z2 STOP',(kSMER)"
								}
							}
						}
					CASE 'Z3':	/// DP ROLETA PRAVA
						{			
						SEND_STRING 0,"'CISLO 3 ROLETA P ',(kCISLO)"
						SWITCH (kSMER)
							{
							CASE 'SD':
								{
								IF (ZAL_2NP_DETP_Z3<6)
									{
									CALL 'ZL_2NP_DETPOK_03_DOLU'
									ZAL_2NP_DETP_Z3=3
									}
								//SEND_STRING 0,"'DP Z3 DOLU',(kSMER)"
								}
							CASE 'SN':
								{
								IF (ZAL_2NP_DETP_Z3<6)
									{
									CALL 'ZL_2NP_DETPOK_03_NAHORU'
									ZAL_2NP_DETP_Z3=4
									}
								//SEND_STRING 0,"'DP Z3 NAHORU',(kSMER)"
								}
							CASE 'SP':
								{
								CALL 'ZL_2NP_DETPOK_03_STOP'
								//SEND_STRING 0,"'DP Z3 STOP',(kSMER)"
								}
							}
						}
					}
				}
			CASE 'AK':		// KOUPELNA 2NP 
				{			
				//SEND_STRING 0,"'KOUPELNA 1PP ',(kAREA)"
				SWITCH (kCISLO)
					{
					CASE 'Z1':
						{			
						//SEND_STRING 0,"'CISLO 1 ',(kCISLO)"
						SWITCH (kSMER)
							{
							CASE 'SD':
								{
								IF (ZAL_2NP_KOUP_Z1<6)
									{
									CALL 'ZL_2NP_KOUPELNA_DOLU'
									ZAL_2NP_KOUP_Z1=3 
									//SEND_STRING 0,"'KOUPELNA 2NP DOLU ',(kSMER)"
									}
								}
							CASE 'SN':
								{
								IF (ZAL_2NP_KOUP_Z1<6)
									{
									CALL 'ZL_2NP_KOUPELNA_NAHORU'
									ZAL_2NP_KOUP_Z1=4 
									//SEND_STRING 0,"'KOUPELNA 2NP NAHORU ',(kSMER)"
									}
								}
							CASE 'SP':
								{
								CALL 'ZL_2NP_KOUPELNA_STOP'
								//SEND_STRING 0,"'NAHORU ',(kSMER)"
								}
							}
						}
					}
				}
		}
	}
	//SEND_STRING 0,"'PRISLA ZALUZIE2 ',kALL"
	}

}
///////////////////////////		Macra zaluzie 1NP		////////////////////////////
DEFINE_CALL 'Rano_Zaluzie'			// CIDLO - PRACOVNI DEN, SPOUSTIM CASOVAC PRO VYTAZENI ZALUZII TL_CASOVAC_RANO,ZALUZIE_CASOVAC_RANO
	{
		SEND_COMMAND dvMyTP_01,"'^TXT-850,0,','RANO PRAC DEN'"
		IF (!TIMELINE_ACTIVE(TL_CASOVAC_RANO)) 
			{
			IF (TIMELINE_ACTIVE(TL_CASOVAC_VECER))
					{
					TIMELINE_KILL(TL_CASOVAC_VECER)
					}
			IF (TIMELINE_ACTIVE(TL_CASOV_RANO_VIKEND)) 
					{
					TIMELINE_KILL(TL_CASOV_RANO_VIKEND)
					}
			TIMELINE_CREATE(TL_CASOVAC_RANO,ZALUZIE_CASOVAC_RANO,5,TIMELINE_RELATIVE,TIMELINE_ONCE)
			}
	}
DEFINE_CALL 'Rano_ZaluzieTEST'			// CIDLO - PRACOVNI DEN, SPOUSTIM CASOVAC PRO VYTAZENI ZALUZII TL_CASOVAC_RANO,ZALUZIE_CASOVAC_RANO
	{
	 ZALUZIE_CAS_UNI1[1] = 100
	 ZALUZIE_CAS_UNI1[2] = 59500
	 ZALUZIE_CAS_UNI1[3] = 59500
	 ZALUZIE_CAS_UNI1[4] = 59500
	 ZALUZIE_CAS_UNI1[5] = 129900
	 ZALUZIE_CAS_UNI1[6] = 99000
		SEND_COMMAND dvMyTP_01,"'^TXT-850,0,','RANO P DEN TEST'"
		IF (!TIMELINE_ACTIVE(TL_CASOVAC_RANO)) 
			{
			IF (TIMELINE_ACTIVE(TL_CASOVAC_VECER))
				TIMELINE_KILL(TL_CASOVAC_VECER)
			IF (TIMELINE_ACTIVE(TL_CASOV_RANO_VIKEND)) 
				TIMELINE_KILL(TL_CASOV_RANO_VIKEND)
			IF (TIMELINE_ACTIVE(TL_CASOVAC_RANO)) 
				TIMELINE_KILL(TL_CASOVAC_RANO)
			TIMELINE_CREATE(TL_CASOVAC_RANO,ZALUZIE_CAS_UNI1,5,TIMELINE_RELATIVE,TIMELINE_ONCE)
			}
	}

DEFINE_CALL 'Rano_Vikend_Zaluzie'		// JEDE JENOM 1P, LOZNICE A ZBYTEK 2P ZACINA MIMO CIDLO V 9H
	{
		SEND_COMMAND dvMyTP_01,"'^TXT-850,0,','RANO VIKEND'"
		IF (!TIMELINE_ACTIVE(TL_CASOV_RANO_VIKEND)) 
			{
			IF (TIMELINE_ACTIVE(TL_CASOVAC_VECER))
				TIMELINE_KILL(TL_CASOVAC_VECER)
			IF (TIMELINE_ACTIVE(TL_CASOVAC_RANO)) 
				TIMELINE_KILL(TL_CASOVAC_RANO)
			TIMELINE_CREATE(TL_CASOV_RANO_VIKEND,ZALUZIE_CASOVAC_RANO,5,TIMELINE_RELATIVE,TIMELINE_ONCE)
			}
	}
	
DEFINE_CALL 'Soumrak_Zaluzie'    		// CIDLO VECER DOLU SPOUSTI ZALUZIE DOLU 100 
	{
		SEND_COMMAND dvMyTP_01,"'^TXT-850,0,','CIDLO SOUMRAK DOLU'"
		SOUMRAK_DOLU=1
		IF (!TIMELINE_ACTIVE(TL_CASOVAC_VECER)) 
			{
			IF (TIMELINE_ACTIVE(TL_CASOV_RANO_VIKEND)) 
				TIMELINE_KILL(TL_CASOV_RANO_VIKEND)
			IF (TIMELINE_ACTIVE(TL_CASOVAC_RANO)) 
				TIMELINE_KILL(TL_CASOVAC_RANO)
			ZALUZIE_CASOVAC_VECER[1] = 100  	//Casovac dolu
			ZALUZIE_CASOVAC_VECER[2] = 900000
			ZALUZIE_CASOVAC_VECER[3] = 900000
			ZALUZIE_CASOVAC_VECER[4] = 900000
			ZALUZIE_CASOVAC_VECER[5] = 90000 
			ZALUZIE_CASOVAC_VECER[6] = 9000
			TIMELINE_CREATE(TL_CASOVAC_VECER,ZALUZIE_CASOVAC_VECER,6,TIMELINE_RELATIVE,TIMELINE_ONCE)
			}
	}

DEFINE_CALL 'Zaluzie1_Dolu'
	 {
	 ZALUZIE_CAS_UNI1[1] = 600
	 ZALUZIE_CAS_UNI1[2] = 600
	 ZALUZIE_CAS_UNI1[3] = 600
	 ZALUZIE_CAS_UNI1[4] = 600
	 ZALUZIE_CAS_UNI1[5] = 600
	 ZALUZIE_CAS_UNI1[6] = 600
	 ZALUZIE_CAS_UNI1[7] = 600
	 ZALUZIE_CAS_UNI1[8] = 600
	 ZALUZIE_CAS_UNI1[9] = 600
	 ZALUZIE_CAS_UNI1[10] = 600
	 ZALUZIE_CAS_UNI1[11] = 600
	 ZALUZIE_CAS_UNI1[12] = 600
	 ZALUZIE_CAS_UNI1[13] = 600
	 ZALUZIE_CAS_UNI1[14] = 600
	 ZALUZIE_CAS_UNI1[15] = 600
	 ZALUZIE_CAS_UNI1[16] = 600
	 ZALUZIE_CAS_UNI1[17] = 600
	 ZALUZIE_CAS_UNI1[18] = 600
	 ZALUZIE_CAS_UNI1[19] = 600
	 ZALUZIE_CAS_UNI1[20] = 600
	 ZALUZIE_CAS_UNI1[21] = 600
	 ZALUZIE_CAS_UNI1[22] = 600
	 ZALUZIE_CAS_UNI1[23] = 600
	 ZALUZIE_CAS_UNI1[24] = 600
	 ZALUZIE_CAS_UNI1[25] = 600
	 ZALUZIE_CAS_UNI1[26] = 600
	 ZALUZIE_CAS_UNI1[27] = 149000
	 IF(TIMELINE_ACTIVE(TL_ZALUZ_1NP_UP))TIMELINE_KILL(TL_ZALUZ_1NP_UP)
	 IF (!TIMELINE_ACTIVE(TL_ZALUZ_1NP_DOWN)) 
		  {	
		  TIMELINE_CREATE(TL_ZALUZ_1NP_DOWN,ZALUZIE_CAS_UNI1,27,TIMELINE_RELATIVE,TIMELINE_ONCE)
		  }
	 }
DEFINE_CALL 'Zaluzie1_Dolu_10'
	 {
	 IF(TIMELINE_ACTIVE(TL_ZALUZ_1NP_OPEN))TIMELINE_KILL(TL_ZALUZ_1NP_OPEN)
	 ZALUZIE_CAS_UNI1[1] = 300
	 ZALUZIE_CAS_UNI1[2] = 300
	 ZALUZIE_CAS_UNI1[3] = 300
	 ZALUZIE_CAS_UNI1[4] = 300
	 ZALUZIE_CAS_UNI1[5] = 300
	 ZALUZIE_CAS_UNI1[6] = 300
	 ZALUZIE_CAS_UNI1[7] = 300
	 ZALUZIE_CAS_UNI1[8] = 300
	 ZALUZIE_CAS_UNI1[9] = 300
	 ZALUZIE_CAS_UNI1[10] = 300
	 ZALUZIE_CAS_UNI1[11] = 300
	 ZALUZIE_CAS_UNI1[12] = 300
	 ZALUZIE_CAS_UNI1[13] = 300	
	 ZALUZIE_CAS_UNI1[14] = 300
	 ZALUZIE_CAS_UNI1[15] = 300
	 ZALUZIE_CAS_UNI1[16] = 300	
	 ZALUZIE_CAS_UNI1[17] = 300
	 ZALUZIE_CAS_UNI1[18] = 300
	 ZALUZIE_CAS_UNI1[19] = 300	 // rezerva
	 IF(TIMELINE_ACTIVE(TL_ZALUZ_1NP_CLOSE))TIMELINE_KILL(TL_ZALUZ_1NP_CLOSE)
	 TIMELINE_CREATE(TL_ZALUZ_1NP_CLOSE,ZALUZIE_CAS_UNI1,18,TIMELINE_RELATIVE,TIMELINE_ONCE)
	 }	
DEFINE_CALL 'Zaluzie1_Dolu_25'
	 {
	 IF(TIMELINE_ACTIVE(TL_ZALUZ_1NP_OPEN))TIMELINE_KILL(TL_ZALUZ_1NP_OPEN)
	 ZALUZIE_CAS_UNI1[1] = 80
	 ZALUZIE_CAS_UNI1[2] = 380
	 ZALUZIE_CAS_UNI1[3] = 500
	 ZALUZIE_CAS_UNI1[4] = 380
	 ZALUZIE_CAS_UNI1[5] = 500
	 ZALUZIE_CAS_UNI1[6] = 380
	 ZALUZIE_CAS_UNI1[7] = 500
	 ZALUZIE_CAS_UNI1[8] = 380
	 ZALUZIE_CAS_UNI1[9] = 500
	 ZALUZIE_CAS_UNI1[10] = 380
	 ZALUZIE_CAS_UNI1[11] = 500
	 ZALUZIE_CAS_UNI1[12] = 380
	 ZALUZIE_CAS_UNI1[13] = 500	
	 ZALUZIE_CAS_UNI1[14] = 380
	 ZALUZIE_CAS_UNI1[15] = 500
	 ZALUZIE_CAS_UNI1[16] = 380	
	 ZALUZIE_CAS_UNI1[17] = 500
	 ZALUZIE_CAS_UNI1[18] = 380	
	 IF(TIMELINE_ACTIVE(TL_ZALUZ_1NP_CLOSE))TIMELINE_KILL(TL_ZALUZ_1NP_CLOSE)
	 TIMELINE_CREATE(TL_ZALUZ_1NP_CLOSE,ZALUZIE_CAS_UNI1,18,TIMELINE_RELATIVE,TIMELINE_ONCE)
	 }	 	 
DEFINE_CALL 'Zaluzie1_Dolu_30'
	 {
	 SEND_COMMAND dvMyTP_01,"'^TXT-850,0,','DOLU 30'"
	 IF(TIMELINE_ACTIVE(TL_ZALUZ_1NP_OPEN))TIMELINE_KILL(TL_ZALUZ_1NP_OPEN)
	 ZALUZIE_CAS_UNI1[1] = 405
	 ZALUZIE_CAS_UNI1[2] = 405
	 ZALUZIE_CAS_UNI1[3] = 405
	 ZALUZIE_CAS_UNI1[4] = 405
	 ZALUZIE_CAS_UNI1[5] = 405
	 ZALUZIE_CAS_UNI1[6] = 405
	 ZALUZIE_CAS_UNI1[7] = 405
	 ZALUZIE_CAS_UNI1[8] = 405
	 ZALUZIE_CAS_UNI1[9] = 405
	 ZALUZIE_CAS_UNI1[10] = 400
	 ZALUZIE_CAS_UNI1[11] = 405
	 ZALUZIE_CAS_UNI1[12] = 405
	 ZALUZIE_CAS_UNI1[13] = 405
	 ZALUZIE_CAS_UNI1[14] = 405
	 ZALUZIE_CAS_UNI1[15] = 405
	 ZALUZIE_CAS_UNI1[16] = 405
	 ZALUZIE_CAS_UNI1[17] = 405
	 ZALUZIE_CAS_UNI1[18] = 405
	 IF(TIMELINE_ACTIVE(TL_ZALUZ_1NP_CLOSE))TIMELINE_KILL(TL_ZALUZ_1NP_CLOSE)
	 TIMELINE_CREATE(TL_ZALUZ_1NP_CLOSE,ZALUZIE_CAS_UNI1,18,TIMELINE_RELATIVE,TIMELINE_ONCE)
	 }	
	 
DEFINE_CALL 'Zaluzie1_Dolu_50'
	 {
	 SEND_COMMAND dvMyTP_01,"'^TXT-850,0,','DOLU 30'"
	 IF(TIMELINE_ACTIVE(TL_ZALUZ_1NP_OPEN))TIMELINE_KILL(TL_ZALUZ_1NP_OPEN)
	 ZALUZIE_CAS_UNI1[1] = 605
	 ZALUZIE_CAS_UNI1[2] = 605
	 ZALUZIE_CAS_UNI1[3] = 605
	 ZALUZIE_CAS_UNI1[4] = 605
	 ZALUZIE_CAS_UNI1[5] = 605
	 ZALUZIE_CAS_UNI1[6] = 605
	 ZALUZIE_CAS_UNI1[7] = 605
	 ZALUZIE_CAS_UNI1[8] = 605
	 ZALUZIE_CAS_UNI1[9] = 605
	 ZALUZIE_CAS_UNI1[10] = 600
	 ZALUZIE_CAS_UNI1[11] = 605
	 ZALUZIE_CAS_UNI1[12] = 605
	 ZALUZIE_CAS_UNI1[13] = 605
	 ZALUZIE_CAS_UNI1[14] = 605
	 ZALUZIE_CAS_UNI1[15] = 605
	 ZALUZIE_CAS_UNI1[16] = 605
	 ZALUZIE_CAS_UNI1[17] = 605
	 ZALUZIE_CAS_UNI1[18] = 605
	 IF(TIMELINE_ACTIVE(TL_ZALUZ_1NP_CLOSE))TIMELINE_KILL(TL_ZALUZ_1NP_CLOSE)
	 TIMELINE_CREATE(TL_ZALUZ_1NP_CLOSE,ZALUZIE_CAS_UNI1,18,TIMELINE_RELATIVE,TIMELINE_ONCE)
	 }	
	 
DEFINE_CALL 'Zaluzie1_Dolu_Srovnat'	///Pruhledne
	 {
	 IF(TIMELINE_ACTIVE(TL_ZALUZ_1NP_OPEN))TIMELINE_KILL(TL_ZALUZ_1NP_OPEN)
	 ZALUZIE_CAS_UNI1[1] = 950	// KUCHYN STOP event 2
	 ZALUZIE_CAS_UNI1[2] = 900	
	 ZALUZIE_CAS_UNI1[3] = 950	// KOUP STOP event 4
	 ZALUZIE_CAS_UNI1[4] = 850	
	 ZALUZIE_CAS_UNI1[5] = 950	// WC STOP
	 ZALUZIE_CAS_UNI1[6] = 850	
	 ZALUZIE_CAS_UNI1[7] = 1250  	///1NP obyvak krb leva start
	 ZALUZIE_CAS_UNI1[8] = 1250		///1NP obyvak krb leva stop
	 ZALUZIE_CAS_UNI1[9] = 1250		///1NP obyvak krb pr start
	 ZALUZIE_CAS_UNI1[10] = 1260	///1NP obyvak krb pr stop
	 ZALUZIE_CAS_UNI1[11] = 1250		// jiz nic duleziteho 
	 ZALUZIE_CAS_UNI1[12] = 1250
	 ZALUZIE_CAS_UNI1[13] = 950
	 ZALUZIE_CAS_UNI1[14] = 950
	 ZALUZIE_CAS_UNI1[15] = 750
	 ZALUZIE_CAS_UNI1[16] = 950
	 ZALUZIE_CAS_UNI1[17] = 950
	 ZALUZIE_CAS_UNI1[18] = 500
	 IF(TIMELINE_ACTIVE(TL_ZALUZ_1NP_CLOSE))TIMELINE_KILL(TL_ZALUZ_1NP_CLOSE)
	 TIMELINE_CREATE(TL_ZALUZ_1NP_OPEN,ZALUZIE_CAS_UNI1,18,TIMELINE_RELATIVE,TIMELINE_ONCE)
	 }	
	 
DEFINE_CALL 'Zaluzie1_Dolu_100'
{
CALL 'Zaluzie1_Dolu'
WAIT 999  //950
	 {
	 IF(TIMELINE_ACTIVE(TL_ZALUZ_1NP_DOWN))TIMELINE_KILL(TL_ZALUZ_1NP_DOWN)
	 CALL 'Zaluzie1_Stop2'
	 WAIT 60
		  {
		  CALL 'Zaluzie1_Dolu_Srovnat'
		  }
	 }
}	
  
DEFINE_CALL 'ZaluzieVenek_Dolu_100'
{
	 IF(TIMELINE_ACTIVE(TL_ZALUZ_VENEK_VECER))TIMELINE_KILL(TL_ZALUZ_VENEK_VECER)
	 ZALUZIE_CAS_UNI1[1] = 100	// event 1
	 ZALUZIE_CAS_UNI1[2] = 80000	
	 ZALUZIE_CAS_UNI1[3] = 990	// event 3
	 ZALUZIE_CAS_UNI1[4] = 990	
	 ZALUZIE_CAS_UNI1[5] = 100	// 
	 TIMELINE_CREATE(TL_ZALUZ_VENEK_VECER,ZALUZIE_CAS_UNI1,5,TIMELINE_RELATIVE,TIMELINE_ONCE)
} 
DEFINE_CALL 'Zaluzie1_Stop'
	 {
		CALL 'ZL_KUCHYN1NP_ZALUZ_STOP'
		CALL 'ZL_OBYVAK_KRBLEVA_STOP'
		CALL 'ZL_OBYVAK_KRBPRAVA_STOP'
		CALL 'ZL_ZZAHRAD_VYCHODZ_STOP'
		CALL 'ZL_ZZAHRAD_VYCHODJ_STOP'
		CALL 'ZL_ZZAHRAD_DVERE_STOP'
		CALL 'ZL_ZZAHRAD_DVERE_STOP'	
		CALL 'ZL_ZZAHRAD_KRAJLEVY_STOP'
		CALL 'ZL_ZZAHRAD_SEVER_STOP'
		CALL 'ZL_ZZAH_CIDLO_VYCHOD_STOP'
	 }
	 
DEFINE_CALL 'Zaluzie1_Stop2'
	 {
	 IF(TIMELINE_ACTIVE(TL_ZALUZ_1NP_UP))TIMELINE_KILL(TL_ZALUZ_1NP_UP)
	 IF(TIMELINE_ACTIVE(TL_ZALUZ_1NP_DOWN))TIMELINE_KILL(TL_ZALUZ_1NP_DOWN)
	 CALL 'ZL_KUCHYN1NP_ZALUZ_STOP'
	 WAIT 4
	 CALL 'ZL_OBYVAK_KRBLEVA_STOP'
	 WAIT 8
	 CALL 'ZL_OBYVAK_KRBPRAVA_STOP'
	 WAIT 12
	 CALL 'ILIGHT_SEQ_START' (SEQ_1NPKOR_DW,5)
	 WAIT 16
	  CALL 'ZL_KOUP1NP_ZALUZ_STOP'
	 WAIT 20
	 CALL 'ZL_WC1NP_ZALUZ_STOP'
	 WAIT 25
	 CALL 'ILIGHT_SEQ_START' (SEQ_1NPWCR_DW,5)
	 WAIT 29
	CALL 'ZL_ZZAHRAD_SEVER_STOP'
	 WAIT 33
	 CALL 'ZL_ZZAHRAD_KRAJLEVY_STOP'
	 WAIT 37
	 CALL 'ZL_ZZAHRAD_VVYCHOD_STOP'
	 //WAIT 41
	 //
	 //WAIT 44
	 //
	 //WAIT 48
	 //
	 }
	 
DEFINE_CALL 'Zaluzie1_Nahoru'
	 {
		ZALUZIE_CAS_UNI1[1] = 800
		ZALUZIE_CAS_UNI1[2] = 800
		ZALUZIE_CAS_UNI1[3] = 800
		ZALUZIE_CAS_UNI1[4] = 800
		ZALUZIE_CAS_UNI1[5] = 800
		ZALUZIE_CAS_UNI1[6] = 800
		ZALUZIE_CAS_UNI1[7] = 800
		ZALUZIE_CAS_UNI1[8] = 800
		ZALUZIE_CAS_UNI1[9] = 800
		ZALUZIE_CAS_UNI1[10] = 800
		ZALUZIE_CAS_UNI1[11] = 800
		ZALUZIE_CAS_UNI1[12] = 800
		ZALUZIE_CAS_UNI1[13] = 800
		ZALUZIE_CAS_UNI1[14] = 800
		ZALUZIE_CAS_UNI1[15] = 800
		ZALUZIE_CAS_UNI1[16] = 800
		ZALUZIE_CAS_UNI1[17] = 800
		ZALUZIE_CAS_UNI1[18] = 800
		ZALUZIE_CAS_UNI1[19] = 800
		ZALUZIE_CAS_UNI1[20] = 800
		ZALUZIE_CAS_UNI1[21] = 800
		ZALUZIE_CAS_UNI1[22] = 800
		ZALUZIE_CAS_UNI1[23] = 800
		ZALUZIE_CAS_UNI1[24] = 800
		ZALUZIE_CAS_UNI1[25] = 800
		ZALUZIE_CAS_UNI1[26] = 800
		ZALUZIE_CAS_UNI1[27] = 149000
	 IF(TIMELINE_ACTIVE(TL_ZALUZ_1NP_DOWN))TIMELINE_KILL(TL_ZALUZ_1NP_DOWN)
	 IF (!TIMELINE_ACTIVE(TL_ZALUZ_1NP_UP)) 
		  {	
		  TIMELINE_CREATE(TL_ZALUZ_1NP_UP,ZALUZIE_CAS_UNI1,27,TIMELINE_RELATIVE,TIMELINE_ONCE)
		  }
	 }	
DEFINE_CALL 'Zaluzie1_Nahoru_10'
	 {
	 ZALUZIE_CAS_UNI1[1]  = 50
	 ZALUZIE_CAS_UNI1[2]  = 350
	 ZALUZIE_CAS_UNI1[3]  = 500
	 ZALUZIE_CAS_UNI1[4]  = 350
	 ZALUZIE_CAS_UNI1[5]  = 500
	 ZALUZIE_CAS_UNI1[6]  = 350
	 ZALUZIE_CAS_UNI1[7]  = 500
	 ZALUZIE_CAS_UNI1[8]  = 340
	 ZALUZIE_CAS_UNI1[9]  = 500
	 ZALUZIE_CAS_UNI1[10] = 340
	 ZALUZIE_CAS_UNI1[11] = 500
	 ZALUZIE_CAS_UNI1[12] = 320
	 ZALUZIE_CAS_UNI1[13] = 500
	 ZALUZIE_CAS_UNI1[14] = 320
	 ZALUZIE_CAS_UNI1[15] = 500
	 ZALUZIE_CAS_UNI1[16] = 320
	 ZALUZIE_CAS_UNI1[17] = 500
	 ZALUZIE_CAS_UNI1[18] = 320  
	 TIMELINE_CREATE(TL_ZALUZ_1NP_OPEN,ZALUZIE_CAS_UNI1,18,TIMELINE_RELATIVE,TIMELINE_ONCE)
	 }	 
DEFINE_CALL 'Zaluzie1_Nahoru_25'
	 {
	 ZALUZIE_CAS_UNI1[1] 	= 50 	// KUCHYN
	 ZALUZIE_CAS_UNI1[2] 	= 460
	 ZALUZIE_CAS_UNI1[3] 	= 500 	// KOUPELNA
	 ZALUZIE_CAS_UNI1[4] 	= 540
	 ZALUZIE_CAS_UNI1[5] 	= 500	// WC
	 ZALUZIE_CAS_UNI1[6] 	= 540
	 ZALUZIE_CAS_UNI1[7] 	= 500	// OBYVAK 1
	 ZALUZIE_CAS_UNI1[8] 	= 470
	 ZALUZIE_CAS_UNI1[9] 	= 500	// OBYVAK 2
	 ZALUZIE_CAS_UNI1[10] = 470
	 ZALUZIE_CAS_UNI1[11] = 500		// ZIMNI ZAHRADA DOLU
	 ZALUZIE_CAS_UNI1[12] = 380
	 ZALUZIE_CAS_UNI1[13] = 500
	 ZALUZIE_CAS_UNI1[14] = 380		// ZIMNI ZAHRADA STOP
	 ZALUZIE_CAS_UNI1[15] = 500
	 ZALUZIE_CAS_UNI1[16] = 380	
	 ZALUZIE_CAS_UNI1[17] = 500
	 ZALUZIE_CAS_UNI1[18] = 380
	 TIMELINE_CREATE(TL_ZALUZ_1NP_OPEN,ZALUZIE_CAS_UNI1,18,TIMELINE_RELATIVE,TIMELINE_ONCE)
	 }	 
DEFINE_CALL 'Zaluzie1_Nahoru_30'
	 {
	 SEND_COMMAND dvMyTP_01,"'^TXT-850,0,','NAHORU 30'"
	 ZALUZIE_CAS_UNI1[1] 	= 410
	 ZALUZIE_CAS_UNI1[2] 	= 410
	 ZALUZIE_CAS_UNI1[3] 	= 410
	 ZALUZIE_CAS_UNI1[4] 	= 410
	 ZALUZIE_CAS_UNI1[5] 	= 410
	 ZALUZIE_CAS_UNI1[6] 	= 410
	 ZALUZIE_CAS_UNI1[7] 	= 410
	 ZALUZIE_CAS_UNI1[8] 	= 410
	 ZALUZIE_CAS_UNI1[9] 	= 410
	 ZALUZIE_CAS_UNI1[10] = 410
	 ZALUZIE_CAS_UNI1[11] = 410
	 ZALUZIE_CAS_UNI1[12] = 410
	 ZALUZIE_CAS_UNI1[13] = 410
	 ZALUZIE_CAS_UNI1[14] = 410
	 ZALUZIE_CAS_UNI1[15] = 410
	 ZALUZIE_CAS_UNI1[16] = 410	
	 ZALUZIE_CAS_UNI1[17] = 410
	 ZALUZIE_CAS_UNI1[18] = 410	
	 TIMELINE_CREATE(TL_ZALUZ_1NP_OPEN,ZALUZIE_CAS_UNI1,18,TIMELINE_RELATIVE,TIMELINE_ONCE)
	 }	 	 
//////////////////////  --------------------  ZIMNI ZAHRADA	----------------------------///////////////


DEFINE_CALL 'ZL_ZZAH_CIDLO_SEVER_NAHORU'						//JIH? NEVIM KDE JE POUZITO
{
IF (ZAL_1NP_ZZAH_Z1 = 0)
	{
	CALL 'ZL_ZZAHRAD_SEVER_NAHORU'		
	wait 12800
		{
		CALL 'ZL_ZZAHRAD_SEVER_STOP'
		}
	}
}




DEFINE_CALL 'ZL_ZZAH_CIDLO_ZAPAD_DOLU'						//JIHO VYCHOD
{
IF (ZAL_1NP_ZZAH_Z1 = 0)
	{
	CALL 'ZL_ZZAHRAD_KRAJLEVY_STOP'
	wait 5
	CALL 'ZL_ZZAHRAD_KRAJLEVY_DOLU'		
	wait 12800
		{
		CALL 'ZL_ZZAHRAD_KRAJLEVY_STOP'
		}
	}
}

DEFINE_CALL 'ZL_ZZAH_CIDLO_ZAPAD_NAHORU'						//JIHO VYCHOD
{
IF (ZAL_1NP_ZZAH_Z1 = 0)
	{
	CALL 'ZL_ZZAHRAD_KRAJLEVY_STOP'
	wait 5
	CALL 'ZL_ZZAHRAD_KRAJLEVY_NAHORU'		
	wait 12800
		{
		CALL 'ZL_ZZAHRAD_KRAJLEVY_STOP'
		}
	}
}



DEFINE_CALL 'ZL_ZZAHRAD_DVERE_DW_CIDLO'						// SOUMRAKOVE CIDLO DOLU JE TMA
{
IF (ZAL_1NP_ZZAH_Z3 = 0)
	{
	IF (ZAL_1NP_ZZAH_Z3<1)
		{
		STAV_ZZ_CIDLO_SOUMRAK=1
		IF (DVERE = Zahrada_ZAVRENA)
			{
			CANCEL_WAIT 'ZAL_DVERE_DOLU'
			CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_DVERE_UP,0,0)	
			wait 5
				{
				CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_DVERE_DW,100,0)  // JEDU DOLU
				}
			}
		 ELSE
			{
			WAIT 1500 'ZAL_DVERE_DOLU'
			CALL 'ZL_ZZAHRAD_DVERE_DW_CIDLO'
			}
		}
	}
}
DEFINE_CALL 'ZL_ZZAHRAD_DVERE_UP_CIDLO'						// // SOUMRAKOVE CIDLO NAHORU
{
IF (ZAL_1NP_ZZAH_Z3 = 0)
	{
	STAV_ZZ_CIDLO_SOUMRAK=0
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_DVERE_UP,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_DVERE_UP,100,0)
		}
	}
}

DEFINE_CALL 'ZL_ZZAH_REAKCE_NA_DVERE'						// REAKCE NA DVERE
{
// STAV_ZZ_CIDLO_SOUMRAK=0		// STAV CIDLO SOUMRAK
// STAV_ZZ_CIDLO_DVERE=0		// STAV CIDLO OTEVRENYCH DVERI
// STAV_ZZ_DVERE_NAHORE=0		// VYJELY BY NAHORU PRES CIDLO OTEVRENYCH DVERI
// ZAL_DVERE_NAHORE = FALSE    // ZDA JSOU NEBO Nejsou nahore
// ZALUZIE_STAV  - 1 ZALUZIE OTEVRENE / 0 NOC ZAVRENE //zda jsem pres sourakove cidlo spoustel zaluzie
	IF (ZAL_1NP_ZZAH_Z3<5) // 0 nic 6 automat jiz nevim proc jsem pouzil
	{
		IF (DVERE = Zahrada_ZAVRENA)    //CIDLO HLASI ZAVRENA - OTEVRENA = 0
			{
			SEND_COMMAND dvMyTP_01,"'^UNI-96,0,004400560045015800450020005A0041005601580045004E004F'"
			IF (ZAL_DVERE_NAHORE = TRUE)	// V PRIPADE ZE BY MI OTEVRENI DVERI VYJELO ZALUZIE
				{
				IF (STAV_ZZ_DVERE_NAHORE= TRUE)	// V PRIPADE ZE ZALUZIE JSOU NAHORE
					{
					IF (ZALUZIE_STAV=0) //1 ZALUZIE OTEVRENE - 0 NOC ZAVRENE - zda jsem pres sourakove cidlo spoustel
						{
						CALL 'ZL_ZZAHRAD_DVERE_DOLU'
						ZAL_DVERE_NAHORE = FALSE
						}
					}
				ELSE
					{
					SEND_COMMAND dvMyTP_01,"'^UNI-96,0,004400560045015800450020005A0041005601580045004E004F'"
					}
				}
			}
		ELSE  		// CIDLO HLASI OTEVRENA = 0
			{
				SEND_COMMAND dvMyTP_01,"'^UNI-96,0,004400560045015800450020004F00540045005601580045004E004F'"
				IF (STAV_ZZ_DVERE_NAHORE= FALSE)	// V PRIPADE ZE ZALUZIE JSOU DOLE
					{
					CALL 'ZL_ZZAHRAD_DVERE_NAHORU'
					ZAL_DVERE_NAHORE = TRUE
					//ZAL_DVERE_NAHORE = FALSE
					}
				ELSE
					{
					SEND_COMMAND dvMyTP_01,"'^UNI-96,0,004400560045015800450020004F00540045005601580045004E004F'"
					}
			} 
	}
}





DEFINE_CALL 'ZL_ZZAH_CIDLO_VYCHOD_DOLU'						// ZAPAD
{
IF (ZAL_1NP_ZZAH_Z5 = 0)
	{
	CALL 'ZL_ZZAHRAD_VYCHODZ_DOLU'	
	CALL 'ZL_ZZAHRAD_VYCHODJ_DOLU'	
	wait 12800
		{
		CALL 'ZL_ZZAHRAD_VYCHODZ_STOP'
		CALL 'ZL_ZZAHRAD_VYCHODJ_STOP'
		}
	}
}

DEFINE_CALL 'ZL_ZZAH_CIDLO_VYCHOD_NAHORU'					// ZAPAD
{
IF (ZAL_1NP_ZZAH_Z5 = 0)
	{
	CALL 'ZL_ZZAHRAD_VYCHODZ_NAHORU'	
	CALL 'ZL_ZZAHRAD_VYCHODJ_NAHORU'	
	wait 12800
		{
		CALL 'ZL_ZZAHRAD_VYCHODZ_STOP'
		CALL 'ZL_ZZAHRAD_VYCHODJ_STOP'
		}
	}
}
DEFINE_CALL 'ZL_ZZAH_CIDLO_VYCHOD_STOP'						// 
	{
	CALL 'ZL_ZZAHRAD_VYCHODZ_STOP'	
	CALL 'ZL_ZZAHRAD_VYCHODJ_STOP'
	}
	
DEFINE_CALL 'ZaluzieZZ_Nahoru_C30'
{ 
				CALL 'ZL_ZZAH_CIDLO_VYCHOD_NAHORU'
				wait 1
				CALL 'ZL_ZZAHRAD_SEVER_NAHORU'
				wait 2
				CALL 'ZL_ZZAHRAD_KRAJLEVY_NAHORU'
				WAIT 3
				CALL 'ZL_ZZAHRAD_DVERE_NAHORU'
				wait 7
				CALL 'ZL_ZZAH_CIDLO_VYCHOD_STOP'
				wait 8
				CALL 'ZL_ZZAHRAD_SEVER_STOP'
				wait 9
				CALL 'ZL_ZZAHRAD_KRAJLEVY_STOP'
				wait 10
				CALL 'ZL_ZZAHRAD_DVERE_STOP'
} 

DEFINE_CALL 'ZaluzieZZ_Srovnat_100' // Srovnat na 100 pruhlednost - Prime volani bez ohledu na stavy
{ 
				// Nejprve pro jistotu vypnu smer dolu pro vsechny zaluzie v zz
				CALL 'ILIGHT_CHANNEL_OFF'(ZL_1NP_ZZAHRAD_SEVER_DW)
				CALL 'ILIGHT_CHANNEL_OFF'(ZL_1NP_ZZAHRAD_JIH_DW)
				CALL 'ILIGHT_CHANNEL_OFF'(ZL_1NP_ZZAHRAD_DVERE_DW)
				CALL 'ILIGHT_CHANNEL_OFF'(ZL_1NP_ZZAHRAD_ZAPADZ_DW)
				CALL 'ILIGHT_CHANNEL_OFF'(ZL_1NP_ZZAHRAD_ZAPADJ_DW)
				// Nyni zapnu postupne smer nahoru 
				wait 20
				CALL 'ILIGHT_CHANNEL_ON'(ZL_1NP_ZZAHRAD_SEVER_UP)
				wait 21
				CALL 'ILIGHT_CHANNEL_ON'(ZL_1NP_ZZAHRAD_JIH_UP)
				wait 22
				CALL 'ILIGHT_CHANNEL_ON'(ZL_1NP_ZZAHRAD_DVERE_UP)
				wait 23
				CALL 'ILIGHT_CHANNEL_ON'(ZL_1NP_ZZAHRAD_ZAPADZ_UP)
				wait 24
				CALL 'ILIGHT_CHANNEL_ON'(ZL_1NP_ZZAHRAD_ZAPADJ_UP)
				// Postupne vypinam
				wait 31
				CALL 'ILIGHT_CHANNEL_OFF'(ZL_1NP_ZZAHRAD_SEVER_UP)
				wait 32
				CALL 'ILIGHT_CHANNEL_OFF'(ZL_1NP_ZZAHRAD_JIH_UP)
				wait 33
				CALL 'ILIGHT_CHANNEL_OFF'(ZL_1NP_ZZAHRAD_DVERE_UP)
				wait 34
				CALL 'ILIGHT_CHANNEL_OFF'(ZL_1NP_ZZAHRAD_ZAPADZ_UP)
				wait 35
				CALL 'ILIGHT_CHANNEL_OFF'(ZL_1NP_ZZAHRAD_ZAPADJ_UP)
				
			(*
				VOLATILE CHAR ZL_1NP_ZZAHRAD_SEVER_DW[2] = {27,2} 					// Zaluzie zimni zahrada
				VOLATILE CHAR ZL_1NP_ZZAHRAD_SEVER_UP[2] = {27,1} 					// Zaluzie zimni zahrada
				VOLATILE CHAR ZL_1NP_ZZAHRAD_ZAPAD_DW[2] = {27,10} 					// Zaluzie zimni zahrada ZAPAD = JIH
				VOLATILE CHAR ZL_1NP_ZZAHRAD_ZAPAD_UP[2] = {27,9} 					// Zaluzie zimni zahrada vychod z
				VOLATILE CHAR ZL_1NP_ZZAHRAD_DVERE_DW[2] = {27,6} 					// Zaluzie zimni zahrada dvere
				VOLATILE CHAR ZL_1NP_ZZAHRAD_DVERE_UP[2] = {27,5} 					// Zaluzie zimni zahrada VYCHOD VEN = ZAPAD
				VOLATILE CHAR ZL_1NP_ZZAHRAD_ZAPADZ_DW[2] = {27,4} 				// Zaluzie zimni zahrada 8
				VOLATILE CHAR ZL_1NP_ZZAHRAD_ZAPADZ_UP[2] = {27,3} 				// Zaluzie zimni zahrada 7
				VOLATILE CHAR ZL_1NP_ZZAHRAD_VYCHODJ_DW[2] = {27,8} 				// Zaluzie zimni zahrada 10
				VOLATILE CHAR ZL_1NP_ZZAHRAD_VYCHODJ_UP[2] = {27,7} 				// Zaluzie zimni zahrada 9
				*)
} 

DEFINE_CALL 'ZaluzieZZ_DVERE_SROVNAT'
{ 
				CALL 'ZL_ZZAHRAD_DVERE_NAHORU'
				CALL 'ZL_ZZAH_CIDLO_VYCHOD_NAHORU'
				WAIT 5
				CALL 'ZL_ZZAH_CIDLO_VYCHOD_STOP'
				WAIT 6
				CALL 'ZL_ZZAHRAD_DVERE_STOP'
}
(*				
DEFINE_CALL 'ZaluzieZZ_OTEVRI'
{ 
				CALL 'ZL_ZZAH_CIDLO_VYCHOD_NAHORU'
				wait 5
				CALL 'ZL_ZZAHRAD_SEVER_NAHORU'
				wait 10
				CALL 'ZL_ZZAHRAD_KRAJLEVY_NAHORU'
				WAIT 15
				IF (ZAL_1NP_ZZAH_Z3=0)
					{
					CALL 'ZL_ZZAHRAD_DVERE_NAHORU'	
					}
				wait 9900
				CALL 'ZL_ZZAH_CIDLO_VYCHOD_STOP'
				wait 9906
				CALL 'ZL_ZZAHRAD_SEVER_STOP'
				wait 9920
				CALL 'ZL_ZZAHRAD_KRAJLEVY_STOP'
				wait 9930
				CALL 'ZL_ZZAHRAD_DVERE_STOP'
} 

DEFINE_CALL 'ZaluzieZZ_Dolu_Soumrak'
{
			CALL 'ZL_ZZAH_CIDLO_VYCHOD_DOLU'	
			WAIT 5
			CALL 'ZL_ZZAHRAD_DVERE_DW_CIDLO'	
			WAIT 10
			CALL 'ZL_ZZAH_CIDLO_ZAPAD_DOLU'	
			WAIT 15
			CALL 'ZL_ZZAH_CIDLO_SEVER_DOLU'
			

}

DEFINE_CALL 'ZaluzieZZ_Dolu_C30'
{ 
				CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_SEVER_UP,0,0)			//z1
				WAIT 5
					CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_SEVER_DW,100,0)
				WAIT 8
					CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_SEVER_DW,0,0)
				WAIT 15
					CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_JIH_UP,0,0)		//z2
				WAIT 20
					CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_ZAPAD_DW,100,0)
				WAIT 23
					CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_ZAPAD_DW,0,0)
				WAIT 30
					CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_DVERE_UP,0,0)		//z3
				WAIT 35
					CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_DVERE_DW,100,0)
				WAIT 38
					CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_DVERE_DW,0,0)
				WAIT 45
					CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_VYCHODZ_UP,0,0)	//z4
				WAIT 50
					CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_VYCHODZ_DW,100,0)
				WAIT 53
					CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_VYCHODZ_DW,0,0)
				WAIT 60
					CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_VYCHODJ_UP,0,0)	//z5
				WAIT 65
					CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_VYCHODJ_DW,100,0)
				WAIT 68
					CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_VYCHODJ_DW,0,0)
				
}
*)

///////////////////////////		Macra zaluzie 2NP		////////////////////////////
DEFINE_CALL 'Zaluzie2_Dolu'
	 {
	 ZALUZIE_CAS_UNI2[1] = 600
	 ZALUZIE_CAS_UNI2[2] = 600
	 ZALUZIE_CAS_UNI2[3] = 600
	 ZALUZIE_CAS_UNI2[4] = 600
	 ZALUZIE_CAS_UNI2[5] = 600
	 ZALUZIE_CAS_UNI2[6] = 600
	 ZALUZIE_CAS_UNI2[7] = 600
	 ZALUZIE_CAS_UNI2[8] = 600
	 ZALUZIE_CAS_UNI2[9] = 600
	 ZALUZIE_CAS_UNI2[10] = 600
	 ZALUZIE_CAS_UNI2[11] = 600
	 ZALUZIE_CAS_UNI2[12] = 600
	 ZALUZIE_CAS_UNI2[13] = 600
	 ZALUZIE_CAS_UNI2[14] = 600
	 ZALUZIE_CAS_UNI2[15] = 600
	 ZALUZIE_CAS_UNI2[16] = 600
	 ZALUZIE_CAS_UNI2[17] = 82000
	 IF(TIMELINE_ACTIVE(TL_ZALUZ_2NP_UP))TIMELINE_KILL(TL_ZALUZ_2NP_UP)
	 IF (!TIMELINE_ACTIVE(TL_ZALUZ_2NP_DOWN)) 
		  {	
		  TIMELINE_CREATE(TL_ZALUZ_2NP_DOWN,ZALUZIE_CAS_UNI2,17,TIMELINE_RELATIVE,TIMELINE_ONCE)
		  IF (ZAL_2NP_DETP_Z2<5)		//CHODI MI Z ILIGHT ZAL_2NP_DETP_Z2=4 ALE PRY S NI NIKDO NESJEL. SPATNE NAMAPOVANE TLACIRKO?
				{
				ZAL_2NP_DETP_Z2=0
				}
		  }
	 }
DEFINE_CALL 'Zaluzie2_Dolu_10'
	 {
	 ZALUZIE_CAS_UNI2[1] = 300
	 ZALUZIE_CAS_UNI2[2] = 300
	 ZALUZIE_CAS_UNI2[3] = 300
	 ZALUZIE_CAS_UNI2[4] = 300
	 ZALUZIE_CAS_UNI2[5] = 300
	 ZALUZIE_CAS_UNI2[6] = 300
	 ZALUZIE_CAS_UNI2[7] = 300
	 ZALUZIE_CAS_UNI2[8] = 300
	 ZALUZIE_CAS_UNI2[9] = 300
	 ZALUZIE_CAS_UNI2[10] = 300
	 ZALUZIE_CAS_UNI2[11] = 300
	 ZALUZIE_CAS_UNI2[12] = 300
	 ZALUZIE_CAS_UNI2[13] = 300	
	 ZALUZIE_CAS_UNI2[14] = 300
	 ZALUZIE_CAS_UNI2[15] = 350
	 ZALUZIE_CAS_UNI2[16] = 350
	 TIMELINE_CREATE(TL_ZALUZ_2NP_CLOSE,ZALUZIE_CAS_UNI2,16,TIMELINE_RELATIVE,TIMELINE_ONCE)
	 }	
	 
DEFINE_CALL 'Zaluzie2_Dolu_30'		/// UPRAVIT HALU
	 {
	 ZALUZIE_CAS_UNI2[1] = 20		// hala balkon kraj
	 ZALUZIE_CAS_UNI2[2] = 500
	 ZALUZIE_CAS_UNI2[3] = 420		// hala balkon stred
	 ZALUZIE_CAS_UNI2[4] = 480
	 ZALUZIE_CAS_UNI2[5] = 420
	 ZALUZIE_CAS_UNI2[6] = 420
	 ZALUZIE_CAS_UNI2[7] = 420
	 ZALUZIE_CAS_UNI2[8] = 420
	 ZALUZIE_CAS_UNI2[9] = 420
	 ZALUZIE_CAS_UNI2[10] = 420
	 ZALUZIE_CAS_UNI2[11] = 420
	 ZALUZIE_CAS_UNI2[12] = 420
	 ZALUZIE_CAS_UNI2[13] = 420	
	 ZALUZIE_CAS_UNI2[14] = 420
	 ZALUZIE_CAS_UNI2[15] = 430
	 ZALUZIE_CAS_UNI2[16] = 430
	 TIMELINE_CREATE(TL_ZALUZ_2NP_CLOSE,ZALUZIE_CAS_UNI2,16,TIMELINE_RELATIVE,TIMELINE_ONCE)
	 }

DEFINE_CALL 'Zaluzie2_Dolu_Srovnat'
	 {
	 ZALUZIE_CAS_UNI2[1] = 1400		// STOP HALA 3
	 ZALUZIE_CAS_UNI2[2] = 1380		
	 ZALUZIE_CAS_UNI2[3] = 1400		// STOP HALA 2
	 ZALUZIE_CAS_UNI2[4] = 1380
	 ZALUZIE_CAS_UNI2[5] = 1300		// STOP DP
	 ZALUZIE_CAS_UNI2[6] = 1300
	 ZALUZIE_CAS_UNI2[7] = 1400		// STOP HALA 1
	 ZALUZIE_CAS_UNI2[8] = 1350
	 ZALUZIE_CAS_UNI2[9] = 1350		// STOP LOZNICE 1
	 ZALUZIE_CAS_UNI2[10] = 1300
	 ZALUZIE_CAS_UNI2[11] = 1350	// STOP LOZNICE 2
	 ZALUZIE_CAS_UNI2[12] = 1250
	 ZALUZIE_CAS_UNI2[13] = 1300	
	 ZALUZIE_CAS_UNI2[14] = 1250
	 ZALUZIE_CAS_UNI2[15] = 1300
	 ZALUZIE_CAS_UNI2[16] = 1300
	  IF (TIMELINE_ACTIVE(TL_ZALUZ_2NP_OPEN))TIMELINE_KILL(TL_ZALUZ_2NP_OPEN)
	 TIMELINE_CREATE(TL_ZALUZ_2NP_OPEN,ZALUZIE_CAS_UNI2,16,TIMELINE_RELATIVE,TIMELINE_ONCE)
	 }
	 
DEFINE_CALL 'Zaluzie2_Dolu_100'
{
CALL 'Zaluzie2_Dolu'
WAIT 750
	 {
	 IF(TIMELINE_ACTIVE(TL_ZALUZ_2NP_DOWN))TIMELINE_KILL(TL_ZALUZ_2NP_DOWN)
	 CALL 'Zaluzie2_Stop'
	 WAIT 60
		  {
		  CALL 'Zaluzie2_Dolu_Srovnat'
		  }
	 }
}	 

DEFINE_CALL 'Zaluzie2_Stop'
	 {
	 CALL 'ILIGHT_SEQ_START' (SEQ_2NPDRL_DW,5)
	 CALL 'ILIGHT_SEQ_START' (SEQ_2NPDRP_DW,5)
	 CALL 'ILIGHT_SEQ_START' (SEQ_2NPDBA_DW,5)
	 CALL 'ZL_2NP_HALA_01_STOP'
	 CALL 'ZL_2NP_HALA_02_STOP'
	 CALL 'ZL_2NP_HALA_03_STOP'
	 CALL 'ZL_2NP_LOZNICE_01_STOP'
	 CALL 'ZL_2NP_LOZNICE_02_STOP'
	 }	 
DEFINE_CALL 'Zaluzie2_Stop2'
	 {
	 IF(TIMELINE_ACTIVE(TL_ZALUZ_2NP_UP))TIMELINE_KILL(TL_ZALUZ_2NP_UP)
	 IF(TIMELINE_ACTIVE(TL_ZALUZ_2NP_DOWN))TIMELINE_KILL(TL_ZALUZ_2NP_DOWN)
	 CALL 'ILIGHT_SEQ_START' (SEQ_2NPDRL_DW,5)
	 WAIT 6
	 CALL 'ILIGHT_SEQ_START' (SEQ_2NPDRP_DW,5)
	 WAIT 12
	 CALL 'ILIGHT_SEQ_START' (SEQ_2NPDBA_DW,5)
	 WAIT 18
	 CALL 'ZL_2NP_HALA_01_STOP'
	 WAIT 24
	 CALL 'ZL_2NP_HALA_02_STOP'
	 WAIT 30
	 CALL 'ZL_2NP_HALA_03_STOP'
	 WAIT 36
	 CALL 'ZL_2NP_LOZNICE_01_STOP'
	 WAIT 42
	 CALL 'ZL_2NP_LOZNICE_02_STOP'
	 }	 
DEFINE_CALL 'Zaluzie2_Nahoru'
	 {
	 ZALUZIE_CAS_UNI2[1] = 600
	 ZALUZIE_CAS_UNI2[2] = 600
	 ZALUZIE_CAS_UNI2[3] = 600
	 ZALUZIE_CAS_UNI2[4] = 600
	 ZALUZIE_CAS_UNI2[5] = 600
	 ZALUZIE_CAS_UNI2[6] = 600
	 ZALUZIE_CAS_UNI2[7] = 600
	 ZALUZIE_CAS_UNI2[8] = 600
	 ZALUZIE_CAS_UNI2[9] = 600
	 ZALUZIE_CAS_UNI2[10] = 600
	 ZALUZIE_CAS_UNI2[11] = 600
	 ZALUZIE_CAS_UNI2[12] = 600
	 ZALUZIE_CAS_UNI2[13] = 600
	 ZALUZIE_CAS_UNI2[14] = 600
	 ZALUZIE_CAS_UNI2[15] = 600
	 ZALUZIE_CAS_UNI2[16] = 600
	 ZALUZIE_CAS_UNI2[17] = 99990
	 IF(TIMELINE_ACTIVE(TL_ZALUZ_2NP_DOWN))TIMELINE_KILL(TL_ZALUZ_2NP_DOWN)
	 IF (!TIMELINE_ACTIVE(TL_ZALUZ_2NP_UP)) //
		  {	
		    TIMELINE_CREATE(TL_ZALUZ_2NP_UP,ZALUZIE_CAS_UNI2,17,TIMELINE_RELATIVE,TIMELINE_ONCE)
			IF (ZAL_2NP_DETP_Z2<5)	//CHODI MI Z ILIGHT ZAL_2NP_DETP_Z2=4 ALE PRY S NI NIKDO NESJEL. SPATNE NAMAPOVANE TLACIRKO?
				{
				ZAL_2NP_DETP_Z2=0
				}
		  }
	 }
	 
DEFINE_CALL 'Zaluzie2_Nahoru_10'
	 {
	 ZALUZIE_CAS_UNI2[1] = 310
	 ZALUZIE_CAS_UNI2[2] = 310
	 ZALUZIE_CAS_UNI2[3] = 310
	 ZALUZIE_CAS_UNI2[4] = 310
	 ZALUZIE_CAS_UNI2[5] = 310
	 ZALUZIE_CAS_UNI2[6] = 310
	 ZALUZIE_CAS_UNI2[7] = 310
	 ZALUZIE_CAS_UNI2[8] = 310
	 ZALUZIE_CAS_UNI2[9] = 310
	 ZALUZIE_CAS_UNI2[10] = 310
	 ZALUZIE_CAS_UNI2[11] = 310
	 ZALUZIE_CAS_UNI2[12] = 310
	 ZALUZIE_CAS_UNI2[13] = 310	
	 ZALUZIE_CAS_UNI2[14] = 310
	 ZALUZIE_CAS_UNI2[15] = 330
	 ZALUZIE_CAS_UNI2[16] = 330
	 IF (TIMELINE_ACTIVE(TL_ZALUZ_2NP_OPEN))TIMELINE_KILL(TL_ZALUZ_2NP_OPEN)
	 TIMELINE_CREATE(TL_ZALUZ_2NP_OPEN,ZALUZIE_CAS_UNI2,16,TIMELINE_RELATIVE,TIMELINE_ONCE)
	 }	

DEFINE_CALL 'Zaluzie2_Nahoru_30'
	 {
	 ZALUZIE_CAS_UNI2[1] = 20 		// HALA BALKON KRAJ
	 ZALUZIE_CAS_UNI2[2] = 595
	 ZALUZIE_CAS_UNI2[3] = 500		// HALA BALKON STRED
	 ZALUZIE_CAS_UNI2[4] = 450
	 ZALUZIE_CAS_UNI2[5] = 500		// DETSKY POKOJ
	 ZALUZIE_CAS_UNI2[6] = 420
	 ZALUZIE_CAS_UNI2[7] = 500		// HALA SCHODY
	 ZALUZIE_CAS_UNI2[8] = 490
	 ZALUZIE_CAS_UNI2[9] = 500		// LOZNICE LEVA
	 ZALUZIE_CAS_UNI2[10] = 430
	 ZALUZIE_CAS_UNI2[11] = 500		// LOZNICE PRAVA
	 ZALUZIE_CAS_UNI2[12] = 480
	 ZALUZIE_CAS_UNI2[13] = 500	
	 ZALUZIE_CAS_UNI2[14] = 420
	 ZALUZIE_CAS_UNI2[15] = 500
	 ZALUZIE_CAS_UNI2[16] = 440
	  IF (TIMELINE_ACTIVE(TL_ZALUZ_2NP_OPEN))TIMELINE_KILL(TL_ZALUZ_2NP_OPEN)
	 TIMELINE_CREATE(TL_ZALUZ_2NP_OPEN,ZALUZIE_CAS_UNI2,16,TIMELINE_RELATIVE,TIMELINE_ONCE)
	 }

DEFINE_CALL 'Zaluzie2_Nahoru_100'
{
CALL 'Zaluzie2_Nahoru'
}
(*
DEFINE_CALL 'Zaluzie_Vecer_Soumrak'
	 {
	  IF (TIMELINE_ACTIVE(TL_ZALUZ_VECER_SOUMRAK))TIMELINE_KILL(TL_ZALUZ_VECER_SOUMRAK)
	 TIMELINE_CREATE(TL_ZALUZ_VECER_SOUMRAK,ZALUZIE_VEC_CIDLO,27,TIMELINE_RELATIVE,TIMELINE_ONCE)
	 }
*)
DEFINE_CALL 'ZL_PRACOVNA_STOP'						// 
	{
	CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_01_DW)
	CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_01_UP)
	CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_02_DW)
	CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_02_UP)
	CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_03_DW)
	CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_03_UP)
	}
DEFINE_CALL 'ZL_PRACOVNA_Nahoru'						// 
	{
	CALL 'ZL_VEN_KANCL_01_NAHORU'
	WAIT 5
	CALL 'ZL_VEN_KANCL_02_NAHORU'
	WAIT 10
	CALL 'ZL_VEN_KANCL_03_NAHORU'
	}
DEFINE_CALL 'ZL_PRACOVNA_Srovnat'						// Nahoru otevrit 100%
	{
	CALL 'ZL_PRACOVNA_STOP'	
	WAIT 33
	CALL 'ILIGHT_CHANNEL_ON' (ZL_VEN_KANCL_03_UP)
	WAIT 46
	CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_03_UP)
	WAIT 50
	CALL 'ILIGHT_CHANNEL_ON' (ZL_VEN_KANCL_02_UP)
	WAIT 62
	CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_02_UP)
	WAIT 70
	CALL 'ILIGHT_CHANNEL_ON' (ZL_VEN_KANCL_01_UP)
	WAIT 82
	CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_01_UP)
	}
DEFINE_CALL 'ZL_PRACOVNA_Nahoru30'						// Nahoru otevrit o 30%
	{
	CALL 'ZL_PRACOVNA_STOP'	
	WAIT 38
		{
		CALL 'ILIGHT_CHANNEL_ON' (ZL_VEN_KANCL_03_UP)
		WAIT 5
			{
			CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_03_UP)
			WAIT 10
				{
				CALL 'ILIGHT_CHANNEL_ON' (ZL_VEN_KANCL_02_UP)
				WAIT 5
					{
					CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_02_UP)
					WAIT 10
						{
						CALL 'ILIGHT_CHANNEL_ON' (ZL_VEN_KANCL_01_UP)
						WAIT 5
							{
							CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_01_UP)
							}
						}
					}
				}
			}
		}
	}	
	
DEFINE_CALL 'ZL_PRACOVNA_Dolu30'						// Dolu privrit o 30%
	{
	CALL 'ZL_PRACOVNA_STOP'	
	WAIT 33
	CALL 'ILIGHT_CHANNEL_ON' (ZL_VEN_KANCL_03_DW)
	WAIT 38
	CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_03_DW)
	WAIT 50
	CALL 'ILIGHT_CHANNEL_ON' (ZL_VEN_KANCL_02_DW)
	WAIT 55
	CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_02_DW)
	WAIT 70
	CALL 'ILIGHT_CHANNEL_ON' (ZL_VEN_KANCL_01_DW)
	WAIT 75
	CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_01_DW)
	}	
DEFINE_CALL 'ZL_PRACOVNA_Dolu'						// 
	{
	CALL 'ZL_VEN_KANCL_01_DOLU'
	WAIT 5
	CALL 'ZL_VEN_KANCL_02_DOLU'
	WAIT 10
	CALL 'ZL_VEN_KANCL_03_DOLU'
	}
	
DEFINE_CALL 'ZL_DUM_HOST_STOP'						// 
	{
	CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST1_UP)
	CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST1_DW)
	CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST2_UP)
	CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST2_DW)
	CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST3_UP)
	CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST3_DW)
	}
	
DEFINE_CALL 'ZL_DUM_HOST_Nahoru'						// 
	{
	CALL 'ZL_DUM_HOST_STOP'
	WAIT 15
	CALL 'ZL_VEN_HOST_01_NAHORU'
	WAIT 20
	CALL 'ZL_VEN_HOST_02_NAHORU'
	WAIT 25
	CALL 'ZL_VEN_HOST_03_NAHORU'
	}
	
DEFINE_CALL 'ZL_DUM_HOST_Dolu'						// 
	{
	CALL 'ZL_DUM_HOST_STOP'
	WAIT 15
	CALL 'ZL_VEN_HOST_01_DOLU'
	WAIT 20
	CALL 'ZL_VEN_HOST_02_DOLU'
	WAIT 25
	CALL 'ZL_VEN_HOST_03_DOLU'
	}
(*
DEFINE_CALL 'Zaluzie_Host_Dolu'					
	 {
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_HOST1_UP,0,0)
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_HOST2_UP,0,0)
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_HOST3_UP,0,0)
	WAIT 10
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_HOST1_DW,100,0)
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_HOST2_DW,100,0)
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_HOST3_DW,100,0)
	 }
*)
DEFINE_CALL 'ZL_DUM_HOST_Srovnat'						// Nahoru Otevrit Na 100%
	{
	CALL 'ZL_DUM_HOST_STOP'
	WAIT 10
	CALL 'ILIGHT_CHANNEL_ON' (ZL_VEN_HOST1_UP)
	WAIT 22
	CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST1_UP)
	WAIT 30
	CALL 'ILIGHT_CHANNEL_ON' (ZL_VEN_HOST2_UP)
	WAIT 42
	CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST2_UP)
	WAIT 50
	CALL 'ILIGHT_CHANNEL_ON' (ZL_VEN_HOST3_UP)
	WAIT 62
	CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST3_UP)
	}
DEFINE_CALL 'ZL_DUM_HOST_Nahoru30'						// Nahoru Otevrit Na 30%
	{
	CALL 'ZL_DUM_HOST_STOP'
	WAIT 10
	CALL 'ILIGHT_CHANNEL_ON' (ZL_VEN_HOST1_UP)
	WAIT 15
	CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST1_UP)
	WAIT 30
	CALL 'ILIGHT_CHANNEL_ON' (ZL_VEN_HOST2_UP)
	WAIT 35
	CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST2_UP)
	WAIT 50
	CALL 'ILIGHT_CHANNEL_ON' (ZL_VEN_HOST3_UP)
	WAIT 55
	CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST3_UP)
	}
DEFINE_CALL 'ZL_DUM_HOST_Dolu30'						// Dolu Privrit Na 30%
	{
	CALL 'ZL_DUM_HOST_STOP'
	WAIT 10
	CALL 'ILIGHT_CHANNEL_ON' (ZL_VEN_HOST1_DW)
	WAIT 15
	CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST1_DW)
	WAIT 30
	CALL 'ILIGHT_CHANNEL_ON' (ZL_VEN_HOST2_DW)
	WAIT 35
	CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST2_DW)
	WAIT 50
	CALL 'ILIGHT_CHANNEL_ON' (ZL_VEN_HOST3_DW)
	WAIT 55
	CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST3_DW)
	}
///////////////////////////		Macra zaluzie koupelna 2NP		////////////////////////////
DEFINE_CALL 'Zaluzie2_Koupelna_Dolu'
	 {
	 CALL 'ZL_2NP_KOUPELNA_DOLU'
	 }
DEFINE_CALL 'Zaluzie2_Koupelna_Dolu_10'
{
	 ZALUZIE_CAS_UNI2[1] = 300
	 ZALUZIE_CAS_UNI2[2] = 220
	 ZALUZIE_CAS_UNI2[3] = 300
	 IF (!TIMELINE_ACTIVE(TL_ZALUZ_2NPKOUP_DOWN)) 
		  {	
		  TIMELINE_CREATE(TL_ZALUZ_2NPKOUP_DOWN,ZALUZIE_CAS_UNI2,3,TIMELINE_RELATIVE,TIMELINE_ONCE)
		  }
}

DEFINE_CALL 'Zaluzie2_Koupelna_Dolu_30'
{
	 ZALUZIE_CAS_UNI2[1] = 100
	 ZALUZIE_CAS_UNI2[2] = 380
	 ZALUZIE_CAS_UNI2[3] = 300
	 IF (!TIMELINE_ACTIVE(TL_ZALUZ_2NPKOUP_DOWN)) 
		  {	
		  TIMELINE_CREATE(TL_ZALUZ_2NPKOUP_DOWN,ZALUZIE_CAS_UNI2,3,TIMELINE_RELATIVE,TIMELINE_ONCE)
		  }
}

DEFINE_CALL 'Zaluzie2_Koupelna_Dolu_100'
{
ZALUZIE_CAS_UNI2[1] = 300
ZALUZIE_CAS_UNI2[2] = 300
ZALUZIE_CAS_UNI2[3] = 55500
ZALUZIE_CAS_UNI2[4] = 300
ZALUZIE_CAS_UNI2[5] = 300
ZALUZIE_CAS_UNI2[6] = 1350
ZALUZIE_CAS_UNI2[7] = 300
ZALUZIE_CAS_UNI2[8] = 300

IF(TIMELINE_ACTIVE(TL_ZALUZ_2NPKOUP_UP)) TIMELINE_KILL(TL_ZALUZ_2NPKOUP_UP)
IF (!TIMELINE_ACTIVE(TL_ZALUZ_2NPKOUP_DOWN)) 
		  {	
		  TIMELINE_CREATE(TL_ZALUZ_2NPKOUP_DOWN,ZALUZIE_CAS_UNI2,8,TIMELINE_RELATIVE,TIMELINE_ONCE)
		  }
}
DEFINE_CALL 'Zaluzie2_Koupelna_Stop'
	 {
	 CALL 'ZL_2NP_KOUPELNA_STOP'
	 }
	 
DEFINE_CALL 'Zaluzie2_Koupelna_Nahoru'
	 {
	 CALL 'ZL_2NP_KOUPELNA_NAHORU'
	 }

DEFINE_CALL 'Zaluzie2_Koupelna_Nahoru_10'
{
	 ZALUZIE_CAS_UNI2[1] = 200
	 ZALUZIE_CAS_UNI2[2] = 220
	 ZALUZIE_CAS_UNI2[3] = 300
	 IF(TIMELINE_ACTIVE(TL_ZALUZ_2NPKOUP_DOWN)) 
		{
		TIMELINE_KILL(TL_ZALUZ_2NPKOUP_DOWN)
		}
	 IF (!TIMELINE_ACTIVE(TL_ZALUZ_2NPKOUP_UP)) 
		  {	
		  TIMELINE_CREATE(TL_ZALUZ_2NPKOUP_UP,ZALUZIE_CAS_UNI2,3,TIMELINE_RELATIVE,TIMELINE_ONCE)
		  }
}

DEFINE_CALL 'Zaluzie2_Koupelna_Nahoru_30'
{
	 ZALUZIE_CAS_UNI2[1] = 100
	 ZALUZIE_CAS_UNI2[2] = 390
	 ZALUZIE_CAS_UNI2[3] = 300
	 IF(TIMELINE_ACTIVE(TL_ZALUZ_2NPKOUP_DOWN)) 
		{
		TIMELINE_KILL(TL_ZALUZ_2NPKOUP_DOWN)
		}
	 IF (!TIMELINE_ACTIVE(TL_ZALUZ_2NPKOUP_UP)) 
		  {	
		  TIMELINE_CREATE(TL_ZALUZ_2NPKOUP_UP,ZALUZIE_CAS_UNI2,3,TIMELINE_RELATIVE,TIMELINE_ONCE)
		  }
}

DEFINE_CALL 'Zaluzie2_Koupelna_Nahoru_100'
{
	 ZALUZIE_CAS_UNI2[1] = 300
	 ZALUZIE_CAS_UNI2[2] = 300
	 ZALUZIE_CAS_UNI2[3] = 60000
	 ZALUZIE_CAS_UNI2[4] = 300
	 ZALUZIE_CAS_UNI2[5] = 300
	 ZALUZIE_CAS_UNI2[6] = 1350
	 ZALUZIE_CAS_UNI2[7] = 300
	 ZALUZIE_CAS_UNI2[8] = 300
IF(TIMELINE_ACTIVE(TL_ZALUZ_2NPKOUP_DOWN)) TIMELINE_KILL(TL_ZALUZ_2NPKOUP_DOWN)
IF (!TIMELINE_ACTIVE(TL_ZALUZ_2NPKOUP_UP)) 
		  {	
		  TIMELINE_CREATE(TL_ZALUZ_2NPKOUP_UP,ZALUZIE_CAS_UNI2,8,TIMELINE_RELATIVE,TIMELINE_ONCE)
		  }
}

DEFINE_CALL 'ZaluzieALL_Nahoru'
{
	CALL 'Zaluzie1_Nahoru'
	IF (TIMELINE_ACTIVE(TL_CASOVAC_VECER))
		TIMELINE_KILL(TL_CASOVAC_VECER) 
	SEND_COMMAND dvMyTP_01,"'^TXT-28,0,','NAHORU'"
	WAIT 5
	CALL 'Zaluzie2_Nahoru'
	IF (TIMELINE_ACTIVE(TL_CASOVAC_RANO)) 
		TIMELINE_KILL(TL_CASOVAC_RANO)
	WAIT 10
	CALL 'Zaluzie2_Koupelna_Nahoru'
	IF (TIMELINE_ACTIVE(TL_CASOV_RANO_VIKEND)) 
		TIMELINE_KILL(TL_CASOV_RANO_VIKEND)
	WAIT 9500
	CALL 'ZaluzieALL_Stop'

}
DEFINE_CALL 'ZaluzieALL_Dolu'
{
	 CALL 'Zaluzie1_Dolu'
	 SEND_COMMAND dvMyTP_01,"'^TXT-28,0,','DOLU'"
	 WAIT 5
	 CALL 'Zaluzie2_Dolu'
	 WAIT 10
	 CALL 'Zaluzie2_Koupelna_Dolu'
	 WAIT 9900
	 CALL 'ZaluzieALL_Stop'
	 
}

DEFINE_CALL 'ZaluzieALL_Stop'
{
	IF (TIMELINE_ACTIVE(TL_CASOVAC_VECER))
			TIMELINE_KILL(TL_CASOVAC_VECER)
	IF (TIMELINE_ACTIVE(TL_CASOV_RANO_VIKEND)) 
			TIMELINE_KILL(TL_CASOV_RANO_VIKEND)
	IF (TIMELINE_ACTIVE(TL_CASOVAC_RANO)) 
			TIMELINE_KILL(TL_CASOVAC_RANO)	 
	 CALL 'Zaluzie1_Stop2'
	 SEND_COMMAND dvMyTP_01,"'^TXT-28,0,','STOP'"
	 SEND_COMMAND dvMyTP_01,"'^TXT-850,0,','STOP'"
	 WAIT 5
	 CALL 'Zaluzie2_Stop2'
	 WAIT 10
	 CALL 'Zaluzie2_Koupelna_Stop' 
}
DEFINE_CALL 'ZaluzieCidlo_VychodUP'
{
	SEND_COMMAND dvMyTP_01,"'^TXT-850,0,','CIDLO VYCHOD NAHORU'"
	CALL 'ZL_2NP_HALA_01_NAHORU'		// 2NP HALA SCHODY
	WAIT 5
	CALL 'ILIGHT_SEQ_START' (SEQ_1NPKOR_UP,1)	// 1NP KOUPELNA ROLETA
	WAIT 10
	CALL 'ZL_KUCHYN1NP_ZALUZ_NAHORU'		// 1NP KUCHYN ZALUZ
	WAIT 695
		{
		ZAL_VYCHOD_POHYB=0
		ZAL_VYCHOD_STAV=0
		}
}
DEFINE_CALL 'ZaluzieCidlo_VychodDW'
{
	SEND_COMMAND dvMyTP_01,"'^TXT-850,0,','CIDLO VYCHOD DOLU'"
	IF (ZAL_2NP_HALA_Z3 = 0)
			{
			CALL 'ZL_2NP_HALA_01_DOLU'		// 2NP HALA SCHODY
			}
	WAIT 5
	IF (ZAL_1NP_KOUP_Z1 = 0)
		{
		CALL 'ILIGHT_SEQ_START' (SEQ_1NPKOR_DW,1)			// 1NP KOUPELNA ROLETA
		}
	WAIT 10
	IF (ZAL_1NP_KOUP_Z1 = 0)
			{
			CALL 'ZL_KUCHYN1NP_ZALUZ_DOLU'	// 1NP KUCHYN ZALUZ
			}
	WAIT 695
		{
		ZAL_VYCHOD_POHYB=0
		ZAL_VYCHOD_STAV=1
		}
}

DEFINE_CALL 'ZaluzieCidlo_JihUP'
{
	SEND_COMMAND dvMyTP_01,"'^TXT-850,0,','CIDLO JIH NAHORU'"
	IF (ZAL_1NP_OBYV_Z1 = 0)
		{
		CALL 'ZL_OBYVAK_KRBLEVA_NAHORU'	// 1NP POKOJ KRB
		}
	WAIT 6
	IF (ZAL_1NP_OBYV_Z2 = 0)
		{
		CALL 'ZL_OBYVAK_KRBPRAVA_NAHORU'	// 1NP POKOJ KRB
		}
	WAIT 12
	IF (ZAL_2NP_LOZN_Z1 = 0)
			{
			CALL 'ZL_2NP_LOZNICE_01_NAHORU'	// 2NP LOZNICE
			}
	WAIT 18
	IF (ZAL_2NP_LOZN_Z2 = 0)
			{
			CALL 'ZL_2NP_LOZNICE_02_NAHORU'	// 2NP LOZNICE
			}
	WAIT 24
	CALL 'ZL_ZZAH_CIDLO_ZAPAD_NAHORU'   // JIH
	IF (ZAL_0MK_HOST_Z3=0)
		{
		CALL 'ZL_VEN_HOST_03_NAHORU'
		}
	WAIT 795
		{
		ZAL_JIH_POHYB=0
		ZAL_JIH_STAV=1
		}
}

DEFINE_CALL 'ZaluzieCidlo_JihDW'
{
	SEND_COMMAND dvMyTP_01,"'^TXT-850,0,','CIDLO JIH DOLU'"
	IF (ZAL_1NP_OBYV_Z1 = 0)
		{
		CALL 'ZL_OBYVAK_KRBLEVA_DOLU'	// 1NP POKOJ KRB
		}
	WAIT 6
	IF (ZAL_1NP_OBYV_Z2 = 0)
		{
		CALL 'ZL_OBYVAK_KRBPRAVA_DOLU'	// 1NP POKOJ KRB
		}
	WAIT 12
		IF (ZAL_2NP_LOZN_Z1 = 0)
			{
			CALL 'ZL_2NP_LOZNICE_01_DOLU'	// 2NP LOZNICE
			}
	WAIT 18
		IF (ZAL_2NP_LOZN_Z2 = 0)
			{
			CALL 'ZL_2NP_LOZNICE_02_DOLU'	// 2NP LOZNICE
			}
	WAIT 24
	CALL 'ZL_ZZAH_CIDLO_ZAPAD_DOLU'   		// JIHO VYCHOD
	IF (ZAL_0MK_HOST_Z3=0)
		{
		CALL 'ZL_VEN_HOST_03_DOLU'
		}
	WAIT 695
		{
		ZAL_JIH_POHYB=0
		ZAL_JIH_STAV=0
		}
}

DEFINE_CALL 'ZaluzieCidlo_ZapadUP'
{
	SEND_COMMAND dvMyTP_01,"'^TXT-850,0,','CIDLO ZAPAD NAHORU'"
	IF (ZAL_1NP_ZZAH_Z5 = 0)
		{
		CALL 'ZL_ZZAHRAD_VYCHODZ_NAHORU'	/// 1NP obyvak zimni zahrada U DVERI
		}
	WAIT 5
	
	IF (ZAL_1NP_ZZAH_Z1 = 0)
		{
		CALL 'ZL_ZZAHRAD_VYCHODJ_NAHORU'
		}
	WAIT 10
	
	IF (ZAL_1NP_ZZAH_Z3 = 0)
		{
		CALL 'ZL_ZZAHRAD_DVERE_NAHORU'
		STAV_ZZ_DVERE_NAHORE= TRUE
		}
	WAIT 15
	IF (ZAL_2NP_HALA_Z2 = 0)
			{
			CALL 'ZL_2NP_HALA_02_NAHORU'	// 2NP HALA Balkon dvere
			}
	WAIT 20
		IF (ZAL_2NP_HALA_Z1 = 0)
			{
			CALL 'ZL_2NP_HALA_03_NAHORU'	// 2NP HALA KRAJE
			}
	WAIT 25
	CALL 'ZL_ZZAH_CIDLO_VYCHOD_NAHORU'	//ZAPAD
	IF (ZAL_0MK_HOST_Z2=0)
		{
		CALL 'ZL_VEN_HOST_02_NAHORU'
		}
	WAIT 795
		{
		ZAL_VYCHOD_STAV=0
		ZAL_ZAPAD_POHYB=0
		}
}
DEFINE_CALL 'ZaluzieCidlo_ZapadDW'
{
	SEND_COMMAND dvMyTP_01,"'^TXT-850,0,','CIDLO ZAPAD DOLU'"
	IF (ZAL_1NP_ZZAH_Z5 = 0)
		{
		CALL 'ZL_ZZAHRAD_VYCHODZ_DOLU'	///1NP zimni zahrada  kraj prava
		}
	WAIT 5
	
	IF (ZAL_1NP_ZZAH_Z1 = 0)
		{
		CALL 'ZL_ZZAHRAD_VYCHODJ_DOLU'	///1NP zimni zahrada  kraj leva
		}
	WAIT 10

	IF (ZAL_1NP_ZZAH_Z3 = 0)
		{
		IF (DVERE = Zahrada_ZAVRENA)
			{
			CALL 'ZL_ZZAHRAD_DVERE_DOLU'	///1NP zimni zahrada dvere
			STAV_ZZ_DVERE_NAHORE= FALSE
			}
		}
	WAIT 15
		IF (ZAL_2NP_HALA_Z2 = 0)
			{
			CALL 'ZL_2NP_HALA_02_DOLU'	// 2NP HALA Balkon dvere
			}
	WAIT 20
		IF (ZAL_2NP_HALA_Z1 = 0)
			{
			CALL 'ZL_2NP_HALA_03_DOLU'	// 2NP HALA KRAJE
			}
	WAIT 25
	CALL 'ZL_ZZAH_CIDLO_VYCHOD_DOLU'	/// ZAPAD
	IF (ZAL_0MK_HOST_Z2=0)
		{
		CALL 'ZL_VEN_HOST_02_DOLU'
		}
	WAIT 695
		{
		ZAL_ZAPAD_STAV=1
		ZAL_ZAPAD_POHYB=0
		}
}

DEFINE_CALL 'Zaluzie_Jih_Nahoru'						// JIH zatim loznice 2np
	 {
	CALL 'ZL_2NP_LOZNICE_01_NAHORU'
	 WAIT 6
	 CALL 'ZL_2NP_LOZNICE_02_NAHORU'
	 }
DEFINE_CALL 'Zaluzie_Jih_Dolu'
	 {
	 CALL 'ZL_2NP_LOZNICE_01_DOLU'
	 WAIT 6
	 CALL 'ZL_2NP_LOZNICE_02_DOLU'
	 }
DEFINE_CALL 'Zaluzie_Jih_Dolu100'
	 {
	 CALL 'Zaluzie_Jih_Dolu'
	 WAIT 750
		  {
		  CALL 'Zaluzie_Jih_Stop'
		  WAIT 15
				{
				CALL 'Zaluzie_Jih_Nahoru'
				WAIT 12
					 {
					 CALL 'Zaluzie_Jih_Stop'
					 }
				}
		  }
	 }
DEFINE_CALL 'Zaluzie_Jih_Stop'
	 {
	 CALL 'ZL_2NP_LOZNICE_01_STOP'
	 WAIT 6
	 CALL 'ZL_2NP_LOZNICE_02_STOP'
	 }
DEFINE_CALL 'Zaluzie_Sever_Nahoru'					// SEVER zatim detsky pokoj 2np
	 {
	 CALL 'ZL_2NP_DETPOK_02_NAHORU'					// ZALUZIE
	 WAIT 5
	 CALL 'ZL_2NP_DETPOK_01_NAHORU'					// ROLETA
	 WAIT 10
	 CALL 'ZL_2NP_DETPOK_03_NAHORU'					// ROLETA
	 }
DEFINE_CALL 'Zaluzie_Sever_Dolu'
	 {
	 CALL 'ZL_2NP_DETPOK_02_DOLU'					// ZALUZIE
	 WAIT 5
	 CALL 'ZL_2NP_DETPOK_01_DOLU'					// ROLETA
	 WAIT 10
	 CALL 'ZL_2NP_DETPOK_03_DOLU'					// ROLETA
	 }
	 
DEFINE_CALL 'Zaluzie_Sever_Dolu100'
	 {
	 CALL 'Zaluzie_Sever_Dolu'
	 WAIT 750
		  {
		  CALL 'Zaluzie_Sever_Stop'
		  WAIT 15
				{
				CALL 'Zaluzie_Sever_Nahoru'
				WAIT 15
					 {
					 CALL 'Zaluzie_Sever_Stop'
					 }
				}
		  }
	 }
	 
DEFINE_CALL 'Zaluzie_Sever_Stop'
	 {
	 CALL 'ZL_2NP_DETPOK_02_STOP'					// ZALUZIE
	 WAIT 5
	 CALL 'ZL_2NP_DETPOK_01_STOP'					// ROLETA
	 WAIT 10
	 CALL 'ZL_2NP_DETPOK_03_STOP'					// ROLETA
	 }
	 
DEFINE_CALL 'Zaluzie_Vychod_Nahoru'					// VYCHOD zatim Hala 2np
	 {
	 CALL 'ZL_2NP_HALA_01_NAHORU'		//
	 WAIT 5
	 CALL 'ZL_2NP_HALA_02_NAHORU'		//
	 WAIT 10
	 CALL 'ZL_2NP_HALA_03_NAHORU'		//
	 }
DEFINE_CALL 'Zaluzie_Vychod_Dolu'					
	 {
	 CALL 'ZL_2NP_HALA_01_DOLU'		//
	 WAIT 5
	 CALL 'ZL_2NP_HALA_02_DOLU'		//
	 WAIT 10
	 CALL 'ZL_2NP_HALA_03_DOLU'		//
	 }
DEFINE_CALL 'Zaluzie_Vychod_Dolu100'
{
	 CALL 'Zaluzie_Vychod_Dolu'
	 WAIT 750
	 {
	 CALL 'Zaluzie_Vychod_Stop'
	 WAIT 10
		  {
		  CALL 'Zaluzie_Vychod_Nahoru'
		  WAIT 12
				{
				CALL 'Zaluzie_Vychod_Stop'
				}
		  }
	 }
}
DEFINE_CALL 'Zaluzie_Vychod_Stop'					
	 {
	 CALL 'ZL_2NP_HALA_01_STOP'		//
	 WAIT 5
	 CALL 'ZL_2NP_HALA_02_STOP'		//
	 WAIT 10
	 CALL 'ZL_2NP_HALA_03_STOP'		//
	 }
DEFINE_CALL 'Zaluzie_Display_Feedback'
{
	CALL 'ZIMNIZ_FEEDBACK_AUTO'
	IF (DOVOLENA = TRUE)	/// DOVOLENÁ
		  {
		  ON[dvMyTP_01,1495]
		  SEND_COMMAND dvMyTP_01,"'^UNI-202,0,0044004F0056004F004C0045004E00C1'"
		  }
	ELSE							/// NORMÁLNÍ
		  {
		  ON[dvMyTP_01,1496]
		  SEND_COMMAND dvMyTP_01,"'^UNI-202,0,004E004F0052004D00C1004C004E00CD'"
		  }
	CALL 'HALA2_FEEDBACK_AUTO'
	IF (LETO_ZIMA = TRUE)	/// ZIMA
		  {
		  ON[dvMyTP_01,1494]
		  SEND_COMMAND dvMyTP_01,"'^UNI-201,0,005A0049004D0041'"
		  }
	 ELSE							/// LÉTO
		  {
		  ON[dvMyTP_01,1493]
		  SEND_COMMAND dvMyTP_01,"'^UNI-201,0,004C00C90054004F'"
		  }
	 IF (MANUALNI_OVLADANI = FALSE)
		  {
		  ON [dvTP1,1488]
		  OFF [dvTP1,1489]
		  IF (DEN_V_TYDNU<=5)
				{
				VIKEND = FALSE
				SEND_COMMAND dvMyTP_01,"'^UNI-203,0,0050005200410043004F0056004E00CD002000440045004E'"
				}
		  ELSE
				{
				VIKEND = TRUE
				SEND_COMMAND dvMyTP_01,"'^UNI-203,0,005600CD004B0045004E0044'"
				}
		  }
	 ELSE
		  {
		  ON [dvTP1,1489]
		  OFF [dvTP1,1488]
		  IF (MANUAL_VIKEND=FALSE)
				{
				SEND_COMMAND dvMyTP_01,"'^UNI-203,0,004D002100200050005200410043004F0056004E00CD002000440045004E'"
				}
		  ELSE
				{
				SEND_COMMAND dvMyTP_01,"'^UNI-203,0,004D00210020005600CD004B0045004E0044'"
				}
		  }
	CALL 'ZIMNIZ_FEEDBACK_AUTO'
	IF (TIMELINE_ACTIVE(TL_CASOVAC_RANO)) 
			{
			SEND_COMMAND dvMyTP_01,"'^UNI-848,0,00520041004E004F002000500052004100430045'"
			}
	WAIT 10
	CALL 'ILIGHT_SCENA_REQUEST' (ILT_0NP_RELAX_DVORKY_AREA) // Protoze je casto pouzivane tak volam dotaz odsud 
	WAIT 20
	CALL 'ILIGHT_SCENA_REQUEST' (ILT_2NP_DETPOK_AREA) // Protoze je casto pouzivane tak volam dotaz odsud 
}

DEFINE_CALL 'ZALUZIE_STAV_NULA'		// NASTAVIM NATVRDO 0 VSE POJEDE
	{
ZAL_0MK_PRAC_Z1=0	// VLEVO
ZAL_0MK_PRAC_Z2=0	// STRED 
ZAL_0MK_PRAC_Z3=0	// VPRAVO
ZAL_0MK_HOST_Z1=0	// U LESA
ZAL_0MK_HOST_Z2=0	// K DOMU
ZAL_0MK_HOST_Z3=0	// K UDIRNE
ZAL_1PP_KUCH_Z1=0		//
ZAL_1PP_RELA_Z1=0		//
ZAL_1PP_KOUP_Z1=0		//
//////////////--- 1NP --------------/////////////////
ZAL_1NP_OBYV_Z1=0		// KRB vlevo
ZAL_1NP_OBYV_Z2=0		// KRB vpravo
ZAL_1NP_KUCH_Z1=0		// Kuchyne linka
ZAL_1NP_ZZAH_Z1=0		// Zimni zahrada leva strana
ZAL_1NP_ZZAH_Z2=0		// Zimni zahrada u vchodu leva
ZAL_1NP_ZZAH_Z3=0		// Zimni zahrada VCHOD 
ZAL_1NP_ZZAH_Z4=0		// Zimni zahrada u vchodu prava
ZAL_1NP_ZZAH_Z5=0		// Zimni zahrada prava strana
ZAL_1NP_KOUP_Z1=0		// Koupelna ZALUZIE
ZAL_1NP_KOUP_Z2=0		// Koupelna ROLETA
ZAL_1NP_WC_Z1=0			// WC ZALUZIR
ZAL_1NP_WC_Z2=0			// WC ROLETA		
ZAL_2NP_LOZN_Z1=0			// LOZNICE VLEVO
ZAL_2NP_LOZN_Z2=0			// LOZNICE VPRAVO
ZAL_2NP_HALA_Z1=0			// SCHODY V MEZIPATRE
ZAL_2NP_HALA_Z2=0			// STRED
ZAL_2NP_HALA_Z3=0			// KRAJE
ZAL_2NP_DETP_Z1=0			// ROLETA LEVA
ZAL_2NP_DETP_Z2=0			// ROLETA PRAVA
ZAL_2NP_DETP_Z3=0			// ZALUZIE BALKON
ZAL_2NP_KOUP_Z1=0			// ZALUZIE KOUPELNA
	}
	
DEFINE_CALL 'ZALUZIE_STAV_SEST'		/// NATVRDO 6 NEPOJEDOU
	{
ZAL_0MK_PRAC_Z1=6	// VLEVO
ZAL_0MK_PRAC_Z2=6	// STRED 
ZAL_0MK_PRAC_Z3=6	// VPRAVO
ZAL_0MK_HOST_Z1=6	// U LESA
ZAL_0MK_HOST_Z2=6	// K DOMU
ZAL_0MK_HOST_Z3=6	// K UDIRNE
ZAL_1PP_KUCH_Z1=6		//
ZAL_1PP_RELA_Z1=6		//
ZAL_1PP_KOUP_Z1=6		//
//////////////--- 1NP --------------/////////////////
ZAL_1NP_OBYV_Z1=6		// KRB vlevo
ZAL_1NP_OBYV_Z2=6		// KRB vpravo
ZAL_1NP_KUCH_Z1=6		// Kuchyne linka
ZAL_1NP_ZZAH_Z1=6		// Zimni zahrada leva strana
ZAL_1NP_ZZAH_Z2=6		// Zimni zahrada u vchodu leva
ZAL_1NP_ZZAH_Z3=6		// Zimni zahrada VCHOD 
ZAL_1NP_ZZAH_Z4=6		// Zimni zahrada u vchodu prava
ZAL_1NP_ZZAH_Z5=6		// Zimni zahrada prava strana
ZAL_1NP_KOUP_Z1=6		// Koupelna ZALUZIE
ZAL_1NP_KOUP_Z2=6		// Koupelna ROLETA
ZAL_1NP_WC_Z1=6			// WC ZALUZIR
ZAL_1NP_WC_Z2=6			// WC ROLETA		
ZAL_2NP_LOZN_Z1=6			// LOZNICE VLEVO
ZAL_2NP_LOZN_Z2=6			// LOZNICE VPRAVO
ZAL_2NP_HALA_Z1=6			// SCHODY V MEZIPATRE
ZAL_2NP_HALA_Z2=6			// STRED
ZAL_2NP_HALA_Z3=6			// KRAJE
ZAL_2NP_DETP_Z1=6			// ROLETA LEVA
ZAL_2NP_DETP_Z2=6			// ROLETA PRAVA
ZAL_2NP_DETP_Z3=6			// ZALUZIE BALKON
ZAL_2NP_KOUP_Z1=6			// ZALUZIE KOUPELNA
	}
(**)
DEFINE_CALL 'ZALUZIE_RESET'		// V NOCI SE VYRUSI MANUALNI PRIKAZY, V PRIPADE VYPNUTI (6] ALE NEPOJEDOU
{
//////////////////////////////////////////////  PRIZEMI
	IF (ZAL_1PP_KUCH_Z1<5)	//
		{
		 ZAL_1PP_KUCH_Z1=0
		}
	IF (ZAL_1PP_RELA_Z1<5)	//
		{
		 ZAL_1PP_RELA_Z1=0
		}
	IF (ZAL_1PP_KOUP_Z1<5)	//
		{
		 ZAL_1PP_KOUP_Z1=0
		}
//////////////////////////////////////////////  1NP
	IF (ZAL_1NP_OBYV_Z1<5)	//
		{
		 ZAL_1NP_OBYV_Z1=0
		}
	IF (ZAL_1NP_OBYV_Z2<5)	//
		{
		 ZAL_1NP_OBYV_Z2=0
		}
	IF (ZAL_1NP_KUCH_Z1<5)	//
		{
		 ZAL_1NP_KUCH_Z1=0
		}
	IF (ZAL_1NP_KOUP_Z1<5)	// ZALUZIE
		{
		 ZAL_1NP_KOUP_Z1=0
		}
	IF (ZAL_1NP_KOUP_Z2<5)	//
		{
		 ZAL_1NP_KOUP_Z2=0
		}
	IF (ZAL_1NP_WC_Z1<5)	// WC ZALUZIE
		{
		 ZAL_1NP_WC_Z1=0
		}
	IF (ZAL_1NP_WC_Z2<5)	// WC ROLETA
		{
		 ZAL_1NP_WC_Z2=0
		}
	IF (ZAL_1NP_OBYV_Z1<5)	// zimni zahrada vlevo
		{
		 ZAL_1NP_ZZAH_Z1=0
		}
	IF (ZAL_1NP_ZZAH_Z2<5)	// zimni zahrada vlevo u dveri
		{
		 ZAL_1NP_ZZAH_Z2=0
		}
	IF (ZAL_1NP_ZZAH_Z3<5)	//zimni zahrada dvere
		{
		 ZAL_1NP_ZZAH_Z3=0
		}
	IF (ZAL_1NP_ZZAH_Z4<5)		// zimni zahrada vpravo
		{
		 ZAL_1NP_ZZAH_Z4=0
		}
	IF (ZAL_1NP_ZZAH_Z5<5)		// zimni zahrada vpravo u dveri
		{
		 ZAL_1NP_ZZAH_Z5=0
		}
//////////////////////////////////////////////  2NP
	IF (ZAL_2NP_LOZN_Z1<5)	//
		{
		 ZAL_2NP_LOZN_Z1=0
		}
	IF (ZAL_2NP_LOZN_Z2<5)	//
		{
		 ZAL_2NP_LOZN_Z2=0
		}
	IF (ZAL_2NP_HALA_Z1<5)	//
		{
		 ZAL_2NP_HALA_Z1=0
		}
	IF (ZAL_2NP_HALA_Z2<5)
		{
		ZAL_2NP_HALA_Z2=0
		}
	IF (ZAL_2NP_HALA_Z3<5)
		{
		ZAL_2NP_HALA_Z3=0
		}
	IF (ZAL_2NP_DETP_Z1<5)
		{
		ZAL_2NP_DETP_Z1=0
		}
	IF (ZAL_2NP_DETP_Z2<5)
		{
		ZAL_2NP_DETP_Z2=0
		}
	IF (ZAL_2NP_DETP_Z3<5)
		{
		ZAL_2NP_DETP_Z3=0
		}
	IF (ZAL_2NP_KOUP_Z1<5)
		{
		ZAL_2NP_KOUP_Z1=0
		}
//////////////////////////////////////////////  VENEK
	IF (ZAL_0MK_PRAC_Z1<5)	//
		{
		 ZAL_0MK_PRAC_Z1=0
		}
	IF (ZAL_0MK_PRAC_Z2<5)	//
		{
		 ZAL_0MK_PRAC_Z2=0
		}
	IF (ZAL_0MK_PRAC_Z2<5)	//
		{
		 ZAL_0MK_PRAC_Z2=0
		}
	IF (ZAL_0MK_PRAC_Z3<5)	//
		{
		 ZAL_0MK_PRAC_Z3=0
		}
	IF (ZAL_0MK_HOST_Z1<5)	//
		{
		 ZAL_0MK_HOST_Z1=0
		}
	IF (ZAL_0MK_HOST_Z2<5)	//
		{
		 ZAL_0MK_HOST_Z2=0
		}
	IF (ZAL_0MK_HOST_Z3<5)	//
		{
		 ZAL_0MK_HOST_Z3=0
		}
	
	SEND_COMMAND dvMyTP_01,"'^TXT-849,0,','ZALUZIE AUTOMAT'"
	SEND_COMMAND dvMyTP_01,"'^TXT-850,0,','ZALUZIE AUTOMAT'"
}
DEFINE_CALL 'ZALUZIE_1 NP PAUSE'
{
  ZAL_1PP_KUCH_Z1=1
  ZAL_1PP_RELA_Z1=1
  ZAL_1PP_KOUP_Z1=1
  ZAL_1NP_OBYV_Z1=1
  ZAL_1NP_OBYV_Z2=1
  //ZAL_1NP_OBYV_Z3=1
  ZAL_1NP_KUCH_Z1=1
  ZAL_1NP_KOUP_Z1=1
  ZAL_1NP_WC_Z1=1
  ZAL_1NP_ZZAH_Z1=1
  ZAL_1NP_ZZAH_Z2=1
  ZAL_1NP_ZZAH_Z3=1
  ZAL_1NP_ZZAH_Z4=1
  ZAL_1NP_ZZAH_Z5=1
}
DEFINE_CALL 'ZALUZIE_2 NP PAUSE'
{
  ZAL_2NP_LOZN_Z1=1
  ZAL_2NP_LOZN_Z2=1
  //ZAL_2NP_LOZN_Z3=1
  ZAL_2NP_HALA_Z1=1
  ZAL_2NP_HALA_Z2=1
  ZAL_2NP_HALA_Z3=1
  ZAL_2NP_DETP_Z1=1
  ZAL_2NP_KOUP_Z1=1
}
DEFINE_CALL 'ZIMNIZ_FEEDBACK_AUTO'	// Po pripojeni tabletu automaticky nacte
{
	SWITCH (ZAL_1NP_ZZAH_Z1)
		{
		CASE 0:
			{
			ON [dvMyTP_03,224]
			OFF [dvMyTP_03,225]
			}
		CASE 6:
			{
			ON [dvMyTP_03,225]
			OFF [dvMyTP_03,224]
			}
		DEFAULT:
			{
			OFF [dvMyTP_03,224]
			OFF [dvMyTP_03,225]
			}
		}
	SWITCH (ZAL_1NP_ZZAH_Z2)	// PRO Z2-Z4 JE SPOLECNY IDIKATOR CELE ZAPADNI STRANY, ADRESY NA TABLETU 234-235. NUTNO DORESIT LOGIKU INDIKACE
		{
		CASE 0:
			{
			ON [dvMyTP_03,226]
			OFF [dvMyTP_03,227]
			ON [dvMyTP_03,234]
			OFF [dvMyTP_03,235]
			}
		CASE 6:
			{
			ON [dvMyTP_03,227]
			OFF [dvMyTP_03,226]
			ON [dvMyTP_03,235]
			OFF [dvMyTP_03,234]
			}
		DEFAULT:
			{
			OFF [dvMyTP_03,226]
			OFF [dvMyTP_03,227]
			}
		}
	SWITCH (ZAL_1NP_ZZAH_Z3)
		{
		CASE 0:
			{
			ON [dvMyTP_03,228]
			OFF [dvMyTP_03,229]
			ON [dvMyTP_03,234]
			OFF [dvMyTP_03,235]
			}
		CASE 6:
			{
			ON [dvMyTP_03,229]
			OFF [dvMyTP_03,228]
			ON [dvMyTP_03,235]
			OFF [dvMyTP_03,234]
			}
		DEFAULT:
			{
			OFF [dvMyTP_03,228]
			OFF [dvMyTP_03,229]
			}
		}
	SWITCH (ZAL_1NP_ZZAH_Z4)
		{
		CASE 0:
			{
			ON [dvMyTP_03,230]
			OFF [dvMyTP_03,231]
			ON [dvMyTP_03,234]
			OFF [dvMyTP_03,235]
			}
		CASE 6:
			{
			ON [dvMyTP_03,231]
			OFF [dvMyTP_03,230]
			ON [dvMyTP_03,235]
			OFF [dvMyTP_03,234]
			}
		DEFAULT:
			{
			OFF [dvMyTP_03,230]
			OFF [dvMyTP_03,231]
			}
		}
	SWITCH (ZAL_1NP_ZZAH_Z5)
		{
		CASE 0:
			{
			ON [dvMyTP_03,232]
			OFF [dvMyTP_03,233]
			}
		CASE 6:
			{
			ON [dvMyTP_03,233]
			OFF [dvMyTP_03,232]
			}
		DEFAULT:
			{
			OFF [dvMyTP_03,232]
			OFF [dvMyTP_03,233]
			}
		}
}						
DEFINE_CALL 'HALA2_FEEDBACK_AUTO'
{
	SWITCH (ZAL_2NP_HALA_Z1)
		{
		CASE 0:
			{
			ON [dvMyTP_03,242]
			OFF [dvMyTP_03,243]
			}
		CASE 6:
			{
			ON [dvMyTP_03,243]
			OFF [dvMyTP_03,242]
			}
		DEFAULT:
			{
			OFF [dvMyTP_03,242]
			OFF [dvMyTP_03,243]
			}
		}
	SWITCH (ZAL_2NP_HALA_Z2)
		{
		CASE 0:
			{
			ON [dvMyTP_03,244]
			OFF [dvMyTP_03,245]
			}
		CASE 6:
			{
			ON [dvMyTP_03,245]
			OFF [dvMyTP_03,244]
			}
		DEFAULT:
			{
			OFF [dvMyTP_03,244]
			OFF [dvMyTP_03,245]
			}
		}
	SWITCH (ZAL_2NP_HALA_Z3)
		{
		CASE 0:
			{
			ON [dvMyTP_03,246]
			OFF [dvMyTP_03,247]
			}
		CASE 6:
			{
			ON [dvMyTP_03,247]
			OFF [dvMyTP_03,246]
			}
		DEFAULT:
			{
			OFF [dvMyTP_03,246]
			OFF [dvMyTP_03,247]
			}
		}
}
DEFINE_CALL 'STUDIO_FEEDBACK_AUTO'
{
	SWITCH (ZAL_0MK_PRAC_Z1)
		{
		CASE 0:
			{
			ON [dvMyTP_03,208]
			OFF [dvMyTP_03,209]
			}
		CASE 6:
			{
			ON [dvMyTP_03,209]
			OFF [dvMyTP_03,208]
			}
		DEFAULT:
			{
			OFF [dvMyTP_03,208]
			OFF [dvMyTP_03,209]
			}
		}
	SWITCH (ZAL_0MK_PRAC_Z2)
		{
		CASE 0:
			{
			ON [dvMyTP_03,210]
			OFF [dvMyTP_03,211]
			}
		CASE 6:
			{
			ON [dvMyTP_03,211]
			OFF [dvMyTP_03,210]
			}
		DEFAULT:
			{
			OFF [dvMyTP_03,210]
			OFF [dvMyTP_03,211]
			}
		}
	SWITCH (ZAL_0MK_PRAC_Z3)
		{
		CASE 0:
			{
			ON [dvMyTP_03,212]
			OFF [dvMyTP_03,213]
			}
		CASE 6:
			{
			ON [dvMyTP_03,213]
			OFF [dvMyTP_03,212]
			}
		DEFAULT:
			{
			OFF [dvMyTP_03,212]
			OFF [dvMyTP_03,213]
			}
		}
}
DEFINE_CALL 'HOST_FEEDBACK_AUTO'
{
	SWITCH (ZAL_0MK_HOST_Z1)
		{
		CASE 0:
			{
			ON [dvMyTP_03,202]
			OFF [dvMyTP_03,203]
			}
		CASE 6:
			{
			ON [dvMyTP_03,203]
			OFF [dvMyTP_03,202]
			}
		DEFAULT:
			{
			OFF [dvMyTP_03,202]
			OFF [dvMyTP_03,203]
			}
		}
	SWITCH (ZAL_0MK_HOST_Z2)
		{
		CASE 0:
			{
			ON [dvMyTP_03,204]
			OFF [dvMyTP_03,205]
			}
		CASE 6:
			{
			ON [dvMyTP_03,205]
			OFF [dvMyTP_03,204]
			}
		DEFAULT:
			{
			OFF [dvMyTP_03,204]
			OFF [dvMyTP_03,205]
			}
		}
	SWITCH (ZAL_0MK_HOST_Z3)
		{
		CASE 0:
			{
			ON [dvMyTP_03,206]
			OFF [dvMyTP_03,207]
			}
		CASE 6:
			{
			ON [dvMyTP_03,207]
			OFF [dvMyTP_03,206]
			}
		DEFAULT:
			{
			OFF [dvMyTP_03,206]
			OFF [dvMyTP_03,207]
			}
		}
}

DEFINE_CALL 'OBYVAK_FEEDBACK_AUTO'
{
	SWITCH (ZAL_1NP_OBYV_Z1)
		{
		CASE 0:
			{
			ON [dvMyTP_03,220]
			OFF [dvMyTP_03,221]
			}
		CASE 6:
			{
			ON [dvMyTP_03,221]
			OFF [dvMyTP_03,220]
			}
		DEFAULT:
			{
			OFF [dvMyTP_03,220]
			OFF [dvMyTP_03,221]
			}
		}
	SWITCH (ZAL_1NP_OBYV_Z2)
		{
		CASE 0:
			{
			ON [dvMyTP_03,222]
			OFF [dvMyTP_03,223]
			}
		CASE 6:
			{
			ON [dvMyTP_03,223]
			OFF [dvMyTP_03,222]
			}
		DEFAULT:
			{
			OFF [dvMyTP_03,222]
			OFF [dvMyTP_03,223]
			}
		}
}

DEFINE_CALL '1NP_KUCHYN_FEEDBACK_AUTO'
{
	SWITCH (ZAL_1NP_KUCH_Z1)
		{
		CASE 0:
			{
			ON [dvMyTP_03,218]
			OFF [dvMyTP_03,219]
			}
		CASE 6:
			{
			OFF [dvMyTP_03,219]
			ON [dvMyTP_03,218]
			}
		DEFAULT:
			{
			OFF [dvMyTP_03,218]
			OFF [dvMyTP_03,219]
			}
		}
}

DEFINE_CALL 'RELAX_FEEDBACK_AUTO'
{
	SWITCH (ZAL_1PP_RELA_Z1)
		{
		CASE 0:
			{
			ON [dvMyTP_03,200]
			OFF [dvMyTP_03,201]
			}
		CASE 6:
			{
			OFF [dvMyTP_03,201]
			ON [dvMyTP_03,200]
			}
		DEFAULT:
			{
			OFF [dvMyTP_03,200]
			OFF [dvMyTP_03,201]
			}
		}
}

DEFINE_CALL '1NP_KOUP_FEEDBACK_AUTO'
{
	SWITCH (ZAL_1NP_KOUP_Z1)
		{
		CASE 0:
			{
			ON [dvMyTP_03,214]
			OFF [dvMyTP_03,215]
			}
		CASE 6:
			{
			ON [dvMyTP_03,215]
			OFF [dvMyTP_03,214]
			}
		DEFAULT:
			{
			OFF [dvMyTP_03,214]
			OFF [dvMyTP_03,215]
			}
		}
	SWITCH (ZAL_1NP_KOUP_Z2)
		{
		CASE 0:
			{
			ON [dvMyTP_03,216]
			OFF [dvMyTP_03,217]
			}
		CASE 6:
			{
			ON [dvMyTP_03,217]
			OFF [dvMyTP_03,216]
			}
		DEFAULT:
			{
			OFF [dvMyTP_03,216]
			OFF [dvMyTP_03,217]
			}
		}
}

DEFINE_CALL 'DETI_FEEDBACK_AUTO'
{
	SWITCH (ZAL_2NP_DETP_Z1)
		{
		CASE 0:
			{
			ON [dvMyTP_03,248]
			OFF [dvMyTP_03,249]
			}
		CASE 6:
			{
			ON [dvMyTP_03,249]
			OFF [dvMyTP_03,248]
			}
		DEFAULT:
			{
			OFF [dvMyTP_03,248]
			OFF [dvMyTP_03,249]
			}
		}
	SWITCH (ZAL_2NP_DETP_Z2)
		{
		CASE 0:
			{
			ON [dvMyTP_03,236]
			OFF [dvMyTP_03,237]
			}
		CASE 6:
			{
			ON [dvMyTP_03,237]
			OFF [dvMyTP_03,236]
			}
		DEFAULT:
			{
			OFF [dvMyTP_03,236]
			OFF [dvMyTP_03,237]
			}
		}
	SWITCH (ZAL_2NP_DETP_Z3)
		{
		CASE 0:
			{
			ON [dvMyTP_03,250]
			OFF [dvMyTP_03,251]
			}
		CASE 6:
			{
			ON [dvMyTP_03,251]
			OFF [dvMyTP_03,250]
			}
		DEFAULT:
			{
			OFF [dvMyTP_03,250]
			OFF [dvMyTP_03,251]
			}
		}
	SWITCH (ZAL_2NP_KOUP_Z1)	/// KOUPELNA 2 NP
		{
		CASE 0:
			{
			ON [dvMyTP_03,311]
			OFF [dvMyTP_03,312]
			}
		CASE 6:
			{
			ON [dvMyTP_03,312]
			OFF [dvMyTP_03,311]
			}
		DEFAULT:
			{
			OFF [dvMyTP_03,311]
			OFF [dvMyTP_03,312]
			}
		}
}

DEFINE_CALL 'LOZNICE_FEEDBACK_AUTO'
{
	SWITCH (ZAL_2NP_LOZN_Z1)
		{
		CASE 0:
			{
			ON [dvMyTP_03,238]
			OFF [dvMyTP_03,239]
			}
		CASE 6:
			{
			ON [dvMyTP_03,239]
			OFF [dvMyTP_03,238]
			}
		DEFAULT:
			{
			OFF [dvMyTP_03,238]
			OFF [dvMyTP_03,239]
			}
		}
	SWITCH (ZAL_2NP_LOZN_Z2)
		{
		CASE 0:
			{
			ON [dvMyTP_03,240]
			OFF [dvMyTP_03,241]
			}
		CASE 6:
			{
			ON [dvMyTP_03,241]
			OFF [dvMyTP_03,240]
			}
		DEFAULT:
			{
			OFF [dvMyTP_03,240]
			OFF [dvMyTP_03,241]
			}
		}
}


(*   ZAKLADNI PRIKAZY PRO ZALUZIE   *)


///////////// ZALUZIE 1PP ////
DEFINE_CALL 'ZL_1PP_KUCH_DVORKY_DOLU'						//  ZZ  
{
CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1PP_AD_UP,0,0)	
wait 5
	{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1PP_AD_DW,100,0)
	}
}

DEFINE_CALL 'ZL_1PP_KUCH_DVORKY_NAHORU'						//  ZZ 
{
CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1PP_AD_DW,0,0)	
wait 5
	{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1PP_AD_UP,100,0)
	}
}

DEFINE_CALL 'ZL_1PP_KUCH_DVORKY_STOP'						//  ZZ 
{
CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1PP_AD_DW,0,0)	
wait 5
	{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1PP_AD_UP,0,0)
	}
}

DEFINE_CALL 'ZL_1PP_RELAX_DOLU'						//  ZZ 
{
CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1PP_REL_UP,0,0)	
wait 5
	{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1PP_REL_DW,100,0)
	}
}

DEFINE_CALL 'ZL_1PP_RELAX_NAHORU'						//  ZZ 
{
CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1PP_REL_DW,0,0)	
wait 5
	{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1PP_REL_UP,100,0)
	}
}

DEFINE_CALL 'ZL_1PP_RELAX_STOP'						//  ZZ  
{
CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1PP_REL_DW,0,0)	
wait 5
	{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1PP_REL_UP,0,0)
	}
}
DEFINE_CALL 'ZL_1PP_KOUPELNA_DOLU'						//  ZZ  
{
CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1PP_KOU_UP,0,0)	
wait 5
	{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1PP_KOU_DW,100,0)
	}
}

DEFINE_CALL 'ZL_1PP_KOUPELNA_NAHORU'						//  ZZ 
{
CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1PP_KOU_DW,0,0)	
wait 5
	{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1PP_KOU_UP,100,0)
	}
}

DEFINE_CALL 'ZL_1PP_KOUPELNA_STOP'						//  ZZ 
{
CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1PP_KOU_DW,0,0)	
wait 5
	{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1PP_KOU_UP,0,0)
	}
}

////////////////////////////   1NP		/////////////////////////////////////////////////////
DEFINE_CALL 'ZL_ZZAHRAD_KRAJLEVY_DOLU'						//  ZZ JIH PRVNI DVOJZALUZIE VLEVO 
{
CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_JIH_UP,0,0)	
wait 5
	{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_JIH_DW,100,0)
	}
}

DEFINE_CALL 'ZL_ZZAHRAD_KRAJLEVY_NAHORU'						//  ZZ JIH PRVNI DVOJZALUZIE VLEVO 
{
CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_JIH_DW,0,0)	
wait 5
	{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_JIH_UP,100,0)
	}
}

DEFINE_CALL 'ZL_ZZAHRAD_KRAJLEVY_STOP'						//  ZZ JIH PRVNI DVOJZALUZIE VLEVO 
{
CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_JIH_DW,0,0)	
wait 5
	{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_JIH_UP,0,0)
	}
}

DEFINE_CALL 'ZL_ZZAHRAD_DVERE_DOLU'						// ZZ DVERE
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_DVERE_UP,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_DVERE_DW,100,0)
		STAV_ZZ_DVERE_NAHORE= FALSE
		}

}

DEFINE_CALL 'ZL_ZZAHRAD_DVERE_NAHORU'						// 
{
CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_DVERE_DW,0,0)	
wait 5
	{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_DVERE_UP,100,0)
	STAV_ZZ_DVERE_NAHORE=TRUE
	}
}

DEFINE_CALL 'ZL_ZZAHRAD_DVERE_STOP'						// 
{
CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_DVERE_DW,0,0)	
wait 5
	{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_DVERE_UP,0,0)
	}
}

DEFINE_CALL 'ZL_ZZAHRAD_VYCHODJ_DOLU'						// ZALUZIE VLEVO U DVERI
{
CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_ZAPADJ_UP,0,0)	
wait 5
	{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_ZAPADJ_DW,100,0)
	}
}

DEFINE_CALL 'ZL_ZZAHRAD_VYCHODJ_NAHORU'						// ZALUZIE VLEVO U DVERI 
{
CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_ZAPADJ_DW,0,0)	
wait 5
	{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_ZAPADJ_UP,100,0)
	}
}

DEFINE_CALL 'ZL_ZZAHRAD_VYCHODJ_STOP'						// ZALUZIE VLEVO U DVERI
{
CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_ZAPADJ_DW,0,0)	
wait 5
	{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_ZAPADJ_UP,0,0)
	}
}

DEFINE_CALL 'ZL_ZZAHRAD_VYCHODZ_DOLU'						// ZALUZIE VPRAVO U DVERI
{
CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_ZAPADZ_UP,0,0)	
wait 5
	{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_ZAPADZ_DW,100,0)
	}
}

DEFINE_CALL 'ZL_ZZAHRAD_VYCHODZ_NAHORU'						// ZALUZIE VPRAVO U DVERI 
{
CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_ZAPADZ_DW,0,0)	
wait 5
	{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_ZAPADZ_UP,100,0)
	}
}

DEFINE_CALL 'ZL_ZZAHRAD_VYCHODZ_STOP'						// ZALUZIE VPRAVO U DVERI 
{
CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_ZAPADZ_DW,0,0)	
wait 5
	{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_ZAPADZ_UP,0,0)
	}
}


DEFINE_CALL 'ZL_ZZAHRAD_VVYCHOD_DOLU'						// CELA STRANA DVERI - NUTNA PODMINKA PRO 3 ZALUZIE
{
CALL 'ZL_ZZAHRAD_VYCHODZ_STOP'	
CALL 'ZL_ZZAHRAD_VYCHODJ_STOP'
CALL 'ZL_ZZAHRAD_DVERE_STOP'			
wait 8
	{
	IF (ZAL_1NP_ZZAH_Z2<5)
			{
			CALL 'ZL_ZZAHRAD_VYCHODZ_DOLU'	
			}
	IF (ZAL_1NP_ZZAH_Z4<5)
			{
			CALL 'ZL_ZZAHRAD_VYCHODJ_DOLU'
			}
	IF (ZAL_1NP_ZZAH_Z3<5)
			{
			CALL 'ZL_ZZAHRAD_DVERE_DOLU'
			}
	}
}

DEFINE_CALL 'ZL_ZZAHRAD_VVYCHOD_NAHORU'						// 
{
CALL 'ZL_ZZAHRAD_VYCHODZ_STOP'	
CALL 'ZL_ZZAHRAD_VYCHODJ_STOP'
CALL 'ZL_ZZAHRAD_DVERE_STOP'	
wait 8
	{
		IF (ZAL_1NP_ZZAH_Z2<5)
			{
			CALL 'ZL_ZZAHRAD_VYCHODZ_NAHORU'
			}
		IF (ZAL_1NP_ZZAH_Z4<5)
			{
			CALL 'ZL_ZZAHRAD_VYCHODJ_NAHORU'
			}
		IF (ZAL_1NP_ZZAH_Z3<5)
			{
			CALL 'ZL_ZZAHRAD_DVERE_NAHORU'
			}
	}
}

DEFINE_CALL 'ZL_ZZAHRAD_VVYCHOD_STOP'						// 
{
CALL 'ZL_ZZAHRAD_VYCHODZ_STOP'	
CALL 'ZL_ZZAHRAD_VYCHODJ_STOP'
CALL 'ZL_ZZAHRAD_DVERE_STOP'
} 

// --------------------  ZIMNI ZAHRADA  ///---------------- //
DEFINE_CALL 'ZL_ZZAHRAD_SEVER_DOLU'						
{
CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_SEVER_UP,0,0)	
wait 5
	{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_SEVER_DW,100,0)
	}
}
DEFINE_CALL 'ZL_ZZAH_CIDLO_SEVER_DOLU'						//JIHO VYCHOD
{
IF (ZAL_1NP_ZZAH_Z1 = 0)
	{
	CALL 'ZL_ZZAHRAD_SEVER_DOLU'		
	wait 12800
		{
		CALL 'ZL_ZZAHRAD_SEVER_STOP'
		}
	}
}
DEFINE_CALL 'ZL_ZZAHRAD_SEVER_NAHORU'						// 
{
CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_SEVER_DW,0,0)	
wait 5
	{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_SEVER_UP,100,0)
	}
}
DEFINE_CALL 'ZL_ZZAHRAD_SEVER_STOP'						// 
{
CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_SEVER_DW,0,0)	
wait 5
	{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_ZZAHRAD_SEVER_UP,0,0)
	}
}

DEFINE_CALL 'ZL_OBYVAK_KRBLEVA_DOLU'						// OBYVAK KRB VLEVO
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_OBYV_KRBL_UP,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_OBYV_KRBL_DW,100,0)
		}
}

DEFINE_CALL 'ZL_OBYVAK_KRBLEVA_NAHORU'						// OBYVAK KRB VLEVO
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_OBYV_KRBL_DW,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_OBYV_KRBL_UP,100,0)
		}
}

DEFINE_CALL 'ZL_OBYVAK_KRBLEVA_STOP'						// OBYVAK KRB VLEVO
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_OBYV_KRBL_DW,0,0)	
	wait 3
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_OBYV_KRBL_UP,0,0)
		}
}

DEFINE_CALL 'ZL_OBYVAK_KRBPRAVA_DOLU'						// OBYVAK KRB VLEVO
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_OBYV_KRBP_UP,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_OBYV_KRBP_DW,100,0)
		}
}

DEFINE_CALL 'ZL_OBYVAK_KRBPRAVA_NAHORU'						// OBYVAK KRB VLEVO
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_OBYV_KRBP_DW,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_OBYV_KRBP_UP,100,0)
		}
}

DEFINE_CALL 'ZL_OBYVAK_KRBPRAVA_STOP'						// OBYVAK KRB VLEVO
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_OBYV_KRBP_DW,0,0)	
	wait 3
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_OBYV_KRBP_UP,0,0)
		}
}
DEFINE_CALL 'ZL_KUCHYN1NP_ZALUZ_DOLU'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_KUCHYN_UP,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_KUCHYN_DW,100,0)
		}
}

DEFINE_CALL 'ZL_KUCHYN1NP_ZALUZ_NAHORU'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_KUCHYN_DW,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_KUCHYN_UP,100,0)
		}
}

DEFINE_CALL 'ZL_KUCHYN1NP_ZALUZ_STOP'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_KUCHYN_UP,0,0)	
	wait 3
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_KUCHYN_DW,0,0)
		}
}

DEFINE_CALL 'ZL_KOUP1NP_ZALUZ_DOLU'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_KOUPZAL_UP,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_KOUPZAL_DW,100,0)
		}
}

DEFINE_CALL 'ZL_KOUP1NP_ZALUZ_NAHORU'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_KOUPZAL_DW,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_KOUPZAL_UP,100,0)
		}
}

DEFINE_CALL 'ZL_KOUP1NP_ZALUZ_STOP'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_KOUPZAL_UP,0,0)	
	wait 3
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_KOUPZAL_DW,0,0)
		}
}

DEFINE_CALL 'ZL_WC1NP_ZALUZ_DOLU'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_WCZAL_UP,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_WCZAL_DW,100,0)
		}
}

DEFINE_CALL 'ZL_WC1NP_ZALUZ_NAHORU'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_WCZAL_DW,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_WCZAL_UP,100,0)
		}
}

DEFINE_CALL 'ZL_WC1NP_ZALUZ_STOP'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_WCZAL_UP,0,0)	
	wait 3
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_1NP_WCZAL_DW,0,0)
		}
}
///////////////////////////////// 		2NP		////////////
DEFINE_CALL 'ZL_2NP_KOUPELNA_DOLU'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_KOUPELNA_UP,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_KOUPELNA_DW,100,0)
		}
}

DEFINE_CALL 'ZL_2NP_KOUPELNA_NAHORU'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_KOUPELNA_DW,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_KOUPELNA_UP,100,0)
		}
}

DEFINE_CALL 'ZL_2NP_KOUPELNA_STOP'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_KOUPELNA_UP,0,0)	
	wait 3
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_KOUPELNA_DW,0,0)
		}
}

DEFINE_CALL 'ZL_2NP_HALA_01_DOLU'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_HALA01_UP,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_HALA01_DW,100,0)
		}
}

DEFINE_CALL 'ZL_2NP_HALA_01_NAHORU'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_HALA01_DW,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_HALA01_UP,100,0)
		}
}

DEFINE_CALL 'ZL_2NP_HALA_01_STOP'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_HALA01_UP,0,0)	
	wait 3
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_HALA01_DW,0,0)
		}
}
DEFINE_CALL 'ZL_2NP_HALA_02_DOLU'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_HALA02_UP,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_HALA02_DW,100,0)
		}
}

DEFINE_CALL 'ZL_2NP_HALA_02_NAHORU'						// BALKON STRED 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_HALA02_DW,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_HALA02_UP,100,0)
		}
}

DEFINE_CALL 'ZL_2NP_HALA_02_STOP'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_HALA02_UP,0,0)	
	wait 3
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_HALA02_DW,0,0)
		}
}


DEFINE_CALL 'ZL_2NP_HALA_03_DOLU'						// BALKON KRAJE
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_HALA03_UP,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_HALA03_DW,100,0)
		}
}

DEFINE_CALL 'ZL_2NP_HALA_03_NAHORU'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_HALA03_DW,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_HALA03_UP,100,0)
		}
}

DEFINE_CALL 'ZL_2NP_HALA_03_STOP'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_HALA03_UP,0,0)	
	wait 3
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_HALA03_DW,0,0)
		}
}


DEFINE_CALL 'ZL_2NP_LOZNICE_01_DOLU'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_LOZNICE01_UP,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_LOZNICE01_DW,100,0)
		}
}

DEFINE_CALL 'ZL_2NP_LOZNICE_01_NAHORU'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_LOZNICE01_DW,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_LOZNICE01_UP,100,0)
		}
}

DEFINE_CALL 'ZL_2NP_LOZNICE_01_STOP'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_LOZNICE01_UP,0,0)	
	wait 3
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_LOZNICE01_DW,0,0)
		}
}
DEFINE_CALL 'ZL_2NP_LOZNICE_02_DOLU'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_LOZNICE02_UP,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_LOZNICE02_DW,100,0)
		}
}

DEFINE_CALL 'ZL_2NP_LOZNICE_02_NAHORU'						// BALKON STRED 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_LOZNICE02_DW,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_LOZNICE02_UP,100,0)
		}
}

DEFINE_CALL 'ZL_2NP_LOZNICE_02_STOP'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_LOZNICE02_UP,0,0)	
	wait 3
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_LOZNICE02_DW,0,0)
		}
}
DEFINE_CALL 'ZL_2NP_DETPOK_01_DOLU'						// ROLETA DP
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_DETPOK_01_UP,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_DETPOK_01_DW,100,0)
		}
}

DEFINE_CALL 'ZL_2NP_DETPOK_01_NAHORU'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_DETPOK_01_DW,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_DETPOK_01_UP,100,0)
		}
}

DEFINE_CALL 'ZL_2NP_DETPOK_01_STOP'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_DETPOK_01_UP,0,0)	
	wait 3
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_DETPOK_01_DW,0,0)
		}
}
DEFINE_CALL 'ZL_2NP_DETPOK_02_DOLU'						// ZALUZIE DP
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_DETPOK_03_UP,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_DETPOK_03_DW,100,0)
		}
}

DEFINE_CALL 'ZL_2NP_DETPOK_02_NAHORU'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_DETPOK_03_DW,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_DETPOK_03_UP,100,0)
		}
}

DEFINE_CALL 'ZL_2NP_DETPOK_02_STOP'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_DETPOK_03_UP,0,0)	
	wait 3
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_DETPOK_03_DW,0,0)
		}
}


DEFINE_CALL 'ZL_2NP_DETPOK_03_DOLU'						// ROLETA DP
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_DETPOK_02_UP,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_DETPOK_02_DW,100,0)
		}
}

DEFINE_CALL 'ZL_2NP_DETPOK_03_NAHORU'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_DETPOK_02_DW,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_DETPOK_02_UP,100,0)
		}
}

DEFINE_CALL 'ZL_2NP_DETPOK_03_STOP'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_DETPOK_02_UP,0,0)	
	wait 3
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_2NP_DETPOK_02_DW,0,0)
		}
}

DEFINE_CALL 'ZL_VEN_HOST_01_DOLU'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_HOST1_UP,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_HOST1_DW,100,0)
		}
}
DEFINE_CALL 'ZL_VEN_HOST_01_NAHORU'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_HOST1_DW,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_HOST1_UP,100,0)
		}
}
DEFINE_CALL 'ZL_VEN_HOST_01_STOP'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_HOST1_UP,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_HOST1_DW,0,0)
		}
}
DEFINE_CALL 'ZL_VEN_HOST_02_DOLU'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_HOST2_UP,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_HOST2_DW,100,0)
		}
}
DEFINE_CALL 'ZL_VEN_HOST_02_NAHORU'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_HOST2_DW,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_HOST2_UP,100,0)
		}
}
DEFINE_CALL 'ZL_VEN_HOST_02_STOP'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_HOST2_UP,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_HOST2_DW,0,0)
		}
}
DEFINE_CALL 'ZL_VEN_HOST_03_DOLU'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_HOST3_UP,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_HOST3_DW,100,0)
		}
}
DEFINE_CALL 'ZL_VEN_HOST_03_NAHORU'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_HOST3_DW,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_HOST3_UP,100,0)
		}
}
DEFINE_CALL 'ZL_VEN_HOST_03_STOP'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_HOST3_UP,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_HOST3_DW,0,0)
		}
}

DEFINE_CALL 'ZL_VEN_KANCL_01_DOLU'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_KANCL_01_UP,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_KANCL_01_DW,100,0)
		}
}
DEFINE_CALL 'ZL_VEN_KANCL_01_NAHORU'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_KANCL_01_DW,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_KANCL_01_UP,100,0)
		}
}
DEFINE_CALL 'ZL_VEN_KANCL_01_STOP'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_KANCL_01_UP,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_KANCL_01_DW,0,0)
		}
}
DEFINE_CALL 'ZL_VEN_KANCL_02_DOLU'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_KANCL_02_UP,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_KANCL_02_DW,100,0)
		}
}
DEFINE_CALL 'ZL_VEN_KANCL_02_NAHORU'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_KANCL_02_DW,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_KANCL_02_UP,100,0)
		}
}
DEFINE_CALL 'ZL_VEN_KANCL_02_STOP'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_KANCL_02_UP,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_KANCL_02_DW,0,0)
		}
}
DEFINE_CALL 'ZL_VEN_KANCL_03_DOLU'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_KANCL_03_UP,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_KANCL_03_DW,100,0)
		}
}
DEFINE_CALL 'ZL_VEN_KANCL_03_NAHORU'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_KANCL_03_DW,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_KANCL_03_UP,100,0)
		}
}
DEFINE_CALL 'ZL_VEN_KANCL_03_STOP'						// 
{
	CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_KANCL_03_UP,0,0)	
	wait 5
		{
		CALL 'ILIGHT_CHANNEL_VALUE' (ZL_VEN_KANCL_03_DW,0,0)
		}
}






///////////////////////// TESTY /////
(*
DEFINE_CALL 'Soumrak_ZaluzTEST'    		// TEST ZRYCHLENE
	{
		SEND_COMMAND dvMyTP_01,"'^TXT-850,0,','CIDLO SOUMRAK Test'"
		SOUMRAK_DOLU=1
		IF (!TIMELINE_ACTIVE(TL_CASOVAC_VECER)) 
			{
			IF (TIMELINE_ACTIVE(TL_CASOV_RANO_VIKEND)) 
				TIMELINE_KILL(TL_CASOV_RANO_VIKEND)
			IF (TIMELINE_ACTIVE(TL_CASOVAC_RANO)) 
				TIMELINE_KILL(TL_CASOVAC_RANO)
			ZALUZIE_CASOVAC_VECER[1] = 100  	//Casovac dolu
			ZALUZIE_CASOVAC_VECER[2] = 9000
			ZALUZIE_CASOVAC_VECER[3] = 9000
			ZALUZIE_CASOVAC_VECER[4] = 9000
			ZALUZIE_CASOVAC_VECER[5] = 900 
			ZALUZIE_CASOVAC_VECER[6] = 90
			TIMELINE_CREATE(TL_CASOVAC_VECER_TEST,ZALUZIE_CASOVAC_VECER,6,TIMELINE_RELATIVE,TIMELINE_ONCE)
			}
	}	

*)

DEFINE_EVENT

TIMELINE_EVENT[TL_CASOVAC_RANO]    // AKCE PRO ZALUZIE RANO
{
  SWITCH(Timeline.Sequence)
  {
    case 1:{          // 
	        SEND_COMMAND dvMyTP_01,"'^TXT-849,0,','1'"
			//TIME_EVENT=1
			CALL 'Zaluzie1_Dolu_Srovnat'		// horizontalne srovnaji na plny pruhled
			WAIT 60
			CALL 'Zaluzie2_Dolu_Srovnat'
			WAIT 90
			CALL 'ZL_DUM_HOST_Srovnat'   
			WAIT 96
			CALL 'ZL_PRACOVNA_Srovnat'
			} 
    case 2:{           
			SEND_COMMAND dvMyTP_01,"'^UNI-849,0,0032'"
			//CALL 'Zaluzie1_Nahoru_25'
			//WAIT 60
			//CALL 'Zaluzie2_Nahoru_30'
			///WAIT 100
			 //CALL 'ZL_PRACOVNA_Nahoru30'
			 //WAIT  200
			 //CALL 'ZL_DUM_HOST_Nahoru30'
			} 
	case 3:{          // 
			SEND_COMMAND dvMyTP_01,"'^UNI-849,0,0033'"
			//CALL 'Zaluzie1_Nahoru_25'
			//WAIT 60
			//CALL 'Zaluzie2_Nahoru_30'
			//WAIT 100
			// CALL 'ZL_PRACOVNA_Nahoru30'
			 //WAIT  200
			 //CALL 'ZL_DUM_HOST_Nahoru30'
			}
	case 4:{          //
			SEND_COMMAND dvMyTP_01,"'^UNI-849,0,0034'"
			CALL 'Zaluzie1_Nahoru'
			WAIT 60
			CALL 'Zaluzie2_Nahoru'
			} 
    case 5:{          // DODAT ZIMNI ZAHRADU
			SEND_COMMAND dvMyTP_01,"'^UNI-849,0,0030'"
			SEND_STRING 0,"'TCR AKCE 5 - KILL'"
			ZALUZIE_STAV=1	// ZALUZIE NAHORE
			TIMELINE_KILL(TL_CASOVAC_RANO)
           }        
	}
	SEND_COMMAND dvMyTP_01,"'^UNI-848,0,005A0041004C0055005A00490045002000520041004E004F0020'"
	SEND_STRING 0,"'RANNI CASOVAC ',ITOA(Timeline.ID),' Event ',ITOA(Timeline.Sequence), ' Time= ',ITOA(Timeline.Time)"
} 
(* TESTUJI NOVOU VERZI		
	
TIMELINE_EVENT[TL_CASOVAC_RANO]    // AKCE PRO ZALUZIE RANO
{
  SWITCH(Timeline.Sequence)
  {
    case 1:{          // 
	        SEND_COMMAND dvMyTP_01,"'^TXT-849,0,','1'"
			CALL 'Zaluzie1_Nahoru_10'
			WAIT 60
			CALL 'Zaluzie2_Nahoru_30'
			WAIT 100
			 CALL 'ZL_PRACOVNA_Nahoru30'
			 WAIT  200
			 CALL 'ZL_DUM_HOST_Nahoru30'
			} 
    case 2:{          // 
			SEND_COMMAND dvMyTP_01,"'^UNI-849,0,0032'"
			CALL 'Zaluzie1_Nahoru_25'
			WAIT 60
			CALL 'Zaluzie2_Nahoru_30'
			WAIT 100
			 CALL 'ZL_PRACOVNA_Nahoru30'
			 WAIT  200
			 CALL 'ZL_DUM_HOST_Nahoru30'
			} 
	case 3:{          // 
			SEND_COMMAND dvMyTP_01,"'^UNI-849,0,0033'"
			CALL 'Zaluzie1_Nahoru_25'
			WAIT 60
			CALL 'Zaluzie2_Nahoru_30'
			WAIT 100
			 CALL 'ZL_PRACOVNA_Nahoru30'
			 WAIT  200
			 CALL 'ZL_DUM_HOST_Nahoru30'
			}
	case 4:{          //
			SEND_COMMAND dvMyTP_01,"'^UNI-849,0,0034'"
			CALL 'Zaluzie1_Nahoru'
			WAIT 60
			CALL 'Zaluzie2_Nahoru'
			} 
    case 5:{          // DODAT ZIMNI ZAHRADU
			SEND_COMMAND dvMyTP_01,"'^UNI-849,0,0030'"
			SEND_STRING 0,"'TCR AKCE 5 - KILL'"
			TIMELINE_KILL(TL_CASOVAC_RANO)
           }        
	}
	SEND_COMMAND dvMyTP_01,"'^UNI-848,0,005A0041004C0055005A00490045002000520041004E004F0020'"
	SEND_STRING 0,"'RANNI CASOVAC ',ITOA(Timeline.ID),' Event ',ITOA(Timeline.Sequence), ' Time= ',ITOA(Timeline.Time)"
}
*)
TIMELINE_EVENT[TL_CASOV_RANO_VIKEND]    // AKCE PRO ZALUZIE VIKEND RANO
{
  
  SWITCH(Timeline.Sequence)
  {
    case 1:{          // 
			CALL 'Zaluzie1_Nahoru_10'
			} 
    case 2:{          // 
			CALL 'Zaluzie1_Nahoru_25'
			} 
	case 3:{          // 
			CALL 'Zaluzie1_Nahoru_25'
			}
	case 4:{          // 
			CALL 'Zaluzie1_Nahoru'
			} 
    case 5:{          // 
			SEND_STRING 0,"'TCRV AKCE 5 - KILL'"
			ZALUZIE_STAV=1	// ZALUZIE NAHORE 
			TIMELINE_KILL(TL_CASOV_RANO_VIKEND)
           }        
	}
	SEND_STRING 0,"'RANI VIKEND CASOVAC ',ITOA(Timeline.ID),' Event ',ITOA(Timeline.Sequence), ' Time= ',ITOA(Timeline.Time)"
}

TIMELINE_EVENT[TL_CASOVAC_VECER]    // AKCE PRO ZALUZIE VECER - PRES SOUMRAKOVE CIDLO
{
  
  SWITCH(Timeline.Sequence)
  {
    case 1:{          // 
	        SEND_COMMAND dvMyTP_01,"'^TXT-849,0,','1'"
			ZALUZIE_STAV=0	// ZALUZIE DOLE
			//TIME_EVENT=1
			CALL 'Zaluzie1_Dolu_100'		// Sjedou dolu a horizontalne srovnaji na plny pruhled
			 WAIT 65
			 CALL 'Zaluzie2_Dolu_100'
			 WAIT 92
			 CALL 'ZaluzieVenek_Dolu_100'
			} 
    case 2:{          // 
	         SEND_COMMAND dvMyTP_01,"'^TXT-849,0,','2'"
			 //TIME_EVENT=2
			 //CALL 'Zaluzie1_Dolu_30'		// Privrou o 30%
			 //WAIT 80
			 //CALL 'Zaluzie2_Dolu_30'
			 //WAIT 100
			 //CALL 'ZL_PRACOVNA_Dolu30'
			 CALL 'ZL_DUM_HOST_Dolu'
			 WAIT  600
			 CALL 'ZL_DUM_HOST_STOP'
			} 
	case 3:{          // 
	        SEND_COMMAND dvMyTP_01,"'^TXT-849,0,','3'"
			//TIME_EVENT=3
			 // CALL 'Zaluzie1_Dolu_30'
			 // WAIT 80
			 // CALL 'Zaluzie2_Dolu_30'
			 // WAIT 100
			  //CALL 'ZL_PRACOVNA_Dolu30'
			  //WAIT  200
			  CALL 'ZL_DUM_HOST_Dolu30'
			}
	case 4:{          //
			SEND_COMMAND dvMyTP_01,"'^TXT-849,0,','4'"
			//TIME_EVENT=4
			 //CALL 'Zaluzie1_Dolu_30'
			 //WAIT 80
			 //CALL 'Zaluzie2_Dolu_30'
			 //WAIT 100
			 //CALL 'ZL_PRACOVNA_Dolu30'
			 //WAIT  200
			 CALL 'ZL_DUM_HOST_Dolu30'
			} 
	case 5:{          //
			SEND_COMMAND dvMyTP_01,"'^TXT-849,0,','5'"
			//TIME_EVENT=5
			 CALL 'Zaluzie1_Dolu'    // Zcela zavrou
			 WAIT 80
			 ZalZZ=0  // Zimni zahrada pro naklon 0= Zavrene
			 CALL 'Zaluzie2_Dolu'
			} 
	case 6:{ 
		  SEND_COMMAND dvMyTP_01,"'^TXT-849,0,','6'"
		  //TIME_EVENT=6
		  IF (DEN_ZAPNUT=1)
				{
				CALL 'POWER_OFF_2NP_DET_POKOJ'
				}
			SEND_STRING 0,"'TCV AKCE 6 - KILL'"
			TIMELINE_KILL(TL_CASOVAC_VECER)
			} 
	}
	SEND_COMMAND dvMyTP_01,"'^UNI-848,0,005600450043004500520020004300490044004C004F'"
	SEND_STRING 0,"'SOUMRAK CASOVAC ',ITOA(Timeline.ID),' Event ',ITOA(Timeline.Sequence), ' Time= ',ITOA(Timeline.Time)"
	//TIME_EVENT = ITOA(Timeline.Sequence)
}
(*
TIMELINE_EVENT[TL_CASOVAC_VECER_TEST]    // TEST AKCE PRO ZALUZIE VECER - PRES SOUMRAKOVE CIDLO
{
  
  SWITCH(Timeline.Sequence)
  {
    case 1:{          // 
	        SEND_COMMAND dvMyTP_01,"'^TXT-849,0,','1'"
			//TIME_EVENT=1
			CALL 'Zaluzie1_Dolu_100'		// Sjedou dolu a horizontalne srovnaji na plny pruhled
			 WAIT 65
			 CALL 'Zaluzie2_Dolu_100'
			 //WAIT 92
			 //CALL 'ZaluzieVenek_Dolu_100' ///nechci venek
			} 
    case 2:{          // 
	         SEND_COMMAND dvMyTP_01,"'^TXT-849,0,','2'"
			 //TIME_EVENT=2
			 //CALL 'Zaluzie1_Dolu_30'		// Privrou o 30%
			 //WAIT 80
			 //CALL 'Zaluzie2_Dolu_30'
			 //WAIT 100
			 //CALL 'ZL_PRACOVNA_Dolu30'
			// CALL 'ZL_DUM_HOST_Dolu'///nechci venek
			// WAIT  600	///nechci venek
			 //CALL 'ZL_DUM_HOST_STOP'	///nechci venek
			} 
	case 3:{          // 
	        SEND_COMMAND dvMyTP_01,"'^TXT-849,0,','3'"
			//TIME_EVENT=3
			 // CALL 'Zaluzie1_Dolu_30'
			 // WAIT 80
			 // CALL 'Zaluzie2_Dolu_30'
			 // WAIT 100
			  //CALL 'ZL_PRACOVNA_Dolu30'
			  //WAIT  200
			 // CALL 'ZL_DUM_HOST_Dolu30'  ///nechci venek
			}
	case 4:{          //
			SEND_COMMAND dvMyTP_01,"'^TXT-849,0,','4'"
			//TIME_EVENT=4
			 //CALL 'Zaluzie1_Dolu_30'
			 //WAIT 80
			 //CALL 'Zaluzie2_Dolu_30'
			 //WAIT 100
			 //CALL 'ZL_PRACOVNA_Dolu30'
			 //WAIT  200
			 //CALL 'ZL_DUM_HOST_Dolu30'
			} 
	case 5:{          //
			SEND_COMMAND dvMyTP_01,"'^TXT-849,0,','5'"
			//TIME_EVENT=5
			 CALL 'Zaluzie1_Dolu'    // Zcela zavrou
			 WAIT 80
			 ZalZZ=0  // Zimni zahrada pro naklon 0= Zavrene
			 CALL 'Zaluzie2_Dolu'
			} 
	case 6:{ 
		  SEND_COMMAND dvMyTP_01,"'^TXT-849,0,','6'"
		  //TIME_EVENT=6
			//TIMELINE_KILL(TL_CASOVAC_VECER_TEST)
			} 
	}
	SEND_COMMAND dvMyTP_01,"'^UNI-848,0,005600450043004500520020004300490044004C004F'"
	SEND_STRING 0,"'SOUMRAK CASOVAC ',ITOA(Timeline.ID),' Event ',ITOA(Timeline.Sequence), ' Time= ',ITOA(Timeline.Time)"
	//TIME_EVENT = ITOA(Timeline.Sequence)
}
*)
TIMELINE_EVENT[TLCASZAL_ALL_UP]    // AKCE PRO ZALUZIE NAHORU V TIMELINE PRO TESTOVANI
{
  
  SWITCH(Timeline.Sequence)
  {
    case 1:{          // First Event
               
				//SEND_STRING 0,'Zaluzie UP 10%'
				CALL 'Zaluzie1_Nahoru_10'
				CALL 'Zaluzie2_Nahoru_10'
				CALL 'Zaluzie2_Koupelna_Nahoru_10'
           }
           
    case 2:{          // Second Event
				//SEND_STRING 0,'Zaluzie UP 40%'
            CALL 'Zaluzie1_Nahoru_30'
				CALL 'Zaluzie2_Nahoru_30'
				CALL 'Zaluzie2_Koupelna_Nahoru_30'
           }
           
    case 3:{          // Third Event
				//SEND_STRING 0,'Zaluzie UP 70%'
            CALL 'Zaluzie1_Nahoru_30'
				CALL 'Zaluzie2_Nahoru_30'
				CALL 'Zaluzie2_Koupelna_Nahoru_30'          
				}
           
    case 4:{          // Forth Event
            //SEND_STRING 0,'Zaluzie UP 100%'
            CALL 'Zaluzie1_Nahoru_30'
				CALL 'Zaluzie2_Nahoru_30'
				CALL 'Zaluzie2_Koupelna_Nahoru_30'
           }
                                           
    case 5:{          // Fifth Elememt
				//SEND_STRING 0,'Zaluzie NAHORU'
            CALL 'Zaluzie1_Nahoru'
				CALL 'Zaluzie2_Nahoru'
				CALL 'Zaluzie2_Koupelna_Nahoru'
		  }
           
    case 6:{          // 6th Event
				//SEND_STRING 0,'Zaluzie STOP'
            CALL 'Zaluzie1_Stop'
				CALL 'Zaluzie2_Stop'
				CALL 'Zaluzie2_Koupelna_Stop'
           }        
                                                                                                                                         
    case 7:{          // 7th Event
            //SEND_STRING 0,'SEVENTH EVENT'
           } 
           
    case 8:{          // 8th Event
              //SEND_STRING 0,'EIGHTH EVENT'
           }        
	}
	SEND_STRING 0,"'ZALUZ ALL DOWN ',ITOA(Timeline.ID),' Event ',ITOA(Timeline.Sequence), ' Time= ',ITOA(Timeline.Time)"
}
TIMELINE_EVENT[TLCASZAL_ALL_DOWN]    // AKCE PRO ZALUZIE DOLU  V TIMELINE P
{
  
  SWITCH(Timeline.Sequence)
  {
    case 1:{          // First Event
               
				//SEND_STRING 0,'Zaluzie DOLU a OTEVRIT'
				CALL 'Zaluzie1_Dolu_100'
				CALL 'Zaluzie2_Dolu_100'
				CALL 'Zaluzie2_Koupelna_Dolu_100'
           }
           
    case 2:{          // Second Event
				//SEND_STRING 0,'Zaluzie DWN 40%'
            CALL 'Zaluzie1_Dolu_30'
				CALL 'Zaluzie2_Dolu_30'
				CALL 'Zaluzie2_Koupelna_Dolu_30'
           }
           
    case 3:{          // Third Event
				//SEND_STRING 0,'Zaluzie DWN 70%'
            CALL 'Zaluzie1_Dolu_30'
				CALL 'Zaluzie2_Dolu_30'
				CALL 'Zaluzie2_Koupelna_Dolu_30'          
				}
           
    case 4:{          // Forth Event
            //SEND_STRING 0,'Zaluzie DWN 100%'
            CALL 'Zaluzie1_Dolu_30'
				CALL 'Zaluzie2_Dolu_30'
				CALL 'Zaluzie2_Koupelna_Dolu_30'
           }
                                           
    case 5:{          // Fifth Elememt
				//SEND_STRING 0,'Zaluzie DOLU'
            CALL 'Zaluzie1_Dolu'
				CALL 'Zaluzie2_Dolu'
				CALL 'Zaluzie2_Koupelna_Dolu'
		  }
           
    case 6:{          // 6th Event
				//SEND_STRING 0,'Zaluzie STOP'
            CALL 'Zaluzie1_Stop'
				CALL 'Zaluzie2_Stop'
				CALL 'Zaluzie2_Koupelna_Stop'
           }        
                                                                                                                                         
    case 7:{          // 7th Event
            //SEND_STRING 0,'SEVENTH EVENT'
           } 
           
    case 8:{          // 8th Event
              //SEND_STRING 0,'EIGHTH EVENT'
           }     
		}
  SEND_STRING 0,"'ZALUZ ALL DOWN ',ITOA(Timeline.ID),' Event ',ITOA(Timeline.Sequence), ' Time= ',ITOA(Timeline.Time)"
    }

TIMELINE_EVENT[TL_ZALUZ_1NP_UP]    // // Zaluzie 1NP NAHORU PRES CIDLO
{
  
  SWITCH(Timeline.Sequence)
  {
    case 1:{          // First Event
              //SEND_STRING 0,'FIRST EVENT TL1A'
				IF (ZAL_1NP_KUCH_Z1=0)
					{
					CALL 'ZL_KUCHYN1NP_ZALUZ_NAHORU'
					//WAIT 22   SPATNE CHODIL SEVER ZZ, JIZ VYRESENO
					//CALL 'ZL_ZZAHRAD_SEVER_DOLU'
					}
           }
           
    case 2:{          
				IF (ZAL_1NP_OBYV_Z1=0)
					{
					CALL 'ZL_OBYVAK_KRBLEVA_NAHORU'
					}
           }
           
    case 3:{         
				IF (ZAL_1NP_OBYV_Z2=0)
					{
					CALL 'ZL_OBYVAK_KRBPRAVA_NAHORU'
					}
				}
           
    case 4:{          
				IF (ZAL_1NP_KOUP_Z1=0)
					{
					CALL 'ZL_KOUP1NP_ZALUZ_NAHORU'
					}
           }
                                           
    case 5:{          
				IF (ZAL_1NP_KOUP_Z2=0)
					{
					CALL 'ILIGHT_SEQ_START' (SEQ_1NPKOR_UP,1)
					}
		  }
           
    case 6:{         
				IF (ZAL_1NP_WC_Z1=0)
					{
					CALL 'ZL_WC1NP_ZALUZ_NAHORU'
					}
           } 
	 case 7:{ 
				IF (ZAL_1NP_WC_Z2=0)
					{
					CALL 'ILIGHT_SEQ_START' (SEQ_1NPWCR_UP,1)
					}
           } 
	 case 8:{ 
				IF (ZAL_1NP_ZZAH_Z1=0)
					{ 
					CALL 'ZL_ZZAHRAD_KRAJLEVY_NAHORU'
					}
           } 
	 case 9:{ 
				IF (ZAL_1NP_ZZAH_Z2=0)
					{
					CALL 'ZL_ZZAHRAD_VYCHODJ_NAHORU'
					}
           } 
	 case 10:{ 
				IF (ZAL_1NP_ZZAH_Z3=0)
					{
					CALL 'ZL_ZZAHRAD_DVERE_NAHORU'
					}
           } 
	 case 11:{          
				IF (ZAL_1NP_ZZAH_Z4=0)
					{
					wait 10
					CALL 'ZL_ZZAHRAD_VYCHODZ_NAHORU'
					}
           }
    case 12:{          
				
				IF (ZAL_1NP_ZZAH_Z5=0)
					{
					CALL 'ZL_ZZAHRAD_SEVER_NAHORU'
					}
           }
    case 13:{   	
					IF (ZAL_1NP_ZZAH_Z5=0)
						{
						CALL 'ZL_ZZAH_CIDLO_SEVER_NAHORU'
						}
				}
           
    case 14:{         
				IF (ZAL_1NP_KOUP_Z1=0)
					{
					CALL 'ZL_KOUP1NP_ZALUZ_NAHORU'
					}
           }
                                           
    case 15:{   
				IF (ZAL_1NP_WC_Z1=0)
					{
					CALL 'ZL_WC1NP_ZALUZ_NAHORU'
					}
				
		  }
           
    case 16:{         
				IF (ZAL_0MK_PRAC_Z1=0)
					{
					CALL 'ZL_VEN_KANCL_01_NAHORU'
					}
           } 
	 case 17:{ 
				IF (ZAL_0MK_PRAC_Z2=0)
					{
					CALL 'ZL_VEN_KANCL_02_NAHORU'
					}
           } 
	 case 18:{ 
				IF (ZAL_0MK_PRAC_Z3=0)
					{
					CALL 'ZL_VEN_KANCL_03_NAHORU'
					}
				
           } 
	 case 19:{ 
			IF (ZAL_0MK_HOST_Z1=0)
					{
					CALL 'ZL_VEN_HOST_01_NAHORU'
					}
           } 
	 case 20:{ 
			IF (ZAL_0MK_HOST_Z2=0)
					{
					CALL 'ZL_VEN_HOST_02_NAHORU'
					}
				
           } 
	case 21:{ 
			IF (ZAL_0MK_HOST_Z3=0)
					{
					CALL 'ZL_VEN_HOST_03_NAHORU'
					}	
           } 
	case 22:{ 
			//
           } 
	case 23:{ 
			//	
           } 
	case 24:{ 
			//
           } 
	case 25:{ 
			//	
           } 
	case 26:{ 
			//	
           } 
	 case 27:{ 
				CALL 'Zaluzie1_Stop2'
				WAIT 10
				CALL 'ZL_PRACOVNA_STOP'	
				WAIT 20 
				CALL 'ZL_DUM_HOST_STOP'
           }		   
	   }
	SEND_STRING 0,"'ZALUZIE NAHORU ',ITOA(Timeline.ID),' Event ',ITOA(Timeline.Sequence), ' Time= ',ITOA(Timeline.Time)"
}
TIMELINE_EVENT[TL_ZALUZ_1NP_OPEN]    // // Zaluzie 1NP OTEVRIT
{
  
  SWITCH(Timeline.Sequence)
	 {
	 case 1:{
				IF (ZAL_1NP_KUCH_Z1=0)			// KUCHYN 
					{
					CALL 'ZL_KUCHYN1NP_ZALUZ_NAHORU'
					}
           }
	 case 2:{
				CALL 'ZL_KUCHYN1NP_ZALUZ_STOP'	//Stop
				SEND_STRING 0,"'ZALUZIE KUCHYN STOP '"
           }
	case 3:{ 
				IF (ZAL_1NP_KOUP_Z1=0)		   // KOUPELNA 
					{
					CALL 'ZL_KOUP1NP_ZALUZ_NAHORU'
					}
           }
	 case 4:{ 
				CALL 'ZL_KOUP1NP_ZALUZ_STOP'
				SEND_STRING 0,"'ZALUZIE KOUPELNA STOP '"
           } 
	 case 5:{ 
				IF (ZAL_1NP_WC_Z1=0)			// WC
					{
					CALL 'ZL_WC1NP_ZALUZ_NAHORU'
					}
           } 
	 case 6:{ 
				CALL 'ZL_WC1NP_ZALUZ_STOP'
				SEND_STRING 0,"'ZALUZIE WC STOP '"
           } 
	case 7:{ 
				IF (ZAL_1NP_OBYV_Z1=0)			// OBYVAK 1
					{
					CALL 'ZL_OBYVAK_KRBLEVA_NAHORU'
					}		//Nahoru
           }
    case 8:{ 
				CALL 'ZL_OBYVAK_KRBLEVA_STOP'		//Stop
				SEND_STRING 0,"'ZALUZIE PL STOP '"
           }
	 case 9:{    
				IF (ZAL_1NP_OBYV_Z2=0)		// OBYVAK 2
					{
					CALL 'ZL_OBYVAK_KRBPRAVA_NAHORU' // 
					}
				}
	 case 10:{         
				CALL 'ZL_OBYVAK_KRBPRAVA_STOP'	//
				SEND_STRING 0,"'ZALUZIE PP STOP '"
				}
    case 11:{         
				CALL 'ZaluzieZZ_Srovnat_100'
				(*
				IF ((ZAL_1NP_ZZAH_Z1=0)&&(ZAL_1NP_ZZAH_Z3=0)&&(ZAL_1NP_ZZAH_Z5=0))	// ZIMNI ZAHRADA
					{
					IF (ZalZZ=0)
						{
						CALL 'ZaluzieZZ_Dolu_100'
						ZalZZ=1
						}
					ELSE
						{
						CALL 'ZaluzieZZ_Nahoru_C30' // Momentalne otevrit naplno 
						}
					}
				*)
           }		  
    case 12:{         
			//CALL 'ZL_ZZAHRAD_VYCHODJ_NAHORU'	//zz	
           }		                     
    case 13:{
				//CALL 'ZL_ZZAHRAD_VYCHODJ_NAHORU'	//zz
				}
	 case 14:{
				//CALL 'ILIGHT_SEQ_START' (SEQ_1NPOZL_UP,5)	//zz
				CALL 'ZL_ZZAHRAD_KRAJLEVY_STOP'		// PRO SICHR
				wait 5
				CALL 'ZL_ZZAHRAD_SEVER_STOP'		// PRO SICHR
				wait 10
				CALL 'ZL_ZZAHRAD_VVYCHOD_STOP'		// SICHR
				}
    case 15:{    
				//CALL 'ZL_ZZAHRAD_DVERE_NAHORU' //zz
           } 
    case 16:{ 
				//CALL 'ZL_ZZAHRAD_DVERE_STOP' //zz
           } 
	 case 17:{ 
				//CALL 'ZaluzieZZ_Dolu_100'
           } 
	 case 18:{ 
				
				//CALL 'ZaluzieZZ_Dolu_100'
           } 
	  }
	 SEND_STRING 0,"'ZALUZIE OPEN ',ITOA(Timeline.ID),' Event ',ITOA(Timeline.Sequence), ' Time= ',ITOA(Timeline.Time)"

}

TIMELINE_EVENT[TL_ZALUZ_1NP_DOWN]    // Zaluzie 1NP DOLU	// PRO AUTOMAT pres cidlo
{
  {
  SWITCH(Timeline.Sequence)
	{
    case 1:{          // First Event
              //SEND_STRING 0,'FIRST EVENT TL1A'
				IF (ZAL_1NP_KUCH_Z1=0)
					{
					CALL 'ZL_KUCHYN1NP_ZALUZ_DOLU'
					}
           }
           
    case 2:{          // Second Event
				IF (ZAL_1NP_OBYV_Z1=0)
					{
					CALL 'ZL_OBYVAK_KRBLEVA_DOLU'
					}
           }
           
    case 3:{          // Third Event
				IF (ZAL_1NP_OBYV_Z2=0)
					{
					CALL 'ZL_OBYVAK_KRBPRAVA_DOLU'
					}
				}
           
    case 4:{          // Forth Event
				IF (ZAL_1NP_KOUP_Z1=0)
					{
					CALL 'ZL_KOUP1NP_ZALUZ_DOLU'
					}
           }
                                           
    case 5:{          // Fifth Elememt
				IF (ZAL_1NP_KOUP_Z2=0)
					{
					CALL 'ILIGHT_SEQ_START' (SEQ_1NPKOR_DW,1)
					}
		  }
           
    case 6:{          // 6th Event
				IF (ZAL_1NP_WC_Z1=0)
					{
					CALL 'ZL_WC1NP_ZALUZ_DOLU'
					}
           } 
	 case 7:{ 
				IF (ZAL_1NP_WC_Z2=0)
					{
					CALL 'ILIGHT_SEQ_START' (SEQ_1NPWCR_DW,1)
					}
           } 
	 case 8:{ 
				IF (ZAL_1NP_ZZAH_Z1=0)
					{ 
					CALL 'ZL_ZZAHRAD_KRAJLEVY_DOLU'
					}
           } 
	 case 9:{ 
				IF (ZAL_1NP_ZZAH_Z2=0)
					{
					CALL 'ZL_ZZAHRAD_VYCHODJ_DOLU'
					}
           } 
	 case 10:{ 
				IF (ZAL_1NP_ZZAH_Z3=0)
					{
					CALL 'ZL_ZZAHRAD_DVERE_DOLU'	// VYRAZENO DOCASNE PRO TESTY
					}
           } 
	 case 11:{          
				IF (ZAL_1NP_ZZAH_Z4=0)
					{
					wait 10
					CALL 'ZL_ZZAHRAD_VYCHODZ_DOLU' // VYRAZENO DOCASNE PRO TESTY
					}
           }
           
    case 12:{          // Second Event
				
				IF (ZAL_1NP_ZZAH_Z5=0)
					{
					CALL 'ZL_ZZAHRAD_SEVER_DOLU' // VYRAZENO DOCASNE PRO TESTY
					}
           }
     case 13:{         
				IF (ZAL_0MK_PRAC_Z1=0)
					{
					CALL 'ZL_VEN_KANCL_01_DOLU'	// VYRAZENO DOCASNE PRO TESTY
					}
           } 
	 case 14:{ 
				IF (ZAL_0MK_PRAC_Z2=0)
					{
					CALL 'ZL_VEN_KANCL_02_DOLU'	// VYRAZENO DOCASNE PRO TESTY
					}
           } 
	 case 15:{ 
				IF (ZAL_0MK_PRAC_Z3=0)
					{
					CALL 'ZL_VEN_KANCL_03_DOLU'	// VYRAZENO DOCASNE PRO TESTY
					}
				
           } 
	 case 16:{ 
			IF (ZAL_0MK_HOST_Z1=0)
					{
					CALL 'ZL_VEN_HOST_01_DOLU'	// VYRAZENO DOCASNE PRO TESTY
					}
           } 
	 case 17:{ 
			IF (ZAL_0MK_HOST_Z2=0)
					{
					CALL 'ZL_VEN_HOST_02_DOLU'	// VYRAZENO DOCASNE PRO TESTY
					}
				
           } 
	case 18:{ 
			IF (ZAL_0MK_HOST_Z3=0)
					{
					CALL 'ZL_VEN_HOST_03_DOLU'	// VYRAZENO DOCASNE PRO TESTY
					}	
           } 
	case 22:{ 
			//
           } 
	case 23:{ 
			//	
           } 
	case 24:{ 
			//
           } 
	case 25:{ 
			//	
           } 
	case 26:{ 
			//	
           } 
	 case 27:{ 
				CALL 'Zaluzie1_Stop2'
				WAIT 10
				CALL 'ZL_PRACOVNA_STOP'	
				WAIT 20 
				CALL 'ZL_DUM_HOST_STOP'
           }		   
	   }
	SEND_STRING 0,"'ZALUZIE DOLU ',ITOA(Timeline.ID),' Event ',ITOA(Timeline.Sequence), ' Time= ',ITOA(Timeline.Time)"
	}
}
(*
//////////////////////////////////
  SWITCH(Timeline.Sequence)
  {
    case 1:{         ///			KUCHYN DOLU START
               
				SEND_STRING 0,'FIRST EVENT 1NP DOLU'
				IF (ZAL_1NP_KUCH_Z1=0)
					{
					CALL 'ZL_KUCHYN1NP_ZALUZ_DOLU'
					}
           }
           
    case 2:{          // OBYVAK KRB LEVA DOLU
				IF (ZAL_1NP_OBYV_Z1=0)
					{
					CALL 'ZL_OBYVAK_KRBLEVA_DOLU'
					}
           }
           
    case 3:{          // OBYVAK KRB PRAVA DOLU
				IF (ZAL_1NP_OBYV_Z2=0)
					{
					CALL 'ZL_OBYVAK_KRBPRAVA_NAHORU'
					}
				}
           
    case 4:{          
           }
                                           
    case 5:{          // ZIMNI ZAHRADA VLEVO DOLU
				IF (ZAL_1NP_ZZAH_Z1=0)
					{ 
					CALL 'ZL_ZZAHRAD_VYCHODJ_DOLU'
					}
				}
           
    case 6:{          // ZIMNI ZAHRADA STRED DOLU
				IF ((ZAL_1NP_ZZAH_Z2=0)&&(ZAL_1NP_ZZAH_Z4=0))
					{
					CALL 'ZL_ZZAHRAD_DVERE_DOLU'
					}
           } 
	 case 7:{ 	///			KOUPELNA ROLETA
				IF (ZAL_1NP_KOUP_Z1=0)
					{
					CALL 'ILIGHT_SEQ_START' (SEQ_1NPKOR_DW,1)
					}
           } 
	 case 8:{ ///			KOUPELNA ZALUZIE
				IF (ZAL_1NP_KOUP_Z1=0)
					{
					CALL 'ZL_KOUP1NP_ZALUZ_DOLU'
					}
           } 
	 case 9:{ ///			WC ZALUZIE
				IF (ZAL_1NP_WC_Z1=0)
					{
					CALL 'ZL_WC1NP_ZALUZ_DOLU'
					}
           } 
	 case 10:{ 	///			WC ROLETA
				IF (ZAL_1NP_WC_Z2=0)
					{
					CALL 'ILIGHT_SEQ_START' (SEQ_1NPWCR_DW,1)
					}
           } 
	 case 11:{ ///			DOLU START
                CALL 'ZL_DUM_HOST_Dolu'
				wait 10			   
				IF (ZAL_1NP_KUCH_Z1=0)
					{
					CALL 'ZL_KUCHYN1NP_ZALUZ_DOLU'
					}
           }
    case 12:{   //   OBYVAK KRB LEVA DOLU
               
				IF (ZAL_1NP_OBYV_Z1=0)
					{
					CALL 'ZL_OBYVAK_KRBLEVA_DOLU'
					}
           }
    case 13:{   // OBYVAK KRB PRAVA DOLU
				IF (ZAL_1NP_OBYV_Z2=0)
					{
					CALL 'ZL_OBYVAK_KRBPRAVA_DOLU'
					}
				}
    case 14:{   ///			ZIMNI ZAHRADA PRAVA
				IF (ZAL_1NP_ZZAH_Z5=0)
					{
					CALL 'ZL_ZZAHRAD_VYCHODZ_DOLU'
					}
           }
    case 15:{   ///			ZIMNI ZAHRADA LEVA
				IF (ZAL_1NP_ZZAH_Z1=0)
					{
					CALL 'ZL_ZZAHRAD_VYCHODJ_DOLU'
					}
				}
           
    case 16:{    ///			ZIMNI ZAHRADA STRED 
				IF ((ZAL_1NP_ZZAH_Z2=0)&&(ZAL_1NP_ZZAH_Z4=0))
					{
					CALL 'ZL_ZZAHRAD_DVERE_DOLU'
					}
				// ZIMNI ZAHRADA VPRAVO DOLU
				IF (ZAL_1NP_ZZAH_Z5=0)
					{
					CALL 'ZL_ZZAHRAD_VYCHODZ_DOLU'
					}
           } 
	 case 17:{ 
				IF (ZAL_1NP_KOUP_Z1=0)
					{
					CALL 'ILIGHT_SEQ_START' (SEQ_1NPKOR_DW,1)
					}
           } 
	 case 18:{ 
				IF (ZAL_1NP_KOUP_Z1=0)
					{
					CALL 'ZL_KOUP1NP_ZALUZ_DOLU'
					}
           } 
	 case 19:{ 
				IF (ZAL_1NP_WC_Z1=0)
					{
					CALL 'ZL_WC1NP_ZALUZ_DOLU'
					}
           } 
	 case 20:{ 
				IF (ZAL_1NP_WC_Z1=0)
					{
					CALL 'ILIGHT_SEQ_START' (SEQ_1NPWCR_DW,1)
					}
           } 
	case 21:{ 
			CALL 'ZL_ZZAH_CIDLO_VYCHOD_DOLU'	
           } 
	case 22:{ 
			CALL 'ZL_ZZAHRAD_DVERE_DW_CIDLO'	
           } 
	case 23:{ 
			CALL 'ZL_ZZAH_CIDLO_ZAPAD_DOLU'	
           } 
	case 24:{ 
			CALL 'ZL_ZZAH_CIDLO_SEVER_DOLU'	
           } 
	case 25:{ 
			CALL 'ZL_PRACOVNA_Dolu'	
           } 
	case 26:{ 
			CALL 'ZL_DUM_HOST_Dolu'	
           } 
	 case 27:{
				SEND_STRING 0,'ZALUZIE 1NP NAHORU STOP'
				CALL 'Zaluzie1_Stop2'
				WAIT 25
				CALL 'ZL_PRACOVNA_STOP'	
				WAIT 35 
				CALL 'ZL_DUM_HOST_STOP'	
           }  
                                                                                                                                         
  }
}
*)
TIMELINE_EVENT[TL_ZALUZ_1NP_CLOSE]    // Zaluzie 1NP ZAVRIT priviram podle nastaveneho casu v timeline
{
  SWITCH(Timeline.Sequence)
  {
    case 1:{ 
				IF (ZAL_1NP_KUCH_Z1=0)
					{
					CALL 'ZL_KUCHYN1NP_ZALUZ_DOLU'
					}
           }
    case 2:{ 
				CALL 'ZL_KUCHYN1NP_ZALUZ_STOP'
           }       
    case 3:{
				IF (ZAL_1NP_OBYV_Z1=0)
					{
					CALL 'ZL_OBYVAK_KRBLEVA_DOLU'
					}
           }
	 case 4:{
				CALL 'ZL_OBYVAK_KRBLEVA_STOP'
           }
    case 5:{
				IF (ZAL_1NP_OBYV_Z2=0)
					{
					CALL 'ZL_OBYVAK_KRBPRAVA_DOLU'
					}
			}
    case 6:{
				CALL 'ZL_OBYVAK_KRBPRAVA_STOP'
			}       
    case 7:{
				IF (ZAL_1NP_ZZAH_Z5=0)
					{
					CALL 'ZL_ZZAHRAD_VYCHODZ_DOLU'
					}
           }
    case 8:{
				CALL 'ZL_ZZAHRAD_VYCHODZ_STOP'
           }                                       
    case 9:{
				IF (ZAL_1NP_ZZAH_Z1=0)
					{
					CALL 'ZL_ZZAHRAD_VYCHODJ_DOLU'
					}
			}
    case 10:{
				CALL 'ZL_ZZAHRAD_VYCHODJ_STOP'
				}       
    case 11:{
				IF ((ZAL_1NP_ZZAH_Z2=0)&&(ZAL_1NP_ZZAH_Z4=0))
					{
					CALL 'ZL_ZZAHRAD_DVERE_DOLU'
					}
           } 
	 case 12:{
				CALL 'ZL_ZZAHRAD_DVERE_STOP'
           } 
	 case 13:{ 
				IF (ZAL_1NP_KOUP_Z1=0)
					{
					CALL 'ZL_KOUP1NP_ZALUZ_DOLU'
					}
           }
	 case 14:{ 
				CALL 'ZL_KOUP1NP_ZALUZ_STOP'
           } 
	 case 15:{ 
				IF (ZAL_1NP_WC_Z1=0)
					{
					CALL 'ZL_WC1NP_ZALUZ_DOLU'
					}
           } 
	 case 16:{ 
				CALL 'ZL_WC1NP_ZALUZ_STOP'
           }  
	 case 17:{ 
				IF ((ZAL_1NP_ZZAH_Z1=0)&&(ZAL_1NP_ZZAH_Z3=0)&&(ZAL_1NP_ZZAH_Z5=0))
					{
					//CALL 'ZaluzieZZ_Dolu_C30'
					}
           } 
	 case 18:{ 
				
           } 
  }
}

TIMELINE_EVENT[TL_ZALUZ_2NP_UP]    // // Zaluzie 2NP NAHORU - CIDLO
{
  SWITCH(Timeline.Sequence)
  {
    case 1:{          
				IF (ZAL_2NP_DETP_Z1=0)
					{
					CALL 'ZL_2NP_DETPOK_01_NAHORU'
					}
           }
    case 2:{          // Second Event
				IF (ZAL_2NP_DETP_Z2=0)
					{
					CALL 'ZL_2NP_DETPOK_02_NAHORU'
					}
           }
    case 3:{         
				IF (ZAL_2NP_DETP_Z3=0)
					{
					CALL 'ZL_2NP_DETPOK_03_NAHORU'
					}
				}
    case 4:{          // Forth Event
				IF (ZAL_2NP_HALA_Z1=0)
					{
					 CALL 'ZL_2NP_HALA_01_NAHORU'
					 }
           }
    case 5:{          // Fifth Elememt
				IF (ZAL_2NP_HALA_Z2=0)
					{
					CALL 'ZL_2NP_HALA_02_NAHORU'
					}
				}
    case 6:{          // 6th Event
				IF (ZAL_2NP_HALA_Z3=0)
					{
					CALL 'ZL_2NP_HALA_03_NAHORU'
					}
           }  
	 case 7:{          // Fifth Elememt
				IF (ZAL_2NP_LOZN_Z1=0)
					{
					CALL 'ZL_2NP_LOZNICE_01_NAHORU'		// Nevim zda ma vyjizdet 
					}
				}
    case 8:{          // 6th Event
				IF (ZAL_2NP_LOZN_Z2=0)
					{
					CALL 'ZL_2NP_LOZNICE_02_NAHORU'		// Nevim zda ma vyjizdet 
					}
           } 
	 case 9:{          // First Event
				
				//CALL 'ZL_2NP_HALA_01_NAHORU'		// Klidne poslu 2x nic v prikazu nevadi
           }
    case 10:{          // Second Event
				//SEND_STRING 0,'SECOND EVENT TL2A'
				//CALL 'ZL_2NP_HALA_02_NAHORU'
           }
    case 11:{          // Third Event
				//SEND_STRING 0,'THIRD EVENT TL2A'
				//CALL 'ZL_2NP_HALA_03_NAHORU'
				}
    case 12:{          // Forth Event
				//SEND_STRING 0,'FORTH EVENT TL2A'
				// CALL 'ZL_2NP_HALA_01_NAHORU'
           }
    case 13:{          // Fifth Elememt
				//SEND_STRING 0,'FIFTH EVENT TL2A' 
				//CALL 'ZL_2NP_HALA_02_NAHORU'
				}
    case 14:{          // 6th Event
				//SEND_STRING 0,'SIXTH EVENT TL2A'
				//CALL 'ZL_2NP_HALA_03_NAHORU'
           }  
	 case 15:{          // Fifth Elememt
				//SEND_STRING 0,'SEVEN EVENT TL2A' 
				//CALL 'ZL_2NP_LOZNICE_01_NAHORU'
				}
    case 16:{          // 6th Event
				//SEND_STRING 0,'EIGHTH EVENT TL2A'
				//CALL 'ZL_2NP_LOZNICE_02_NAHORU'
           } 
	 case 17:{          // 7th Event
				//SEND_STRING 0,'STOP EVENT TL2A'
				CALL 'Zaluzie2_Stop'
           }      
  }
}
TIMELINE_EVENT[TL_ZALUZ_2NP_OPEN]    // // Zaluzie 2NP OTVIRAM
{
  SWITCH(Timeline.Sequence)
  {
	 case 1:{
		  IF (ZAL_2NP_HALA_Z1 = 0)
				{
				CALL 'ZL_2NP_HALA_03_NAHORU'
				}
		 }
	 case 2:{
		   CALL 'ZL_2NP_HALA_03_STOP'
		 }
	 case 3:{
		  IF (ZAL_2NP_HALA_Z2 = 0)
				{
				CALL 'ZL_2NP_HALA_02_NAHORU'
				}
		 }
	 case 4:{
		  CALL 'ZL_2NP_HALA_02_STOP'
		 }
	 case 5:{
			IF (ZAL_2NP_DETP_Z1 = 0)
				{
				CALL 'ILIGHT_SEQ_START' (SEQ_2NPDBA_UP,1)	// nahoru DP
				}
		  }
	 case 6:{
		  CALL 'ILIGHT_SEQ_START' (SEQ_2NPDBA_UP,5)		//stop DP
		  }
	 case 7:{
		IF (ZAL_2NP_HALA_Z3 = 0)
				{
				CALL 'ZL_2NP_HALA_01_NAHORU'
				}
		 }
	 case 8:{
			CALL 'ZL_2NP_HALA_01_STOP'
		 }
	 case 9:{
			IF (ZAL_2NP_LOZN_Z1 = 0)
				{
				CALL 'ZL_2NP_LOZNICE_01_NAHORU'
				}
		  }
	 case 10:{
		  CALL 'ZL_2NP_LOZNICE_01_STOP'
		  }
	 case 11:{
			IF (ZAL_2NP_LOZN_Z2 = 0)
				{
				CALL 'ZL_2NP_LOZNICE_02_NAHORU'
				}
		 }
	 case 12:{
		  CALL 'ZL_2NP_LOZNICE_02_STOP'
		 } 
  }
}
TIMELINE_EVENT[TL_ZALUZ_VENEK_VECER]    // // Zaluz host a pracovna sjedu dolu a otevru na 100 
{
  
  SWITCH(Timeline.Sequence)
  {
    case 1:{          
            CALL 'ZL_DUM_HOST_Dolu'  
			WAIT 10
			CALL 'ZL_PRACOVNA_Dolu'
           }
	case 2:{          
            CALL 'ZL_DUM_HOST_STOP'	  
			WAIT 10
			CALL 'ZL_PRACOVNA_STOP'	
           }
	case 3:{          
            CALL 'ZL_DUM_HOST_Srovnat'   
			WAIT 6
			CALL 'ZL_PRACOVNA_Srovnat'
           }
	case 4:{          
            CALL 'ZL_DUM_HOST_STOP'	  
			WAIT 10
			CALL 'ZL_PRACOVNA_STOP'	
           }
	case 5:{          
            CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_KANCL_01_UP)	  
			WAIT 10
			CALL 'ILIGHT_CHANNEL_OFF' (ZL_VEN_HOST1_UP)	
			WAIT 20
			CALL 'ZL_PRACOVNA_STOP'
			WAIT 30
			CALL 'ZL_DUM_HOST_STOP'	
           }
		   
	}
	SEND_STRING 0,"'ZALUZIE VENEK ',ITOA(Timeline.ID),' Event ',ITOA(Timeline.Sequence), ' Time= ',ITOA(Timeline.Time)"
}

TIMELINE_EVENT[TL_ZALUZ_2NP_DOWN]    // Zaluzie 2NP DOLU
{
  SWITCH(Timeline.Sequence)
  {
    case 1:{          // First Event
				//SEND_STRING 0,'FIRST EVENT TL2B'
				IF (ZAL_2NP_DETP_Z1 = 0)
					{
					CALL 'ZL_2NP_DETPOK_01_DOLU'
					}
           }
    case 2:{          // Second Event
				IF (ZAL_2NP_DETP_Z2 = 0)
					{
					CALL 'ZL_2NP_DETPOK_02_DOLU'
					}
           }
    case 3:{          // Third Event
				IF (ZAL_2NP_DETP_Z3 = 0)
					{
					CALL 'ZL_2NP_DETPOK_03_DOLU'
					}
				}
    case 4:{          // Forth Event
				IF (ZAL_2NP_HALA_Z1 = 0)
				{
				 CALL 'ZL_2NP_HALA_01_DOLU'
				 }
           }
    case 5:{          // Fifth Elememt
				IF (ZAL_2NP_HALA_Z2 = 0)
					{
					CALL 'ZL_2NP_HALA_02_DOLU'
					}
				}		
    case 6:{          // 6th Event
				IF (ZAL_2NP_HALA_Z3 = 0)
					{
					CALL 'ZL_2NP_HALA_03_DOLU'
					}
           }  
	 case 7:{          // Fifth Elememt
				IF (ZAL_2NP_LOZN_Z1 = 0)
					{
					CALL 'ZL_2NP_LOZNICE_01_DOLU'
					}
				}
    case 8:{          // 6th Event
				IF (ZAL_2NP_LOZN_Z2 = 0)
					{
					CALL 'ZL_2NP_LOZNICE_02_DOLU'
					}
           }  
	(*
	 case 9:{          // First Event
				IF (ZAL_2NP_DETP_Z1 = 0)
					{
					CALL 'ILIGHT_SEQ_START' (SEQ_2NPDRL_DW,1)
					}
           }
    case 10:{          // Second Event
				IF (ZAL_2NP_DETP_Z1 = 0)
					{
					CALL 'ILIGHT_SEQ_START' (SEQ_2NPDRP_DW,1)
					}
           }
    case 11:{          // Third Event
				IF (ZAL_2NP_DETP_Z1 = 0)
					{
					CALL 'ILIGHT_SEQ_START' (SEQ_2NPDBA_DW,1)
					}
				}
    case 12:{          // Forth Event
				IF (ZAL_2NP_HALA_Z3 = 0)
					{
					CALL 'ZL_2NP_HALA_01_DOLU'
					}
           }
    case 13:{          // Fifth Elememt
				IF (ZAL_2NP_HALA_Z2 = 0)
					{ 
					CALL 'ZL_2NP_HALA_02_DOLU'
					}
				}
    case 14:{          // 6th Event
				IF (ZAL_2NP_HALA_Z1 = 0)
					{
					CALL 'ZL_2NP_HALA_03_DOLU'
					}
           }  
	 case 15:{          // Fifth Elememt
				IF (ZAL_2NP_LOZN_Z1 = 0)
					{
					CALL 'ZL_2NP_LOZNICE_01_DOLU'
					}
				}
    case 16:{          // 6th Event
				IF (ZAL_2NP_LOZN_Z2 = 0)
					{
					CALL 'ZL_2NP_LOZNICE_02_DOLU'
					}
           }  
		   *)
	  case 17:{          // 7th Event
				//SEND_STRING 0,'STOP EVENT TL2B'
				CALL 'Zaluzie2_Stop'
           }      
  }
}

TIMELINE_EVENT[TL_ZALUZ_2NP_CLOSE]    // Zaluzie 2NP ZAVRIT priviram
{
  SWITCH(Timeline.Sequence)
  {
	 case 1:{
		  IF (ZAL_2NP_HALA_Z1 = 0)
					{
					CALL 'ZL_2NP_HALA_03_DOLU'		// hala balkon kraj
					}
		 }
	 case 2:{
		  CALL 'ZL_2NP_HALA_03_STOP'
		 }
	 case 3:{
		  IF (ZAL_2NP_HALA_Z2 = 0)								// hala balkon stred
					{
					CALL 'ZL_2NP_HALA_02_DOLU'
					}
		 }
	 case 4:{
		  CALL 'ZL_2NP_HALA_02_STOP'
		 }
	 case 5:{
			IF (ZAL_2NP_DETP_Z1 = 0)
				{
				CALL 'ILIGHT_SEQ_START' (SEQ_2NPDBA_DW,1)
				}
		  }
	 case 6:{
		  CALL 'ILIGHT_SEQ_START' (SEQ_2NPDBA_DW,5)
		  }
	 case 7:{ 
			IF (ZAL_2NP_HALA_Z3 = 0)
					{
					CALL 'ZL_2NP_HALA_01_DOLU'
					}
		 }
	 case 8:{ 
			CALL 'ZL_2NP_HALA_01_STOP'
		 }
	 case 9:{
			IF (ZAL_2NP_LOZN_Z1 = 0)
					{
					CALL 'ZL_2NP_LOZNICE_01_DOLU'
					}
		  }
	 case 10:{
		  CALL 'ZL_2NP_LOZNICE_01_STOP'
		  }
	 case 11:{
			IF (ZAL_2NP_LOZN_Z2 = 0)
					{
					CALL 'ZL_2NP_LOZNICE_02_DOLU'
					}
		 }
	 case 12:{
		  CALL 'ZL_2NP_LOZNICE_02_STOP'
		 } 
	 }
}
TIMELINE_EVENT[TL_ZALUZ_2NPKOUP_DOWN]    // Zaluzie 2NP Koupelna Dolu 100
{
  
  SWITCH(Timeline.Sequence)
  {
    case 1:{          // First Event
				IF (ZAL_2NP_KOUP_Z1 = 0)
					{
					CALL 'Zaluzie2_Koupelna_Dolu'
					}
           }
	 case 2:{          // First Event
				IF (ZAL_2NP_KOUP_Z1 = 0)
					{
					CALL 'Zaluzie2_Koupelna_Dolu'
					}
           }
    case 3:{          // Second Event
				CALL 'Zaluzie2_Koupelna_Stop'
				//SEND_STRING 0,'Akce 2'
           }
    case 4:{          // Third Event
				CALL 'Zaluzie2_Koupelna_Stop'
				//SEND_STRING 0,'Akce 3'
				}
	 case 5:{          // Third Event
				IF (ZAL_2NP_KOUP_Z1 = 0)
					{
					CALL 'Zaluzie2_Koupelna_Nahoru'
					}
				//SEND_STRING 0,'Akce 4'
				}
	 case 6:{          // Third Event
				CALL 'Zaluzie2_Koupelna_Stop'
				//SEND_STRING 0,'Akce 5'
				}
	 case 7:{          // Third Event
				CALL 'Zaluzie2_Koupelna_Stop'
				//SEND_STRING 0,'Akce 6'
				}
	 case 8:{          // Third Event
				CALL 'Zaluzie2_Koupelna_Stop'
				//SEND_STRING 0,'Akce 7'
				}
                                                                                                                                         
  }
}
TIMELINE_EVENT[TL_ZALUZ_2NPKOUP_UP]    // Zaluzie 2NP Koupelna Nahoru 100
{  
  SWITCH(Timeline.Sequence)
  {
    case 1:{          // First Event
				IF (ZAL_2NP_KOUP_Z1 = 0)
					{
					CALL 'Zaluzie2_Koupelna_Nahoru'
					}
           }
	  case 2:{          // First Event
				IF (ZAL_2NP_KOUP_Z1 = 0)
					{
					CALL 'Zaluzie2_Koupelna_Nahoru'
					}
           }
    case 3:{          // Second Event
				CALL 'Zaluzie2_Koupelna_Stop'
				//SEND_STRING 0,'Akce 2'
           }
    case 4:{          // Third Event
				CALL 'Zaluzie2_Koupelna_Stop'
				//SEND_STRING 0,'Akce 3'
				}
	 case 5:{          // Third Event
				IF (ZAL_2NP_KOUP_Z1 = 0)
					{
					CALL 'Zaluzie2_Koupelna_Dolu'
					}
				}
	 case 6:{          // Third Event
				CALL 'Zaluzie2_Koupelna_Stop'
				//SEND_STRING 0,'Akce 5'
				}
	 case 7:{          // Third Event
				CALL 'Zaluzie2_Koupelna_Stop'
				//SEND_STRING 0,'Akce 6'
				}
	 case 8:{          // Third Event
				CALL 'Zaluzie2_Koupelna_Stop'
				//SEND_STRING 0,'Akce 7'
				}
                                                                                                                                         
  }
}
(*
TIMELINE_EVENT[TL_ZALUZ_MANUAL_TIM2]    // VYPNUTI AUTOMATU PO URCITOU DOBU
{
  
  SWITCH(Timeline.Sequence)
  {
    case 1:{          // 
			SEND_STRING 0,"'ZALUZ MANUAL TIMER - A1'"
			} 
    case 2:{          // 
			SEND_STRING 0,"'ZALUZ MANUAL TIMER - A2'"
			} 
	case 3:{          // 
			SEND_STRING 0,"'ZALUZ MANUAL TIMER - A3'"
			}
	case 4:{  
			SEND_STRING 0,"'ZALUZ MANUAL TIMER - A4'"
			IF (ZALUZIE_STAV=FALSE)	//NOC
				{
				//ZAL_1NP_ZZ_03 = FALSE
				IF (TIMELINE_ACTIVE (TL_ZALUZ_MANUAL_TIM2))
					{
					TIMELINE_KILL (TL_ZALUZ_MANUAL_TIM2)
					SEND_STRING 0,"'ZALUZ MANUAL TIMER - KILL'"
					} 
				ELSE
					{
					//SEND_STRING 0,"'ZALUZ MANUAL TIMER - KILL'"
					}
				}
			} 
	 case 5:{          // 
			SEND_STRING 0,"'ZALUZ MANUAL TIMER - A5'"
			} 
    case 6:{          // 
			SEND_STRING 0,"'ZALUZ MANUAL TIMER - A6'"
			} 
	case 7:{          // 
			SEND_STRING 0,"'ZALUZ MANUAL TIMER - A7'"
			}
    case 8:{          
			ZAL_1NP_ZZ_03 = FALSE
			IF (TIMELINE_ACTIVE (TL_ZALUZ_MANUAL_TIM2))
				{
				TIMELINE_KILL (TL_ZALUZ_MANUAL_TIM2)
				SEND_STRING 0,"'ZALUZ MANUAL TIMER - KILL'"
				}
			ELSE
				{
				SEND_STRING 0,"'ZALUZ MANUAL TIMER - A8'"
				}
			
			}
		}
}
*)				
(*
TIMELINE_EVENT[TL_ZALUZ_USVIT_OPEN]    // // Zaluzie SVITANI OTEVRIT
{
  
  SWITCH(Timeline.Sequence)
	 {
	 case 1:{
				CALL 'ILIGHT_SEQ_START' (SEQ_1NPKUCH_UP,1)	//Nahoru
           }
	 case 2:{
				CALL 'ILIGHT_SEQ_START' (SEQ_1NPKUCH_UP,5)	//Stop
           }
	 case 3:{ 
				CALL 'ILIGHT_SEQ_START' (SEQ_1NPOKL_UP,1)		//Nahoru
           }
    case 4:{ 
				CALL 'ILIGHT_SEQ_START' (SEQ_1NPOKL_UP,5)		//Stop
           }
	 case 5:{         
				CALL 'ILIGHT_SEQ_START' (SEQ_1NPOKP_UP,1)
				}
	 case 6:{         
				CALL 'ILIGHT_SEQ_START' (SEQ_1NPOKP_UP,5)
				}
    case 7:{         
				CALL 'ZL_ZZAHRAD_VYCHODZ_NAHORU'
           }		  
    case 8:{         
				CALL 'ILIGHT_SEQ_START' (SEQ_1NPOZP_UP,5)
           }		                     
    case 9:{
				CALL 'ZL_ZZAHRAD_VYCHODJ_NAHORU'
				}
	 case 10:{
				CALL 'ILIGHT_SEQ_START' (SEQ_1NPOZL_UP,5)
				}
    case 11:{    
				CALL 'ZL_ZZAHRAD_DVERE_NAHORU'
           } 
    case 12:{ 
				CALL 'ZL_ZZAHRAD_DVERE_STOP'
           } 
	 case 13:{ 
				CALL 'ZL_KOUP1NP_ZALUZ_NAHORU'
           }
	 case 14:{ 
				CALL 'ZL_KOUP1NP_ZALUZ_STOP'
           } 
	 case 15:{ 
				CALL 'ZL_WC1NP_ZALUZ_NAHORU'
           } 
	 case 16:{ 
				CALL 'ZL_WC1NP_ZALUZ_STOP'
           } 
	  }
	 SEND_STRING 0,"'ZALUZIE OPEN ',ITOA(Timeline.ID),' Event ',ITOA(Timeline.Sequence), ' Time= ',ITOA(Timeline.Time)"

}
*)

DATA_EVENT[dvTP1]	//
{
  ONLINE: 
	{
	//WAIT 5
	//CALL 'ZOBRAZ_ESZ'
	}
} 
DATA_EVENT[dvTP2]	//
{
  ONLINE: 
	{
	 //WAIT 10
	 //CALL 'ZOBRAZ_ESZ'
	}
} 	
DATA_EVENT[dvTP3]	//
{
  ONLINE: 
	{
	 //WAIT 15
	 //CALL 'ZOBRAZ_ESZ'
	}
} 

DATA_EVENT[dvEsz]
{
  ONLINE: 
	{
	  //TIMELINE_KILL (TL_ZALUZ_MANUAL_TIMER)
	}
}

DEFINE_PROGRAM


(***********************************************************)
(*                     END OF PROGRAM                      *)
(*        DO NOT PUT ANY CODE BELOW THIS COMMENT           *)
(***********************************************************)

