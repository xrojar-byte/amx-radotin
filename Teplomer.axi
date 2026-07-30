PROGRAM_NAME='Teplomer'
(***********************************************************)
(*  FILE CREATED ON: 02/07/2016  AT: 09:57:57              *)
(***********************************************************)
(*  FILE_LAST_MODIFIED_ON: 15/05/2026  AT: 11:31:33        *)
(***********************************************************)
(*  ................................................       *)
(*  		PRO TEPLOMER TQS3 a protokol SPINEL	 		   *)
(*  		PRO Clima Sensor D od Adolf Thies GmbH		   *)
(*   	specialni verze s vypoctem smeru slunce     	   *)
(***********************************************************)

DEFINE_DEVICE

//dvTeplomer = 5001:1:1
//dvMeteo = 5001:5:1

DEFINE_CONSTANT

TL_THERM = 4 // SETS AN ID FOR THE TIMELINE
// --- KONSTANTY PRO VÝPOCET SLUNCE ---
DOUBLE PI = 3.1415926535
DOUBLE PI_HALF = 1.5707963268  // Predpocitane PI / 2.0
DOUBLE TWO_PI = 6.2831853071   // Predpocitane 2 * PI
DOUBLE DEG_TO_RAD = 0.0174532925
DOUBLE RAD_TO_DEG = 57.295779513
DOUBLE LATITUDE  = 49.996497   // Zemepisná šírka - Radotín
DOUBLE LONGITUDE = 14.363810   // Zemepisná délka - Radotín

DEFINE_VARIABLE

VOLATILE CHAR THERM_BUFFER[255]
VOLATILE CHAR THERM_TEMP[100]
VOLATILE CHAR TH_MAM[7]
VOLATILE CHAR METEO_BUFFER[255]
VOLATILE CHAR METEO_TEMP[100]
VOLATILE CHAR METEO_MAM[55]
VOLATILE CHAR TEPLOTA_ZALUZ=0
VOLATILE CHAR PRSI=0
VOLATILE CHAR spDEST[1]
VOLATILE INTEGER WIND_WARNING
VOLATILE INTEGER WIND_CITAC=1
PERSISTENT INTEGER	WIND_MAX=0
PERSISTENT INTEGER	NOC_STAV
PERSISTENT INTEGER	DEN_STAV
PERSISTENT CHAR	MANUAL_NOC=0		// 1 - NA TABLETU PREPNU NOC/DEN PRO TESTY
VOLATILE FLOAT JAS_VYCHOD
VOLATILE FLOAT JAS_JIH
VOLATILE FLOAT JAS_ZAPAD
// PERSISTENT CHAR	ZALUZIE_STAV  //1 ZALUZIE OTEVRENE / 0 NOC ZAVRENE DEFINOVANO V MASTER
//////////	ZALUZIE CIDLO
// PERSISTENT CHAR	ZAL_JIH_STAV  //1 ZALUZIE OTEVRENE / 0 ZAVRENE
VOLATILE INTEGER ZAL_JIH_CITAC=30
// PERSISTENT CHAR	ZAL_VYCHOD_STAV  //1 ZALUZIE OTEVRENE / 0 NOC ZAVRENE DEFINOVANO V MASTER
VOLATILE INTEGER ZAL_VYCHOD_CITAC=30
//PERSISTENT CHAR	ZAL_ZAPAD_STAV  //1 ZALUZIE OTEVRENE / 0 NOC ZAVRENE DEFINOVANO V MASTER
VOLATILE INTEGER ZAL_ZAPAD_CITAC=30
// VOLATILE SLONG SV_VYCHOD = 0000
// VOLATILE INTEGER TH_PLUS  // Nevim zda system nema neco delat pri teplotach pod nulou

LONG TEPLOMER_CAS[] = {8000,8000,8000,9000,9000,9000,9000,9000} //Cas pro akce je celkem 72s. Zde by stacila jedna (momentalne 2) akce, ale testuju jich 8 


// --- MATEMATICKÉ FUNKCE ---

DEFINE_FUNCTION DOUBLE fnSin(DOUBLE x)
{
    DOUBLE x2
    WHILE (x > 3.1415926535)         { x = x - 6.2831853071 }
    WHILE (x < (0.0 - 3.1415926535)) { x = x + 6.2831853071 }
    x2 = x * x
    RETURN x - ((x*x2)/6.0) + ((x*x2*x2)/120.0) - ((x*x2*x2*x2)/5040.0) + ((x*x2*x2*x2*x2)/362880.0)
}

DEFINE_FUNCTION DOUBLE fnCos(DOUBLE x)
{
    DOUBLE x2
    WHILE (x > 3.1415926535)         { x = x - 6.2831853071 }
    WHILE (x < (0.0 - 3.1415926535)) { x = x + 6.2831853071 }
    x2 = x * x
    RETURN 1.0 - (x2/2.0) + ((x2*x2)/24.0) - ((x2*x2*x2)/720.0) + ((x2*x2*x2*x2)/40320.0)
}

DEFINE_FUNCTION DOUBLE fnArctan(DOUBLE x)
{
    DOUBLE fResult
    DOUBLE fX2
    INTEGER bNeg
    INTEGER bInvert
    bNeg    = 0
    bInvert = 0
    IF (x < 0.0)
    {
        bNeg = 1
        x = 0.0 - x
    }
    IF (x > 1.0)
    {
        bInvert = 1
        x = 1.0 / x
    }
    fX2 = x * x
    fResult = x - (x*fX2/3.0) + (x*fX2*fX2/5.0) - (x*fX2*fX2*fX2/7.0) + (x*fX2*fX2*fX2*fX2/9.0) - (x*fX2*fX2*fX2*fX2*fX2/11.0)
    IF (bInvert) { fResult = 1.5707963268 - fResult }
    IF (bNeg)    { fResult = 0.0 - fResult }
    RETURN fResult
}

DEFINE_FUNCTION DOUBLE fnAtan2(DOUBLE y, DOUBLE x)
{
    IF (x > 0.0)                      { RETURN fnArctan(y / x) }
    IF (x < 0.0 AND y >= 0.0)        { RETURN fnArctan(y / x) + 3.1415926535 }
    IF (x < 0.0 AND y < 0.0)         { RETURN fnArctan(y / x) - 3.1415926535 }
    IF (x == 0.0 AND y > 0.0)        { RETURN 1.5707963268 }
    IF (x == 0.0 AND y < 0.0)        { RETURN 0.0 - 1.5707963268 }
    RETURN 0.0
}

// --- HLAVNÍ ASTRONOMICKÝ VÝPOCET ---

DEFINE_FUNCTION DOUBLE fnSpocitejAzimutSlunce(INTEGER nDen, INTEGER nMesic, INTEGER nHodina, INTEGER nMinuta)
{
    INTEGER nDenVRoce
    INTEGER nLetniCas
    DOUBLE fHodinaUTC
    DOUBLE fGamma
    DOUBLE fEqTime
    DOUBLE fDecl
    DOUBLE fTrueSolarTime
    DOUBLE fHourAngle
    DOUBLE fLatRad
    DOUBLE fSinHA
    DOUBLE fCosHA
    DOUBLE fSinDecl
    DOUBLE fCosDecl
    DOUBLE fSinLat
    DOUBLE fCosLat
    DOUBLE y
    DOUBLE x
    DOUBLE fAzimutRad
    DOUBLE fAzimutDeg

    // 1. Den v roce
    nDenVRoce = nDen
    IF (nMesic > 1)  nDenVRoce = nDenVRoce + 31
    IF (nMesic > 2)  nDenVRoce = nDenVRoce + 28
    IF (nMesic > 3)  nDenVRoce = nDenVRoce + 31
    IF (nMesic > 4)  nDenVRoce = nDenVRoce + 30
    IF (nMesic > 5)  nDenVRoce = nDenVRoce + 31
    IF (nMesic > 6)  nDenVRoce = nDenVRoce + 30
    IF (nMesic > 7)  nDenVRoce = nDenVRoce + 31
    IF (nMesic > 8)  nDenVRoce = nDenVRoce + 31
    IF (nMesic > 9)  nDenVRoce = nDenVRoce + 30
    IF (nMesic > 10) nDenVRoce = nDenVRoce + 31
    IF (nMesic > 11) nDenVRoce = nDenVRoce + 30

    // 2. Letní cas
    nLetniCas = 0
    IF (nMesic > 3 AND nMesic < 10)    nLetniCas = 1
    IF (nMesic == 3 AND nDen >= 25)    nLetniCas = 1
    IF (nMesic == 10 AND nDen < 25)    nLetniCas = 1

    // 3. UTC cas - odecteme casovou zónu (CET=1, CEST=2)
    fHodinaUTC = TYPE_CAST(nHodina - 1 - nLetniCas) + (TYPE_CAST(nMinuta) / 60.0)

    // 4. Frakcní rok v radiánech
    fGamma = 0.0172142063 * (TYPE_CAST(nDenVRoce) - 1.0 + (fHodinaUTC - 12.0) / 24.0)

    // 5. Rovnice casu
    fEqTime = 229.18 * (0.000075
              + 0.001868 * fnCos(fGamma)
              - 0.032077 * fnSin(fGamma)
              - 0.014615 * fnCos(2.0 * fGamma)
              - 0.040849 * fnSin(2.0 * fGamma))

    // 6. Deklinace slunce
    fDecl = 0.006918
            - 0.399912 * fnCos(fGamma)
            + 0.070257 * fnSin(fGamma)
            - 0.006758 * fnCos(2.0 * fGamma)
            + 0.000907 * fnSin(2.0 * fGamma)
            - 0.002697 * fnCos(3.0 * fGamma)
            + 0.001480 * fnSin(3.0 * fGamma)

    // 7. Pravý slunecní cas a hodinový úhel
    // LONGITUDE 14.363810 dosazeno jako literál - vyhýbáme se bug s DOUBLE*DOUBLE
    fTrueSolarTime = (fHodinaUTC * 60.0) + fEqTime + (4.0 * 14.363810)
    fHourAngle     = ((fTrueSolarTime / 4.0) - 180.0) * 0.0174532925

    // 8. Zemepisná šírka v radiánech
    // LATITUDE 49.996497 * DEG_TO_RAD = 0.872664 - dosazeno jako literál
    fLatRad  = 0.872664
    fSinLat  = fnSin(fLatRad)
    fCosLat  = fnCos(fLatRad)
    fSinHA   = fnSin(fHourAngle)
    fCosHA   = fnCos(fHourAngle)
    fSinDecl = fnSin(fDecl)
    fCosDecl = fnCos(fDecl)

    // 9. Výpocet azimutu (Opravené znamienka pre osi X a Y)
    y = fSinHA * fCosDecl
    x = (fCosHA * fSinLat * fCosDecl) - (fSinDecl * fCosLat)

    fAzimutRad = fnAtan2(y, x)
    fAzimutDeg = fAzimutRad * 57.295779513

    // Posun o 180 stupnov na kompasový sever = 0°
    fAzimutDeg = fAzimutDeg + 180.0
    
    WHILE (fAzimutDeg >= 360.0) { fAzimutDeg = fAzimutDeg - 360.0 }
    WHILE (fAzimutDeg < 0.0)    { fAzimutDeg = fAzimutDeg + 360.0 }

    RETURN fAzimutDeg
}

// --- ZÍSKÁNÍ AKTUÁLNÍHO AZIMUTU ---

DEFINE_FUNCTION DOUBLE fnAktualniAzimut()
{
    INTEGER nDen
    INTEGER nMesic
    INTEGER nHodina
    INTEGER nMinuta
    nMesic  = TYPE_CAST(ATOI(MID_STRING(DATE, 1, 2)))
    nDen    = TYPE_CAST(ATOI(MID_STRING(DATE, 4, 2)))
    nHodina = TYPE_CAST(TIME_TO_HOUR(TIME))
    nMinuta = TYPE_CAST(TIME_TO_MINUTE(TIME))
    RETURN fnSpocitejAzimutSlunce(nDen, nMesic, nHodina, nMinuta)
}

// --- DIAGNOSTICKÁ FUNKCE PRO ODHALENÍ CHYBY CASU ---
// Zavolej tuto funkci (napr. pres nejaké tlacítko na panelu, nebo zkus na chvíli vložit CALL 'DEBUG_CASU_A_SLUNCE' do DEFINE_START)
DEFINE_CALL 'DEBUG_CASU_A_SLUNCE'	// POSLE VYPIS AKTUALNIHO CASU A AZIMUTU
{
    INTEGER nDen; INTEGER nMesic; INTEGER nHodina; INTEGER nMinuta;
    INTEGER nLetniCas; INTEGER nDenVRoce;
    DOUBLE fHodinaUTC; DOUBLE fGamma; DOUBLE fTestAzimut;

    nMesic  = TYPE_CAST(ATOI(MID_STRING(DATE, 1, 2)))
    nDen    = TYPE_CAST(ATOI(MID_STRING(DATE, 4, 2)))
    nHodina = TYPE_CAST(TIME_TO_HOUR(TIME))
    nMinuta = TYPE_CAST(TIME_TO_MINUTE(TIME))

    // Letní cas
    nLetniCas = 0
    IF (nMesic > 3 AND nMesic < 10) nLetniCas = 1
    IF (nMesic == 3 AND nDen >= 25)  nLetniCas = 1
    IF (nMesic == 10 AND nDen < 25)  nLetniCas = 1

    // fHodinaUTC - explicitne pres DOUBLE aby nedošlo k INTEGER delení
    fHodinaUTC = TYPE_CAST(nHodina - 1 - nLetniCas) + (TYPE_CAST(nMinuta) / 60.0)

    // Den v roce
    nDenVRoce = nDen
    IF(nMesic > 1)  nDenVRoce = nDenVRoce + 31
    IF(nMesic > 2)  nDenVRoce = nDenVRoce + 28
    IF(nMesic > 3)  nDenVRoce = nDenVRoce + 31
    IF(nMesic > 4)  nDenVRoce = nDenVRoce + 30
    IF(nMesic > 5)  nDenVRoce = nDenVRoce + 31
    IF(nMesic > 6)  nDenVRoce = nDenVRoce + 30
    IF(nMesic > 7)  nDenVRoce = nDenVRoce + 31
    IF(nMesic > 8)  nDenVRoce = nDenVRoce + 31
    IF(nMesic > 9)  nDenVRoce = nDenVRoce + 30
    IF(nMesic > 10) nDenVRoce = nDenVRoce + 31
    IF(nMesic > 11) nDenVRoce = nDenVRoce + 30

    fGamma = 0.0172142063 * (TYPE_CAST(nDenVRoce) - 1.0 + (fHodinaUTC - 12.0)/24.0)

    fTestAzimut = fnSpocitejAzimutSlunce(nDen, nMesic, nHodina, nMinuta)

    SEND_STRING 0, "'==== ASTRO DIAGNOSTIKA ===='"
    SEND_STRING 0, "'DATE: ', DATE, '  TIME: ', TIME"
    SEND_STRING 0, "'Mesic=',ITOA(nMesic),' Den=',ITOA(nDen),' Hod=',ITOA(nHodina),' Min=',ITOA(nMinuta),' LetniCas=',ITOA(nLetniCas)"
    SEND_STRING 0, "'nDenVRoce=',ITOA(nDenVRoce)"
    SEND_STRING 0, "'fHodinaUTC=',FTOA(fHodinaUTC)"
    SEND_STRING 0, "'fGamma=',FTOA(fGamma)"
    SEND_STRING 0, "'AZIMUT=',FTOA(fTestAzimut)"
    SEND_STRING 0, "'============================'"
}

DEFINE_CALL 'THERM_BUFFER_PROCESS'
{
  IF (LENGTH_STRING(THERM_BUFFER) > 1)
	   {
	   THERM_TEMP = REMOVE_STRING(THERM_BUFFER,"$0D",1)
	   IF (LENGTH_STRING(THERM_TEMP)) 			// JE TAM ALESPON JEDNA CELA ZPRAVA, ZPRACUJU
		//SEND_STRING 0,"'TH TEMP: ',THERM_TEMP"   /// JENOM PRO TESTY
		// Zprava String From [5001:5:1]-[.23 09:02:12;032.3;021.6;011.8;!!!;???;???.?;0;01.4;02;1F$03$0D$0A]
		  {
		  IF (FIND_STRING(THERM_TEMP,"'*B10'",1))
			 {
			 REMOVE_STRING(THERM_TEMP,"'*B10'",1) // ODSTRANIM VSE DO PRIZNAKU ZACATKU ZPRAVY VCETNE
			 IF (FIND_STRING(THERM_TEMP,"$0D",1)) // MAME I KONEC ZPRAVY?
				{
				TH_MAM = REMOVE_STRING(THERM_TEMP,"$0D",1) // VYTAHNU VSE DO KONCE ZPRAVY
				SET_LENGTH_STRING(TH_MAM,(LENGTH_STRING(TH_MAM)-1)) // ODSTRANIM KONEC ZPRAVY
				//SEND_STRING 0,"'TH MAM: <',TH_MAM,'>'"   /// JENOM PRO TESTY
				CALL 'ZOBRAZ TEPLOTU' (TH_MAM)
				}
			 }
		  }
		IF (LENGTH_STRING(THERM_BUFFER) >= (MAX_LENGTH_STRING(THERM_BUFFER)-20)) // MAME NESMYSLY V BUFFERU, TAK HO VYCISTIM
			CLEAR_BUFFER THERM_BUFFER
	 }
}
			 
DEFINE_CALL 'ZOBRAZ TEPLOTU' (CHAR TH_MAM[]) // ZOBRAZENI NA DISPLAY
{
LOCAL_VAR CHAR tTEPLOTA[8]
LOCAL_VAR CHAR sTEPLOTA[8]
LOCAL_VAR INTEGER iTEPLOTA
//tTEPLOTA = "TH_MAM[1],TH_MAM[3],TH_MAM[4],TH_MAM[5],TH_MAM[6]"
sTEPLOTA = FORMAT('%+.1f',ATOF(TH_MAM))
//SEND_STRING 0,"'TEPLOTA: ',tTEPLOTA"   /// JENOM PRO TESTY
SEND_COMMAND dvMyTP_01,"'^TXT-200,0,',sTEPLOTA"
tTEPLOTA = FORMAT('%.1f',ATOF(TH_MAM)) // S UVODNIM ZNAMENKEM +- VZDY
iTEPLOTA= ATOI(tTEPLOTA)
//SEND_STRING 0,"'tTEPLOTA: ',tTEPLOTA"   /// JENOM PRO TESTY

// OD 23.3.2020 RESENO DOTAZEM NA VENKOVNI TEPLOTU PRIMO DO SYSTEMU TOPENI (MICROPEL)
//SEND_COMMAND dvMyTP_01,"'^TXT-300,0,',tTEPLOTA" // PRO OVLADANI TOPENI/KLIMATIZACE // DO 23.3.2020

//SEND_STRING 0,"'iTEPLOTA: ',iTEPLOTA"   /// JENOM PRO TESTY
IF (iTEPLOTA<17)
	{
	//SEND_STRING 0,"'TEPLOTA JE MENSI NEZ 17'"
	TEPLOTA_ZALUZ=0	
	}
ELSE
	{
	TEPLOTA_ZALUZ=1
	}
}

DEFINE_CALL 'METEO_BUFFER_PROCESS'
{
  IF (LENGTH_STRING(METEO_BUFFER) > 1)
	   {
	   METEO_TEMP = REMOVE_STRING(METEO_BUFFER,"$0A",1)
	   IF (LENGTH_STRING(METEO_TEMP)) 			// JE TAM ALESPON JEDNA CELA ZPRAVA, ZPRACUJU
		//SEND_STRING 0,"'TH TEMP: ',METEO_TEMP"   /// JENOM PRO TESTY
		  {
		  IF (FIND_STRING(METEO_TEMP,"'.'",1))
			 {
			 REMOVE_STRING(METEO_TEMP,"'.'",1) // ODSTRANIM VSE DO PRIZNAKU ZACATKU ZPRAVY VCETNE
			 IF (FIND_STRING(METEO_TEMP,"$0A",1)) // MAME I KONEC ZPRAVY?
				{
				METEO_MAM = REMOVE_STRING(METEO_TEMP,"$0A",1) // VYTAHNU VSE DO KONCE ZPRAVY
				SET_LENGTH_STRING(METEO_MAM,(LENGTH_STRING(METEO_MAM)-1)) // ODSTRANIM KONEC ZPRAVY
				//SEND_STRING 0,"'METEO MAM: <',METEO_MAM,'>'"   /// JENOM PRO TESTY
				CALL 'ZPRACUJ_DATA' (METEO_MAM)
				}
			 }
		  }
		IF (LENGTH_STRING(METEO_BUFFER) >= (MAX_LENGTH_STRING(METEO_BUFFER)-20)) // MAME NESMYSLY V BUFFERU, TAK HO VYCISTIM
			CLEAR_BUFFER METEO_BUFFER
	 }
}
DEFINE_CALL 'ZPRACUJ_DATA' (CHAR METEO_MAM[])							// 
{
	 LOCAL_VAR CHAR svVYCHOD[5] 
	 LOCAL_VAR CHAR svJIH[5] 
	 LOCAL_VAR CHAR svZAPAD[5] 
	 LOCAL_VAR CHAR svCELKEM[3] 
	 LOCAL_VAR CHAR spVITR[4]
	 LOCAL_VAR CHAR smVITR[3]
	 //SEND_STRING 0,"'METEO:',METEO_MAM"   /// JENOM PRO TESTY
	 svCELKEM = "METEO_MAM[31],METEO_MAM[32],METEO_MAM[33]"
	 CALL 'UKAZ_STAV'
	 IF (svCELKEM='!!!')
		{
		CALL 'PRICTI_SVETLO'
		CALL 'DENNI_REZIM'  // 
		DEN_NOC = 1 // DEN=1
		GLOBAL_JE_TMA = FALSE  // 
		}
	 ELSE
		  {
		  CALL 'NOCNI_REZIM'
		  DEN_NOC = 0
		  GLOBAL_JE_TMA = TRUE
		  SEND_COMMAND dvMyTP_01,"'^UNI-190,0,0054004D0041'"
		  SEND_COMMAND dvMyTP_01,"'^TXT-191,0,0'"
		  SEND_COMMAND dvMyTP_01,"'^TXT-192,0,0'"
		  SEND_COMMAND dvMyTP_01,"'^TXT-193,0,0'"
		  }
	 svVYCHOD = "METEO_MAM[13],METEO_MAM[14],METEO_MAM[15],METEO_MAM[16],METEO_MAM[17]"
	 //SEND_STRING 0,"'Hodnota svVYCHOD: ',svVYCHOD,' LX'"  /// JENOM PRO TESTY
	 JAS_VYCHOD =ATOF(svVYCHOD)	 
	 svJIH = "METEO_MAM[19],METEO_MAM[20],METEO_MAM[21],METEO_MAM[22],METEO_MAM[23]"
	 //SEND_STRING 0,"'Hodnota svJIH: ',svJIH,' LX'"   /// JENOM PRO TESTY
	 JAS_JIH =ATOF(svJIH)
	 svZAPAD = "METEO_MAM[25],METEO_MAM[26],METEO_MAM[27],METEO_MAM[28],METEO_MAM[29]"
	 //SEND_STRING 0,"'Hodnota svZAPAD: ',svZAPAD,' LX'"   /// JENOM PRO TESTY
	 JAS_ZAPAD =ATOF(svZAPAD)
	 spVITR = "METEO_MAM[47],METEO_MAM[48],METEO_MAM[49],METEO_MAM[50]"
	 smVITR = "METEO_MAM[48],METEO_MAM[49],METEO_MAM[50]"
	 WIND_WARNING = ATOI(spVITR)
	 spDEST = "METEO_MAM[45]"
	 //SEND_STRING 0,"'spVITR: ',spVITR,' M/S'"   /// JENOM PRO TESTY
	 //SEND_STRING 0,"'VITR: ',ITOA(WIND_WARNING),' M/S'"   /// JENOM PRO TESTY
	 IF (WIND_WARNING > WIND_MAX)
		{
		WIND_MAX=WIND_WARNING
		}
	 SEND_COMMAND dvMyTP_01,"'^TXT-209,0,',FTOA(WIND_MAX),' M/S'"
	 IF (WIND_WARNING > 8)		/// Abnormalne silny vitr - reaguje hned
		  {
		   SEND_COMMAND dvMyTP_01,"'^TXT-210,0,',spVITR,' M/S'"
			SEND_STRING 0,"'SILNY VITR'"
			CALL 'ZALUZIE_RESET'
			WAIT 5
			CALL 'ZaluzieALL_Nahoru'
			SEND_STRING 0,"'STAV ZALUZII NASTAVEN NA DEN '"
			ZALUZIE_STAV=1
		  }
	 ELSE IF (WIND_WARNING > 5)	/// Silny vitr - reaguje pres citac
		  {
		 SEND_COMMAND dvMyTP_01,"'^TXT-210,0,',smVITR,' M/S'"
		  CALL 'PRICTI_VITR'
		  }
	 ELSE
		  {
		  SEND_COMMAND dvMyTP_01,"'^TXT-210,0,',smVITR,' M/S'"
		  CALL 'ODECTI_VITR'
		  }
	WAIT 10
	CALL 'ZPRACUJ DEST'
}

DEFINE_CALL 'ZPRACUJ DEST'
{
	LOCAL_VAR INTEGER iDEST
	iDEST= ATOI(spDEST)
	IF (iDEST=0)		/// Neprsi
	  {
	  //SEND_STRING 0,"'spDEST: ',spDEST"   /// JENOM PRO TESTY
	  PRSI=0
	  OFF[dvMyTP_03,6]
	  }
	ELSE IF (iDEST=1)
	 {
	  //SEND_STRING 0,"'spDEST: ',spDEST"   /// JENOM PRO TESTY
	  PRSI=1
	  ON[dvMyTP_03,6]
	  //CALL 'ILIGHT_CHANNEL_ON' (PO_1PP_RELAX_01)
	  //WAIT 600
	  //CALL 'ILIGHT_CHANNEL_OFF' (PO_1PP_RELAX_01)
	  }
	ELSE
	{
		SEND_STRING 0,"'spDEST ERROR: ',spDEST"   /// JENOM PRO TESTY
		SEND_STRING 0,"'METEO MAM: ',METEO_MAM"   /// JENOM PRO TESTY
	}
}		
DEFINE_CALL 'PRICTI_SVETLO'  // V lete bylo >33, mozna budu muset menit podle obdobi?
{
	IF (JAS_VYCHOD>30)
			{
			//SEND_STRING 0,"ITOA(JAS_VYCHOD),' VYCHOD CITAC++'"   /// JENOM PRO TESTY
			SEND_COMMAND dvMyTP_01,"'^TXT-191,0,',ITOA(JAS_VYCHOD)"
			ZAL_VYCHOD_CITAC++
			CALL 'SLUNCE_VYCHOD_DOLU'
			}
		ELSE
			{
			//SEND_STRING 0,"ITOA(JAS_VYCHOD),' VYCHOD CITAC--'"   /// JENOM PRO TESTY
			SEND_COMMAND dvMyTP_01,"'^TXT-191,0,',ITOA(JAS_VYCHOD)"
			ZAL_VYCHOD_CITAC--
			CALL 'SLUNCE_VYCHOD_NAHORU'
			}
			
	IF (JAS_JIH>29)
			{
			//SEND_STRING 0,"ITOA(JAS_JIH),' JIH CITAC++'"   /// JENOM PRO TESTY
			SEND_COMMAND dvMyTP_01,"'^TXT-192,0,',ITOA(JAS_JIH)"
			ZAL_JIH_CITAC++
			CALL 'SLUNCE_JIH_DOLU'
			}
	ELSE
		  {
		 //SEND_STRING 0,"ITOA(JAS_JIH),' JIH CITAC--'"   /// JENOM PRO TESTY
		 SEND_COMMAND dvMyTP_01,"'^TXT-192,0,',ITOA(JAS_JIH)"
		 ZAL_JIH_CITAC--
		 CALL 'SLUNCE_JIH_NAHORU'
		  }
		  
	IF (JAS_ZAPAD>30)
		{
		//SEND_STRING 0,"ITOA(JAS_ZAPAD),' ZAPAD CITAC++'"   /// JENOM PRO TESTY
		SEND_COMMAND dvMyTP_01,"'^TXT-193,0,',ITOA(JAS_ZAPAD)"
		ZAL_ZAPAD_CITAC++
		CALL 'SLUNCE_ZAPAD_DOLU'
		}
	ELSE
		{
		//SEND_STRING 0,"ITOA(JAS_ZAPAD),' ZAPAD CITAC--'"   /// JENOM PRO TESTY
		SEND_COMMAND dvMyTP_01,"'^TXT-193,0,',ITOA(JAS_ZAPAD)"
		ZAL_ZAPAD_CITAC--
		CALL 'SLUNCE_ZAPAD_NAHORU'
		}
CALL 'URCI_SVETLO'
}

(*
DEFINE_CALL 'URCI_SVETLO'  // STARA VERZE PODLE CIDEL, NAHRAZENO VYPOCTEM 
{
	IF ((JAS_VYCHOD>JAS_ZAPAD)&(JAS_VYCHOD>JAS_JIH))
		{
		SEND_COMMAND dvMyTP_01,"'^UNI-190,0,00530076011B0074006C006F0020007600FD00630068006F0064'"
		//SEND_STRING 0,"'SVETLO VYCHOD'"
		}
	ELSE IF ((JAS_JIH>JAS_ZAPAD)&(JAS_JIH>JAS_VYCHOD))
		{
		SEND_COMMAND dvMyTP_01,"'^UNI-190,0,00530076011B0074006C006F0020006A00690068'"
		//SEND_STRING 0,"'SVETLO JIH'"
		}
	ELSE IF ((JAS_ZAPAD>JAS_VYCHOD)&(JAS_ZAPAD>JAS_JIH))
		{
		SEND_COMMAND dvMyTP_01,"'^UNI-190,0,00530076011B0074006C006F0020007A00E1007000610064'"
		//SEND_STRING 0,"'SVETLO ZAPAD'"
		}
	ELSE
		{
		SEND_COMMAND dvMyTP_01,"'^UNI-190,0,00530076011B0074006C006F'"
		}
}
*)
DEFINE_CALL 'URCI_SVETLO'  // Tato verze vychazi z vypocitane polohy - melo by to byt vyrazne presnejsi
{
    LOCAL_VAR DOUBLE fAzimut
    LOCAL_VAR FLOAT fJasCelkem

    fAzimut = fnAktualniAzimut()
    fJasCelkem = JAS_VYCHOD + JAS_JIH + JAS_ZAPAD

    IF (fJasCelkem >= 15.0)
		{
        IF (fAzimut >= 337.5 OR fAzimut < 22.5)
            SEND_COMMAND dvMyTP_01,"'^UNI-190,0,00530076011B0074006C006F002000730065007600650072'"
            // Svetlo sever

        ELSE IF (fAzimut >= 22.5 AND fAzimut < 67.5)
            SEND_COMMAND dvMyTP_01,"'^UNI-190,0,00530076011B0074006C006F002000730065007600650072006F002D007600FD00630068006F0064'"
            // Svetlo severo-východ

        ELSE IF (fAzimut >= 67.5 AND fAzimut < 112.5)
            SEND_COMMAND dvMyTP_01,"'^UNI-190,0,00530076011B0074006C006F0020007600FD00630068006F0064'"
            // Svetlo východ

        ELSE IF (fAzimut >= 112.5 AND fAzimut < 157.5)
            SEND_COMMAND dvMyTP_01,"'^UNI-190,0,00530076011B0074006C006F0020006A00690068006F002D007600FD00630068006F0064'"
            // Svetlo jiho-východ

        ELSE IF (fAzimut >= 157.5 AND fAzimut < 202.5)
            SEND_COMMAND dvMyTP_01,"'^UNI-190,0,00530076011B0074006C006F0020006A00690068'"
            // Svetlo jih

        ELSE IF (fAzimut >= 202.5 AND fAzimut < 247.5)
            SEND_COMMAND dvMyTP_01,"'^UNI-190,0,00530076011B0074006C006F0020006A00690068006F002D007A00E1007000610064'"
            // Svetlo jiho-západ

        ELSE IF (fAzimut >= 247.5 AND fAzimut < 292.5)
            SEND_COMMAND dvMyTP_01,"'^UNI-190,0,00530076011B0074006C006F0020007A00E1007000610064'"
            // Svetlo západ

        ELSE
            SEND_COMMAND dvMyTP_01,"'^UNI-190,0,00530076011B0074006C006F002000730065007600650072006F002D007A00E1007000610064'"
            // Svetlo severo-západ
		}
    ELSE
		{
			SEND_COMMAND dvMyTP_01,"'^UNI-190,0,005A006100740061017E0065006E006F'"
			// Zataženo
		}
}

DEFINE_CALL 'SLUNCE_JIH_DOLU'		///
{
IF (ZAL_JIH_CITAC<2)
	{
	ZAL_JIH_CITAC=1
	}
IF (ZAL_JIH_CITAC>250)
	{
	ZAL_JIH_CITAC=250
	}

	IF (ZAL_JIH_CITAC>80) //SLUNCE Z JIHU
		{
		IF (ZALUZIE_STAV=1) //ZALUZIE VYTAZENE = DEN
			{
			IF (ZAL_JIH_STAV=0) //ZALUZIE JIH NEJSOU DOLE
				{
				IF (TEPLOTA_ZALUZ=1)  //VENKOVNI TEPLOTA JE VETSI NEZ 12
					{
					SEND_STRING 0,"'ZALUZIE JIH DOLU'"   /// JENOM PRO TESTY
					CALL 'ZaluzieCidlo_JihDW'
					ZAL_JIH_CITAC=300
					ZAL_JIH_STAV=1		// JSOU DOLE
					}
				}
			}
		}
}
DEFINE_CALL 'SLUNCE_JIH_NAHORU'		///
{
IF (ZAL_JIH_CITAC<2)
	{
	ZAL_JIH_CITAC=1
	}
IF (ZAL_JIH_CITAC>250)
	{
	ZAL_JIH_CITAC=250
	}
IF (ZAL_JIH_CITAC<10) //SLUNCE Z JIHU
	{
	IF (ZALUZIE_STAV=1) //ZALUZIE VYTAZENE = DEN
		{
		IF (ZAL_JIH_STAV=1) //ZALUZIE JIH JSOU DOLE
			{
			SEND_STRING 0,"'ZALUZIE JIH NAHORU'"   /// JENOM PRO TESTY
			CALL 'ZaluzieCidlo_JihUP'
			ZAL_JIH_STAV=0	//NAHORE
			}
		}
	}
}

DEFINE_CALL 'SLUNCE_VYCHOD_DOLU'		///
{
IF (ZAL_VYCHOD_CITAC<2)
	{
	ZAL_VYCHOD_CITAC=1
	}
IF (ZAL_VYCHOD_CITAC>250)
	{
	ZAL_VYCHOD_CITAC=250
	}
IF (ZAL_VYCHOD_CITAC>80) //SLUNCE Z VYCHODU
		{
		IF (ZALUZIE_STAV=1) //ZALUZIE VYTAZENE = DEN
			{
			IF (ZAL_VYCHOD_STAV=0) //ZALUZIE VYCHOD 0=NEJSOU DOLE
				{
				IF (TEPLOTA_ZALUZ=1)  //VENKOVNI TEPLOTA JE VETSI NEZ 12
					{
					SEND_STRING 0,"'ZALUZIE VYCHOD DOLU'"   /// JENOM PRO TESTY
					CALL 'ZaluzieCidlo_VychodDW'
					ZAL_VYCHOD_CITAC=250
					ZAL_VYCHOD_STAV=1	// JSOU DOLE
					}
				}
			}
		}
}
DEFINE_CALL 'SLUNCE_VYCHOD_NAHORU'		///
{
IF (ZAL_VYCHOD_CITAC<2)
	{
	ZAL_VYCHOD_CITAC=1
	}
IF (ZAL_VYCHOD_CITAC>250)
	{
	ZAL_VYCHOD_CITAC=250
	}
IF (ZAL_VYCHOD_CITAC<10) //SLUNCE Z VYCHODU
	{
	IF (ZALUZIE_STAV=1) //ZALUZIE VYTAZENE = DEN
		{
		IF (ZAL_VYCHOD_STAV=1) //ZALUZIE VYCHOD JSOU DOLE
			{
			SEND_STRING 0,"'ZALUZIE VYCHOD NAHORU'"   /// JENOM PRO TESTY
			CALL 'ZaluzieCidlo_VychodUP'
			ZAL_VYCHOD_STAV=0	// JSOU NAHORE
			}
		}
	}
}
DEFINE_CALL 'SLUNCE_ZAPAD_DOLU'		///
{
IF (ZAL_ZAPAD_CITAC<2)
	{
	ZAL_ZAPAD_CITAC=1
	}
IF (ZAL_ZAPAD_CITAC>250)
	{
	ZAL_ZAPAD_CITAC=250
	}
IF (ZAL_ZAPAD_CITAC>80) //SLUNCE Z ZAPADU
		{
		IF (ZALUZIE_STAV=1) //ZALUZIE VYTAZENE = DEN
			{
			IF (ZAL_ZAPAD_STAV=0) //ZALUZIE ZAPAD NEJSOU DOLE
				{
				IF (TEPLOTA_ZALUZ=1)  //VENKOVNI TEPLOTA JE VETSI NEZ 12
					{
					SEND_STRING 0,"'ZALUZIE ZAPAD DOLU'"   /// JENOM PRO TESTY
					CALL 'ZaluzieCidlo_ZapadDW'
					ZAL_ZAPAD_CITAC=300
					ZAL_ZAPAD_STAV=1
					}
				}
			}
		}
}
DEFINE_CALL 'SLUNCE_ZAPAD_NAHORU'		///
{
IF (ZAL_ZAPAD_CITAC<2)
	{
	ZAL_ZAPAD_CITAC=1
	}
IF (ZAL_ZAPAD_CITAC>250)
	{
	ZAL_ZAPAD_CITAC=250
	}
IF (ZAL_ZAPAD_CITAC<10) //SLUNCE Z ZAPADU
	{
	IF (ZALUZIE_STAV=1) //ZALUZIE VYTAZENE = DEN
		{
		IF (ZAL_ZAPAD_STAV=1) //ZALUZIE ZAPAD JSOU DOLE
			{
			SEND_STRING 0,"'ZALUZIE ZAPAD NAHORU'"   /// JENOM PRO TESTY
			CALL 'ZaluzieCidlo_ZapadUP'
			ZAL_ZAPAD_STAV=0
			}
		}
	}
}
DEFINE_CALL 'PRICTI_VITR'						
{
WIND_CITAC++
IF (WIND_CITAC > 2)
	 {
	 SEND_STRING 0,"'VYTAHNOUT ZALUZIE'"
	 CALL 'ZALUZIE_RESET'
	 WAIT 5
	 CALL 'ZaluzieALL_Nahoru'
	 WIND_CITAC=5
	 }
ELSE
	 {
	 SEND_STRING 0,"'VITR CITAC+ ',ITOA(WIND_CITAC),' +'"
	 }

}

DEFINE_CALL 'ODECTI_VITR'						
{
WIND_CITAC--
IF (WIND_CITAC < 1)
	 {
	 WIND_CITAC=1 
	 }
IF (WIND_CITAC > 1)
	 {
	 SEND_STRING 0,"'VITR CITAC- ',WIND_CITAC,' -'"
	 }
}

DEFINE_CALL 'NOCNI_REZIM'		///Zaluzie + cidla POSILAM POUZE 3X PAK UZ NE
{
IF (MANUAL_NOC = 0)
	{
	
	IF (ZALUZIE_NOC = 1)	//OD KDY MOHOU ZACIT SJIZDET - CAS NASTAVENY V DEFINE PROGRAM - V HLAVNIM PROGRAMU
		{
		NOC_STAV++
		}
	IF (NOC_STAV > 5)
		{
		IF (NOC_STAV>9)
			{
			NOC_STAV=9
			}
		IF(NOC_STAV < 9)
		 {
			CALL 'ILIGHT_SEQ_START' (SEQ_CIDLO_NOC,1) // PREPNUTI CIDLA POHYBU NA BARAKU NA NOC
			//SEND_STRING 0,"'NOCNI REZIM'"   /// JENOM PRO TESTY
			CALL 'BUDHA_VSTUP_AUTOMAT'	
			IF ((!ZALUZIE_STAV=0)&&(!ZALUZIE_STAV=1))	//SROVNAT STAV PRO PRIPAD NESMYSLNE HODNOTY
				{
				SEND_STRING 0,"'STAV ZALUZII NASTAVEN NA DEN '"
				ZALUZIE_STAV=1
				}
			IF (ZALUZIE_STAV=1)		/// ZALUZIE JSOU VYTAZENE A TAK SJEDOU DOLU 
				{
				CALL 'Soumrak_Zaluzie'
				ZALUZIE_STAV=0
				ZAL_VYCHOD_STAV=1
				ZAL_JIH_STAV=1
				ZAL_ZAPAD_STAV=1
				CALL 'ILIGHT_SCENA2' (3,52,3)		///scena - area - fade
				//CALL 'ILIGHT_CHANNEL_VALUE' (SV_2NP_FASA_OBRAZ_02,60,0)
				
				//SEND_STRING 0,"'NOCNI REZIM ZALUZIE '"
				}
			IF (DEN_ZAPNUT=1)  // OPRAVOVALO CHYBY PRO DP A LOZNICI SNAD JIZ  NEBUDE POTREBA
				{
				//WAIT 8500
					//{
					//CALL 'POWER_OFF_2NP_DET_POKOJ'
					//WAIT 9000
						//{
						//CALL 'SEKVENCE_2NP_LOZNICE_SVETLA_ZHASNOUT'
						//}
					//}
				}
			ELSE
				{
				CALL 'VECER_ZAPNI'
				}
			}
		 }
	}
}
DEFINE_CALL 'NOCNI_REZIM_PANEL'		/// PRO TEST CIDEL
{
	 {
		MANUAL_NOC = 1
		CALL 'ILIGHT_SEQ_START' (SEQ_CIDLO_NOC,1)
		SEND_STRING 0,"'NOCNI REZIM PANEL'"   /// JENOM PRO TESTY
		//CALL 'BUDHA_VSTUP_AUTOMAT'	
		IF ((!ZALUZIE_STAV=0)&&(!ZALUZIE_STAV=1))	//SROVNAT STAV PRO PRIPAD NESMYSLNE HODNOTY
				{
				SEND_STRING 0,"'STAV ZALUZII NASTAVEN NA DEN '"
				ZALUZIE_STAV=1
				}
			IF (ZALUZIE_STAV=1)
				{
				CALL 'Soumrak_Zaluzie'
				ZALUZIE_STAV=0
				ZAL_VYCHOD_STAV=1
				ZAL_JIH_STAV=1
				ZAL_ZAPAD_STAV=1
				SEND_COMMAND dvMyTP_01,"'^TXT-849,0,','TEST'"
				SEND_COMMAND dvMyTP_01,"'^TXT-850,0,','ZALUZIE SOUMRAK'"
				//SEND_STRING 0,"'NOCNI REZIM ZALUZIE '"
				DEN_ZAPNUT=0
				}
			//(*
			IF (DEN_ZAPNUT=1)
				{
				//CALL 'SEKVENCE_2NP_DETI_SVETLA_ZHASNOUT'
				//WAIT 20
				//CALL 'SEKVENCE_2NP_LOZNICE_SVETLA_ZHASNOUT'
				}
			ELSE
				{
				CALL 'VECER_ZAPNI'
				}
			//*)
	 }
}
DEFINE_CALL 'DENNI_REZIM_PANEL'		/// PREPNOUT NA DEN
{
	 MANUAL_NOC = 1
	 CALL 'ILIGHT_SEQ_START' (SEQ_CIDLO_DEN,7)
	 SEND_STRING 0,"'DENNI REZIM PANEL'"   /// JENOM PRO TESTY
	 SEND_COMMAND dvMyTP_01,"'^TXT-849,0,','TEST'"
	 SEND_COMMAND dvMyTP_01,"'^TXT-850,0,','ZALUZIE RANO'"
	 CALL 'Rano_Zaluzie'
	 // ZALUZIE_STAV=1 - TO MUSI NASTAVIT RANO ZALUZIE 
	 IF (DEN_ZAPNUT=0)
		{
		CALL 'POWER_OFF_0NP_ANG_DVORKY'
		wait 10
		CALL 'SEKVENCE_2NP_DETI_SVETLA_ZHASNOUT'
		DEN_ZAPNUT=1
		} 
}
DEFINE_CALL 'VRATIT_AUTOMAT_PANEL'		/// PREPNOUT NA AUTOMAT, ABY PO TESTECH NEZUSTALO VYSET
{
MANUAL_NOC = 0
ON [dvMyTP_01,2382]
OFF [dvMyTP_01,2381]
OFF [dvMyTP_01,2380]
}

DEFINE_CALL 'UKAZ_STAV'			// ZALUZIE - ZVYRAZNI HODNOTY U SJETYCH ZALUZII
{
	IF (ZAL_VYCHOD_STAV=1)
		{
		ON [dvMyTP_03,1]
		}
	ELSE
		{
		OFF [dvMyTP_03,1]
		}
	IF (ZAL_JIH_STAV=1)
		{
		ON [dvMyTP_03,2]
		}
	ELSE
		{
		OFF [dvMyTP_03,2]
		}
	IF (ZAL_ZAPAD_STAV=1)
		{
		ON [dvMyTP_03,3]
		}
	ELSE
		{
		OFF [dvMyTP_03,3]
		}
	IF (MANUAL_NOC=0)
		{
		ON [dvMyTP_01,2382]
		}
}

DEFINE_CALL 'ZALUZIE_RANO'			// NASTAV HODNOTY A POSLI PRIKAZ
    {
 IF (ZALUZIE_STAV=0)	// ZALUZIE JSOU STAZENE
		{
		IF (DEN_V_TYDNU<6)	// PRACOVNI DNY
			{
			CALL 'Rano_Zaluzie'
			// ZALUZIE_STAV=1		// ZALUZIE JSOU VYTAZENE  - TO MUSI NASTAVIT RANO ZALUZIE
			ZAL_VYCHOD_STAV=0
			ZAL_JIH_STAV=0
			ZAL_ZAPAD_STAV=0
			}
		ELSE
			{
			CALL 'Rano_Vikend_Zaluzie'
			// ZALUZIE_STAV=1	//  ZALUZIE JSOU VYTAZENE  - TO MUSI NASTAVIT RANO ZALUZIE
			ZAL_VYCHOD_STAV=0
			ZAL_JIH_STAV=0
			ZAL_ZAPAD_STAV=0
			}
		}
    }

DEFINE_CALL 'DENNI_REZIM'		/// POSILAM KAZDOU 6 ZPRAVU = CCA 60SEKUND
{
IF (MANUAL_NOC = 0)	// MANUALNI OVLADANI NA TABLETU
    {
	CALL 'ILIGHT_SEQ_START' (SEQ_CIDLO_DEN,7)	// PREPNU CIDLA NA BARAKU NA DEN (NESVITI]
    IF (ZALUZIE_DEN = 1)
	{
	DEN_STAV++
	}
IF (DEN_STAV = 18)	//ASI TAKE UPRAVIT NA CCA 3 X A DOST
	 {
	 //SEND_STRING 0,"'DENNI REZIM'"   /// JENOM PRO TESTY
	 DEN_STAV=0
	 NOC_STAV=0
	 IF (DEN_ZAPNUT=0)  // JEDNORAZOVE VYPNUTI RANO ASI VYHODIT
		{
		CALL 'POWER_OFF_0NP_ANG_DVORKY'
		wait 10
		CALL 'SEKVENCE_2NP_DETI_SVETLA_ZHASNOUT'
		DEN_ZAPNUT=1
		}
	 CALL 'BUDHA_VSTUP_AUTOMAT'
	 IF ((!ZALUZIE_STAV=0)&&(!ZALUZIE_STAV=1))	// Zaluzie jsou v neznamem stavu TAK srovnam na noc
			{
			SEND_STRING 0,"'STAV ZALUZII NASTAVEN NA NOC '"
			ZALUZIE_STAV=0
			}
	CALL 'ZALUZIE_RANO'
	 }
ELSE IF (DEN_STAV > 18)
	 {
	 DEN_STAV=0
	 }
    }
}

DEFINE_CALL 'BUDHA_VSTUP_AUTOMAT'	
{
IF (BUDHA_AUTOMAT = TRUE)
	{
	IF (DEN_NOC = 1)	//DEN
		{
		CALL 'BUDHA_VSTUP_DEN'
		CALL 'ILIGHT_CHANNEL_VALUE' (SV_1PP_CHODBA_03,00,10)
		WAIT 20
		CALL 'ILIGHT_CHANNEL_VALUE' (SV_1PP_SCHOZK_02,00,00)
		}
	ELSE
		{
		CALL 'BUDHA_VSTUP_NOC'
		CALL 'ILIGHT_CHANNEL_VALUE' (SV_1PP_CHODBA_03,60,10)
		WAIT 20
		CALL 'ILIGHT_CHANNEL_VALUE' (SV_1PP_SCHOZK_02,40,00)
		}
	}
}
DEFINE_CALL 'Synchro_CAS'
{
	SEND_STRING dvMeteo,"'00GT1',$0D"
	WAIT 150
		{
		SEND_STRING dvMeteo,"'00GT0',$0D"
		}
}


DEFINE_START

//CREATE_BUFFER dvTeplomer, THERM_BUFFER[255]
//CREATE_BUFFER dvMeteo, METEO_BUFFER[255]


DEFINE_EVENT

TIMELINE_EVENT[TL_THERM]    // EVENTS FOR TIMELINE
{
  
  SWITCH(Timeline.Sequence)
  {
    case 1:{          // First Event
               
              //SEND_STRING 0,'FIRST EVENT'
				  SEND_STRING dvMeteo,"'00TR1',$0D"
           }
           
    case 2:{          // Second Event
               
              SEND_STRING dvTeplomer,"'*B1TR',$0D"
				  
           }
           
    case 3:{          // Third Event
              //SEND_STRING 0,'THIRD EVENT'
				SEND_STRING dvMeteo,"'00TR1',$0D"
				}
           
    case 4:{          // Forth Event
              //SEND_STRING 0,'FORTH EVENT'
				CALL 'ZOBRAZ TEPLOTU' (TH_MAM)
           }
                                           
    case 5:{          // Fifth Elememt
              //SEND_STRING 0,'FIFTH ELEMENT' 
				SEND_STRING dvMeteo,"'00TR1',$0D"
		  }
           
    case 6:{          // 6th Event
              //SEND_STRING 0,'SIXTH EVENT'
				 SEND_STRING dvTeplomer,"'*B1TR',$0D"
           }        
                                                                                                                                         
    case 7:{          // 7th Event
            //SEND_STRING 0,'SEVENTH EVENT'
				SEND_STRING dvMeteo,"'00TR1',$0D"
           } 
           
    case 8:{          // 8th Event
              //SEND_STRING 0,'EIGHTH EVENT'
				  SEND_STRING dvTeplomer,"'*B1TR',$0D"
           }        
                             

  }
}

DATA_EVENT[dvTeplomer]
{
  ONLINE: 
	{
	  SEND_COMMAND dvTeplomer,"'SET BAUD 9600,N,8,1 485 ENABLE'"
	  	THERM_BUFFER = "" // Vynulovani	  
		WAIT 30
		TIMELINE_CREATE(TL_THERM,TEPLOMER_CAS,8,TIMELINE_RELATIVE,TIMELINE_REPEAT)  
	  
	}
	STRING: 
	{
	 THERM_BUFFER = "THERM_BUFFER,DATA.TEXT"
	 CALL 'THERM_BUFFER_PROCESS'
	}
}
	
DATA_EVENT[dvMeteo]
{
  ONLINE: 
	{
	 SEND_COMMAND dvMeteo,"'SET BAUD 9600,N,8,1 485 ENABLE'"
	 WAIT 10
	 SEND_STRING dvMeteo,"'00ST3',$0D"
	 WAIT 20
	 SEND_STRING dvMeteo,"'00TT0',$0D"
	 METEO_BUFFER = "" // Vynulovani
	 WAIT 98
	 CALL 'Synchro_CAS'
	 WAIT 310
	 CALL 'DEBUG_CASU_A_SLUNCE'
	}
	STRING: 
	{
	 METEO_BUFFER = "METEO_BUFFER,DATA.TEXT"
	 CALL 'METEO_BUFFER_PROCESS'
	}
}
DEFINE_PROGRAM


(***********************************************************)
(*                     END OF PROGRAM                      *)
(*        DO NOT PUT ANY CODE BELOW THIS COMMENT           *)
(***********************************************************)

