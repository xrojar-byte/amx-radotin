PROGRAM_NAME='ZAHRADNI_SVETLA'
/// v15 funkcní 
DEFINE_DEVICE
// dvIlight			 	= 5001:6:1			// Ilight COM6 definovan v master

(*
V modulu iLight.axi posilam hodnoty pro svetla takto:

DEFINE_CALL 'ILIGHT_CHANNEL_VALUE' (CHAR AREA_CHANNEL[2],CHAR VALUE, CHAR FADETIME) // value v procentech
{
  IF (VALUE>=100)
  CALL 'SEND_TO_ILIGHT' ("'SC',FORMAT('%02d',AREA_CHANNEL[2]),':A',FORMAT('%02d',AREA_CHANNEL[1]),':LFF:F',FORMAT('%02d',FADETIME)")
ELSE
  CALL 'SEND_TO_ILIGHT' ("'SC',FORMAT('%02d',AREA_CHANNEL[2]),':A',FORMAT('%02d',AREA_CHANNEL[1]),':L',FORMAT('%02d',VALUE),':F',FORMAT('%02d',FADETIME)")
}

*)
// ===============================================================
// KONSTANTY A DEFINICE
// ===============================================================
DEFINE_CONSTANT 
// ZAHRADA AREA - zmenit až bude pripojeno fyzicky
// Do té doby tolerovat zprávy z testovacích Area
ZAHRADA_AREA_OFFLINE = 0  // 0 = prijímat všechny (testování)
ZAHRADA_AREA_ONLINE = 85  // Presunout sem až bude zahrada pripojená

VOLATILE INTEGER ZAHRADA_AREA = ZAHRADA_AREA_OFFLINE  // Aktivní filtr

// Typy svetel
SVETLO_SPINANE = 1		 // <<< Bílá On/Off
SVETLO_STMIVANE = 2		 // <<< Bílá stmívané 
SVETLO_PETIBAREVNE = 3	 // <<< Barevné kostky
SVETLO_DVOUKANALOVE = 4  // <<< Studená + teplá bílá stmívané

// Stavy svetel
STAV_VYPNUTO = 0
STAV_SOUMRAK = 1
STAV_POHYB = 2
STAV_PARTY = 3

// Kanály pro 5barevná svetla
KANAL_CERVENA = 1
KANAL_ZELENA = 2
KANAL_MODRA = 3
KANAL_STUDENA = 4 
KANAL_TEPLA = 5

// Kanály pro dvojbarevná svetla
KANAL_STUDENA_BILA = 1
KANAL_TEPLA_BILA = 2

// Tablet porty
TP_PORT = 4 // Pouze pro info

// Maximum svetel
MAX_SVETEL = 73

// Timeline konstanty
TL_ZAHRADA = 24
LONG TL_ZAHRADA_TIMES[1] = {250}

TL_FADE_POLLING = 25  // ID pro zpetnovazební smycku


// Casování pro pohybovou logiku (v sekundách)
POHYB_TIMEOUT_SEKUNDY = 15 // PRO TESTY 15, PAK 60 = 1 minuta, po kterých svetlo zhasne po posledním pohybu

// Doba prechodu (Fade Time) v desetinách sekundy (0-FF)
FADE_TIME_SOUMRAK = 10 // 1.0 sekundy pro klidné prechody
FADE_TIME_POHYB = 2    // 0.2 sekundy pro rychlou reakci na pohyb
FADE_TIME_VYPNUTO = 5  // 0.5 sekundy pro zhasnutí

// Základní adresy pro dynamické rízení
ZAKLAD_TP_LEVEL_CODE = 10 // První Level Code pro svetlo 1, Kanál 1
ZAKLAD_TP_ADRESS_CODE = 270  // První Address Code (pro text) pro svetlo 1
TP_LEVEL_PORT = 4		// Pouze pro info je to automaticky prirazeno 
TP_ADRESS_PORT = 4		// Pouze pro info je to automaticky prirazeno


// ===============================================================
// DATOVÉ STRUKTURY - NetLinx syntaxe
// ===============================================================

DEFINE_TYPE

STRUCTURE SVETLO_DEFINICE {
    CHAR NAZEV[50]
    INTEGER TYP
    CHAR AREA_CHANNELS[5][2]  // Pro až 5 kanálu (R,G,B,CW,WW)
    INTEGER POCET_KANALU
	INTEGER ZACATECNI_TP_LEVEL_CODE // Napr. pro lávu 270, pro barev kostky 271
    INTEGER ZACATECNI_TP_ADDRESS_CODE // Ovladani zahrady je prirazeno na port 4 kde je volno
}

STRUCTURE SVETLO_STAV {
    INTEGER AKTIVNI_STAV        // STAV_VYPNUTO, STAV_SOUMRAK, STAV_POHYB, STAV_PARTY
    CHAR HODNOTY_SOUMRAK[5]     // Hodnoty pro soumrakový stav
    CHAR HODNOTY_POHYB[5]       // Hodnoty pro pohybové cidlo
	CHAR HODNOTY_PARTY[5]
    CHAR AKTUALNI_HODNOTY[5]    // Soucasné hodnoty kanálu
}

STRUCTURE BARVY_DNY {
    CHAR HODNOTY[7][5]          // Barvy pro jednotlivé dny v týdnu [den][kanal]
}

// ===============================================================
// DEVICE DEFINICE
// ===============================================================

// Tablety dvMyTP_04 jsou definované v hlavním programu

// ===============================================================
// PROMENNÉ
// ===============================================================

DEFINE_VARIABLE

// DEV dvMyTP_04[] = {dvTP1_04,dvTP2_04,dvTP3_04,dvTP4_04,dvTP5_04,dvTP6_04,dvTP7_04,dvTP8_04,dvTP9_04,dvTP10_04,dvTP11_04,dvTP12_04} // NA MASTER

VOLATILE SVETLO_DEFINICE SVETLA[MAX_SVETEL]     // Pole svetel
VOLATILE SVETLO_STAV STAVY_SVETEL[MAX_SVETEL]   // Stavy svetel
VOLATILE BARVY_DNY SOUMRAKOVE_BARVY[MAX_SVETEL] // Pouze pro 5barevná svetla

VOLATILE INTEGER POCET_SVETEL
VOLATILE INTEGER GLOBALNY_STAV  // Globální ovládání
VOLATILE INTEGER PARTY_MOD

// Editacní promenné
VOLATILE INTEGER EDITOVANE_SVETLO
VOLATILE INTEGER EDITOVANY_STAV
VOLATILE INTEGER EDITOVANY_DEN

VOLATILE CHAR kostky_kanaly[5][2]

VOLATILE INTEGER nPocitadlo30s = 0 // Pocítadlo cyklu pro 30sekundovou úlohu abych nemusel pouzivat 2 Timeline

LONG lFadePollingTimes[] = {
    500, 500, 500, 500, 500, 500, 500, 500, 500, 500,
    500, 500, 500, 500, 500, 500, 500, 500, 500, 500,
	500, 500, 500, 500, 500, 500, 500, 500, 500, 500
}

// Definice tlacítek pro zahradní osvetlení
VOLATILE INTEGER nBTN_ZAHRADA[] = 
{
    1,   2,   3,   4,   5,   6,   7,   8,   9,   10,
    11,  12,  13,  14,  15,  16,  17,  18,  19,  20,
    21,  22,  23,  24,  25,  26,  27,  28,  29,  30,
    31,  32,  33,  34,  35,  36,  37,  38,  39,  40,
    41,  42,  43,  44,  45,  46,  47,  48,  49,  50,
    51,  52,  53,  54,  55,  56,  57,  58,  59,  60,
    61,  62,  63,  64,  65,  66,  67,  68,  69,  70,
    71,  72,  73,  // Svetla 1-73
    100, 101, 102, 103, 104, // Kanály R,G,B,CW,WW
    200, 201, 202, 203, 204, // Raise kanály
    300, 301, 302, 303, 304, // Lower kanály
	900, 901, 902, 903,  // Výber režimu editace: Vypnuto/Soumrak/Pohyb/Party
    1000, 1001, 1002, 1003,  // Party, Vypnout, Soumrak, Pohyb
    1100, 1101, 1102, 1103, 1104, 1105, 1106  // Dny v týdnu
}

// Pomocné promenné pro editaci
VOLATILE INTEGER nAktualneVybraneSvetlo = 0 // ID svetla, které zrovna ovládáme na tabletu
VOLATILE INTEGER nAktualneVybranyDen = 1    // 1=Pondelí ... 7=Nedele (pro 5-barevná svetla)
VOLATILE INTEGER nAktualniRezimEditace = 0  // 0=Nic, 1=Edituji Soumrak, 2=Edituji Pohyb

// Pole pro uchování aktuálního režimu každého svetla (0=Vypnuto, 1=Soumrak, 2=Pohyb, 3=Party)
VOLATILE INTEGER AKTUALNI_STAV_SVETLA[MAX_SVETEL]

// Pole pro mapování kanálu na tlacítka (R, G, B, CW, WW)
VOLATILE INTEGER nKanalyBtnMap[] = {KANAL_CERVENA, KANAL_ZELENA, KANAL_MODRA, KANAL_STUDENA, KANAL_TEPLA}
	
// Externí promenné - DEN_V_TYDNU je definován v hlavním programu

VOLATILE CHAR sZahradaBuffer[2048] // Buffer pro príjem dat z iLight

// Pohybová cidla (synchronizované z jiného modulu, index 1-11)
VOLATILE CHAR CIDLO_ZAHRADA[12] = {FALSE}
VOLATILE CHAR bCidlaZablokovana

VOLATILE LONG AKTUALNI_CAS_V_SEKUNDACH = 0

// Pole pro uložení casu posledního pohybu (pro každé svetlo zvlášt)
LONG POSLEDNI_POHYB_CAS[MAX_SVETEL] = {0}

// Pamet pro detekci nábežné hrany (pole 1 až 11, index 0 se nepoužívá)
// Slouží k detekci POUZE nového pohybu (z FALSE na TRUE)
VOLATILE CHAR LAST_CIDLO_ZAHRADA[12] 

// Cas (v sekundách), do kterého je blokována automatická reakce na pohyb pro každé svetlo
// Po manuálním vypnutí (tlacítko 900) se zde nastaví cas VYPRŠENÍ zákazu.
VOLATILE LONG POCAS_ZAKAZU_REAKCE[MAX_SVETEL]

// VOLATILE CHAR GLOBAL_JE_TMA = FALSE / Presunuta na master
VOLATILE INTEGER nGlobalTPOffset = 0 // Pocítadlo pro posun adres na tabletu

// ===============================================================
// PERZISTENTNÍ PAMET
// ===============================================================

PERSISTENT CHAR PERSISTENT_STAVY[MAX_SVETEL][20]    // Pro uložení stavu svetel
PERSISTENT CHAR PERSISTENT_BARVY[MAX_SVETEL][35]    // Pro uložení barev (7 dnu × 5 kanálu)

// ===============================================================
// FUNKCE PRO PRÁCI S PERZISTENTNÍ PAMETÍ
// ===============================================================
/////		ZAPIS NA DISK		///////////
VOLATILE CHAR sBufferStavy[50000]
VOLATILE CHAR sBufferDny[50000]
//Funkce pro Uložení (Klícová cást)
//Tohle v puvodním návrhu chybelo. Když uživatel nastaví svetla, musí se hodnoty z AKTUALNI_HODNOTY prepsat do HODNOTY_SOUMRAK (nebo do barev dne).

DEFINE_FUNCTION ULOZ_EDITOVANE_NASTAVENI()
{
    STACK_VAR INTEGER i
    
    // Bezpecnostní kontrola
    IF(nAktualneVybraneSvetlo == 0) RETURN
    
    SWITCH(nAktualniRezimEditace)
    {
        // -------------------------------------------------------
        // 1. REŽIM SOUMRAK
        // -------------------------------------------------------
        CASE STAV_SOUMRAK:
        {
            // Zde musíme rozlišovat, jestli jde o speciální 5-barevné svetlo (ukládá se do dnu),
            // nebo obycejné svetlo (ukládá se do obecného soumraku).
            
            IF(SVETLA[nAktualneVybraneSvetlo].TYP == SVETLO_PETIBAREVNE)
            {
                // Ukládáme do struktury pro dny v týdnu
                FOR(i = 1; i <= 5; i++)
                {
                    SOUMRAKOVE_BARVY[nAktualneVybraneSvetlo].HODNOTY[nAktualneVybranyDen][i] = STAVY_SVETEL[nAktualneVybraneSvetlo].AKTUALNI_HODNOTY[i]
                }
            }
            ELSE
            {
                // Ukládáme do obecného nastavení Soumraku
                FOR(i = 1; i <= SVETLA[nAktualneVybraneSvetlo].POCET_KANALU; i++)
                {
                    STAVY_SVETEL[nAktualneVybraneSvetlo].HODNOTY_SOUMRAK[i] = STAVY_SVETEL[nAktualneVybraneSvetlo].AKTUALNI_HODNOTY[i]
                }
            }
        }

        // -------------------------------------------------------
        // 2. REŽIM POHYB
        // -------------------------------------------------------
        CASE STAV_POHYB:
        {
            FOR(i = 1; i <= SVETLA[nAktualneVybraneSvetlo].POCET_KANALU; i++)
            {
                STAVY_SVETEL[nAktualneVybraneSvetlo].HODNOTY_POHYB[i] = STAVY_SVETEL[nAktualneVybraneSvetlo].AKTUALNI_HODNOTY[i]
            }
        }

        // -------------------------------------------------------
        // 3. REŽIM PARTY (Tohle v puvodním IF chybelo!)
        // -------------------------------------------------------
        CASE STAV_PARTY:
        {
            FOR(i = 1; i <= SVETLA[nAktualneVybraneSvetlo].POCET_KANALU; i++)
            {
                // Predpoklad: Máš již vytvorené pole HODNOTY_PARTY ve strukture (viz má predchozí zpráva)
                STAVY_SVETEL[nAktualneVybraneSvetlo].HODNOTY_PARTY[i] = STAVY_SVETEL[nAktualneVybraneSvetlo].AKTUALNI_HODNOTY[i]
            }
        }
    }
    
    // Nakonec vše zapíšeme do persistentní pameti 
    ULOZ_STAV_SVETLA(nAktualneVybraneSvetlo)
}

DEFINE_FUNCTION ULOZ_STAV_SVETLA(INTEGER svetlo_id)
{
    STACK_VAR INTEGER i
    STACK_VAR INTEGER offset
    SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-scena_ulozena'"	// UKAZ JEN NA TP, KDE K UDALOSTI DOSLO
    // Uložení základních stavu (soumrak + pohyb = 10 bytu)
    FOR(i = 1; i <= 5; i++)
    {
        PERSISTENT_STAVY[svetlo_id][i] = STAVY_SVETEL[svetlo_id].HODNOTY_SOUMRAK[i]
        PERSISTENT_STAVY[svetlo_id][i+5] = STAVY_SVETEL[svetlo_id].HODNOTY_POHYB[i]
		// Uložení Party (index 11-15)
        PERSISTENT_STAVY[svetlo_id][i+10] = STAVY_SVETEL[svetlo_id].HODNOTY_PARTY[i]
    }
    
    // Pro 5barevná svetla uložit i denní barvy
    IF(SVETLA[svetlo_id].TYP == SVETLO_PETIBAREVNE)
    {
        offset = 0
        FOR(i = 1; i <= 7; i++)  // 7 dnu
        {
            PERSISTENT_BARVY[svetlo_id][offset+1] = SOUMRAKOVE_BARVY[svetlo_id].HODNOTY[i][1]
            PERSISTENT_BARVY[svetlo_id][offset+2] = SOUMRAKOVE_BARVY[svetlo_id].HODNOTY[i][2]
            PERSISTENT_BARVY[svetlo_id][offset+3] = SOUMRAKOVE_BARVY[svetlo_id].HODNOTY[i][3]
            PERSISTENT_BARVY[svetlo_id][offset+4] = SOUMRAKOVE_BARVY[svetlo_id].HODNOTY[i][4]
            PERSISTENT_BARVY[svetlo_id][offset+5] = SOUMRAKOVE_BARVY[svetlo_id].HODNOTY[i][5]
            offset = offset + 5
        }
    }
}

DEFINE_FUNCTION NACTI_STAV_SVETLA(INTEGER svetlo_id)
{
    STACK_VAR INTEGER i
    STACK_VAR INTEGER offset
    
    // Nactení základních stavu
    FOR(i = 1; i <= 5; i++)
    {
        STAVY_SVETEL[svetlo_id].HODNOTY_SOUMRAK[i] = PERSISTENT_STAVY[svetlo_id][i]
        STAVY_SVETEL[svetlo_id].HODNOTY_POHYB[i] = PERSISTENT_STAVY[svetlo_id][i+5]
		// Nactení Party
        STAVY_SVETEL[svetlo_id].HODNOTY_PARTY[i] = PERSISTENT_STAVY[svetlo_id][i+10]
    }
    
    // Pro 5barevná svetla nacíst i denní barvy
    IF(SVETLA[svetlo_id].TYP == SVETLO_PETIBAREVNE)
    {
        offset = 0
        FOR(i = 1; i <= 7; i++)  // 7 dnu
        {
            SOUMRAKOVE_BARVY[svetlo_id].HODNOTY[i][1] = PERSISTENT_BARVY[svetlo_id][offset+1]
            SOUMRAKOVE_BARVY[svetlo_id].HODNOTY[i][2] = PERSISTENT_BARVY[svetlo_id][offset+2]
            SOUMRAKOVE_BARVY[svetlo_id].HODNOTY[i][3] = PERSISTENT_BARVY[svetlo_id][offset+3]
            SOUMRAKOVE_BARVY[svetlo_id].HODNOTY[i][4] = PERSISTENT_BARVY[svetlo_id][offset+4]
            SOUMRAKOVE_BARVY[svetlo_id].HODNOTY[i][5] = PERSISTENT_BARVY[svetlo_id][offset+5]
            offset = offset + 5
        }
    }
}

DEFINE_FUNCTION ZPRACUJ_ZPETNOU_VAZBU(CHAR sMsg[])
{
    STACK_VAR INTEGER nArea
    STACK_VAR INTEGER nKanal
    STACK_VAR INTEGER nLevel
    STACK_VAR INTEGER i, k
    
    // Debug výpis pro kontrolu, co do funkce prišlo
    // SEND_STRING 0, "'ZPRACUJI: ', sMsg" 

    // Kontrola délky (002:A040:L000 má 13 znaku)
    IF (LENGTH_STRING(sMsg) >= 13)
    {
        // 1. Parsování pomocí MID_STRING
        // Vytáhneme 3 znaky na konkrétní pozici a prevedeme na císlo
		//SEND_STRING 0,"'Zpracovavam: <',sMsg,'>'"   /// JENOM PRO TESTY
        nKanal = ATOI(MID_STRING(sMsg, 1, 3))  // Pozice 1, délka 3
        nArea  = ATOI(MID_STRING(sMsg, 6, 3))  // Pozice 6, délka 3 (preskocíme ":A")
        nLevel = ATOI(MID_STRING(sMsg, 11, 3)) // Pozice 11, délka 3 (preskocíme ":L")
        
        // Debug výpis vyparsovaných hodnot (zakomentuj po testování)
		SEND_STRING 0, "'PARSOVANO: K=', ITOA(nKanal), ' A=', ITOA(nArea), ' L=', ITOA(nLevel)"
        // 3. Najít, kterému svetlu tato data patrí
        FOR (i = 1; i <= POCET_SVETEL; i++)
        {
            FOR (k = 1; k <= SVETLA[i].POCET_KANALU; k++)
            {
                // PORADÍ: Predpokládám definici {AREA, CHANNEL}
                // Tedy [1] = Area, [2] = Channel
                IF (SVETLA[i].AREA_CHANNELS[k][1] == nArea AND SVETLA[i].AREA_CHANNELS[k][2] == nKanal)
                {
                    // Diagnostika nalezení
                    SEND_STRING 0, "'NASLA SE SHODA! Svetlo ID: ', ITOA(i), ' Kanal index: ', ITOA(k)"
                
                    // 4. Uložení hodnoty
                    STAVY_SVETEL[i].AKTUALNI_HODNOTY[k] = TYPE_CAST(nLevel)
                    
                    // 5. Aktualizace tabletu - POUZE POKUD JE SVETLO VYBRANÉ
                    IF (nAktualneVybraneSvetlo == i)
						{
							STACK_VAR INTEGER nCilovyLevelCode
							STACK_VAR INTEGER nCilovyAddressCode

							// Výpocet z konkrétních hodnot uložených u svetla pri registraci
							nCilovyLevelCode   = SVETLA[i].ZACATECNI_TP_LEVEL_CODE + (k - 1)
							nCilovyAddressCode = SVETLA[i].ZACATECNI_TP_ADDRESS_CODE + (k - 1)

							// Odeslání na celé pole tabletu
							// Levely (Bargrafy)
							SEND_LEVEL dvMyTP_04, nCilovyLevelCode, nLevel 
														
							// Texty (Procenta) - Formát ^TXT-<port>,<state>,<addr>,<text>
							SEND_COMMAND dvMyTP_04, "'^TXT-', ITOA(nCilovyAddressCode), ',0,', ITOA(nLevel), '%'"
						
							SEND_STRING 0,"'TP Update: LvlCode=', ITOA(nCilovyLevelCode), ' TxtCode=', ITOA(nCilovyAddressCode)"
						}
                    ELSE
						{
							SEND_STRING 0,"'--> NEODESLANO na tablet (svetlo neni vybrano)'"
						}
                    BREAK
                }
            }
        }
	}
}
// ===============================================================
// POMOCNÉ FUNKCE PRO PRÁCI S SCÉNAMI
// ===============================================================

// Aplikuje soumrakový stav na všechna svetla (globální funkce)
DEFINE_FUNCTION APLIKUJ_SOUMRAK_VSECHNA()
{
    STACK_VAR INTEGER i

    FOR(i = 1; i <= POCET_SVETEL; i++)
    {
        AKTIVUJ_SVETELNOU_SCENU(i, STAV_SOUMRAK)
    }

    GLOBALNY_STAV = STAV_SOUMRAK
	SEND_STRING 0,"'FUNKCE SOUMRAK VSE -->'"
}

// Aplikuje pohybový stav na všechna svetla (globální funkce)
DEFINE_FUNCTION APLIKUJ_POHYB_VSECHNA()
{
    STACK_VAR INTEGER i
	
    FOR(i = 1; i <= POCET_SVETEL; i++)
    {	
		IF (bCidlaZablokovana) 
			RETURN //cidla nic neudelají
		ELSE
			AKTIVUJ_SVETELNOU_SCENU(i, STAV_POHYB)
    }

    GLOBALNY_STAV = STAV_POHYB
	SEND_STRING 0,"'FUNKCE POHYB VSE-->'"
}

// Vypne všechna svetla (globální funkce)
DEFINE_FUNCTION VYPNI_VSECHNA_SVETLA()
{
    STACK_VAR INTEGER i

    FOR(i = 1; i <= POCET_SVETEL; i++)
    {
        AKTIVUJ_SVETELNOU_SCENU(i, STAV_VYPNUTO)
    }

    GLOBALNY_STAV = STAV_VYPNUTO
	SEND_STRING 0,"'FUNKCE VYNUTO -->'"
}

// Zapne party mód pro všechna svetla (globální funkce)
DEFINE_FUNCTION ZAPNI_PARTY_MOD()
{
    STACK_VAR INTEGER i
	
    FOR(i = 1; i <= POCET_SVETEL; i++)
    {
        AKTIVUJ_SVETELNOU_SCENU(i, STAV_PARTY)
    }

    GLOBALNY_STAV = STAV_PARTY
    PARTY_MOD = 1
	SEND_STRING 0,"'FUNKCE PARTY MOD -->'"
}

// Pulnocní vypnutí - vypne pouze svetla v režimu SOUMRAK
// (svetla v režimu POHYB nechá dobehnout, PARTY neruší)
DEFINE_FUNCTION ZAHRADA_PULNOCNI_VYPNUTI()
{
    STACK_VAR INTEGER i

    FOR(i = 1; i <= POCET_SVETEL; i++)
    {
        // Vypnout pouze svetla v soumrakovém režimu
        IF(AKTUALNI_STAV_SVETLA[i] == STAV_SOUMRAK)
        {
            AKTIVUJ_SVETELNOU_SCENU(i, STAV_VYPNUTO)
        }
    }
}

// ===============================================================
// PRÍKLADY POUŽITÍ
// ===============================================================

/*
// Príklad 1: Manuální zapnutí svetla na soumrak
AKTIVUJ_SVETELNOU_SCENU(1, STAV_SOUMRAK)

// Príklad 2: Zapnutí svetla na pohyb (z pohybového cidla)
IF(CIDLO_ZAHRADA[5] == TRUE AND GLOBAL_JE_TMA == TRUE)
{
    STACK_VAR INTEGER nSvetloID
    nSvetloID = ZJISTI_SVETLO_DOPLNEK_DUMMY(5)

    IF(nSvetloID > 0)
    {
        // Kontrola casového zámku
        IF(AKTUALNI_CAS_V_SEKUNDACH >= POCAS_ZAKAZU_REAKCE[nSvetloID])
        {
            AKTIVUJ_SVETELNOU_SCENU(nSvetloID, STAV_POHYB)
            POSLEDNI_POHYB_CAS[nSvetloID] = AKTUALNI_CAS_V_SEKUNDACH
        }
    }
}

// Príklad 3: Globální vypnutí všech svetel
VYPNI_VSECHNA_SVETLA()

// Príklad 4: Aplikace soumraku na všechna svetla
APLIKUJ_SOUMRAK_VSECHNA()
*/
// ===============================================================
// FUNKCE PRO OVLÁDÁNÍ SVETEL
// ===============================================================

DEFINE_FUNCTION NASTAV_SVETLO(INTEGER svetlo_id, CHAR hodnoty[5])
{
    STACK_VAR INTEGER i
    
    IF(svetlo_id <= 0 OR svetlo_id > POCET_SVETEL) RETURN
    
    FOR(i = 1; i <= SVETLA[svetlo_id].POCET_KANALU; i++)
    {
        IF(LENGTH_ARRAY(SVETLA[svetlo_id].AREA_CHANNELS[i]) > 0)
        {
            CALL 'ILIGHT_CHANNEL_VALUE'(SVETLA[svetlo_id].AREA_CHANNELS[i], hodnoty[i], 5)
            STAVY_SVETEL[svetlo_id].AKTUALNI_HODNOTY[i] = hodnoty[i]
        }
    }
}
DEFINE_FUNCTION NASTAV_SVETLO_SPINANE(INTEGER svetlo_id, CHAR hodnota)
{
    STACK_VAR CHAR temp_arr[5]
    temp_arr[1] = hodnota
    temp_arr[2] = 0
    temp_arr[3] = 0
    temp_arr[4] = 0
    temp_arr[5] = 0
    
    NASTAV_SVETLO(svetlo_id, temp_arr)
}

DEFINE_FUNCTION APLIKUJ_SOUMRAKOVY_STAV(INTEGER svetlo_id)
{
    STACK_VAR CHAR hodnoty[5]
    STACK_VAR INTEGER i
    
    IF(SVETLA[svetlo_id].TYP == SVETLO_PETIBAREVNE)
    {
        // Pro 5barevná svetla použít barvy podle dne v týdnu
        FOR(i = 1; i <= 5; i++)
        {
            hodnoty[i] = SOUMRAKOVE_BARVY[svetlo_id].HODNOTY[DEN_V_TYDNU][i]
        }
    }
    ELSE
    {
        // Pro ostatní svetla použít standardní soumrakové hodnoty
        FOR(i = 1; i <= 5; i++)
        {
            hodnoty[i] = STAVY_SVETEL[svetlo_id].HODNOTY_SOUMRAK[i]
        }
    }
    
    NASTAV_SVETLO(svetlo_id, hodnoty)
    STAVY_SVETEL[svetlo_id].AKTIVNI_STAV = STAV_SOUMRAK
}

DEFINE_FUNCTION APLIKUJ_POHYBOVY_STAV(INTEGER svetlo_id)
{
    NASTAV_SVETLO(svetlo_id, STAVY_SVETEL[svetlo_id].HODNOTY_POHYB)
    STAVY_SVETEL[svetlo_id].AKTIVNI_STAV = STAV_POHYB
}
// Pomocná funkce: Zkontroluje zámek a aktivuje pohyb na konkrétním svetle
DEFINE_FUNCTION SPUST_POHYB_NA_SVETLE(INTEGER nSvetloID)
{
    IF (nSvetloID > 0 AND nSvetloID <= POCET_SVETEL)
    {
        // 1. Kontrola casového zámku (zda nebylo manuálne vypnuto)
        // Pokud je aktuální cas vetší než cas zámku, mužeme svítit
        IF (AKTUALNI_CAS_V_SEKUNDACH >= POCAS_ZAKAZU_REAKCE[nSvetloID])
        {
            // 2. Aktivovat scénu POHYB
            // Funkce uvnitr sama pozná, jestli už svítí, a neposílá príkaz zbytecne znovu
            //CALL 'AKTIVUJ_SVETELNOU_SCENU'(nSvetloID, STAV_POHYB)	///  - nahrazeno níže primo volam funkci
			AKTIVUJ_SVETELNOU_SCENU(nSvetloID, STAV_POHYB)
			//SEND_STRING 0,"'--> Posilam AKTIVUJ SVETELNOU SCENU'"
            
            // 3. Resetovat/Prodloužit casovac automatického vypnutí
            // Nastavíme cas posledního pohybu na "ted"
            POSLEDNI_POHYB_CAS[nSvetloID] = AKTUALNI_CAS_V_SEKUNDACH
        }
    }
}

// Hlavní konfiguracní funkce pro vazbu CIDLO -> SVETLA
DEFINE_FUNCTION ROZSVIT_ZONU_DLE_CIDLA(INTEGER nCidloID)
{
    SWITCH(nCidloID)
    {
        // PRÍKLAD: Cidlo 1 (Príjezd) -> Rozsvítí Lávu (1), Chodník (2) a Vstup (3)
        CASE 1: 
        {
            //SPUST_POHYB_NA_SVETLE(1) // Láva altán
            SPUST_POHYB_NA_SVETLE(2) // Barevné kostky
			SEND_STRING 0,"'--> Posilam POHYB SV2'"
            // SPUST_POHYB_NA_SVETLE(3) // Další svetlo...
        }
        
        // PRÍKLAD: Cidlo 2 (Terasa) -> Jen Láva
        CASE 2:
        {
            SPUST_POHYB_NA_SVETLE(4)
			SEND_STRING 0,"'--> Posilam POHYB SV4'"
        }
        
        // PRÍKLAD: Cidlo 3 (Vstup) -> Kostky + Vstup
        CASE 3:
        {
            SPUST_POHYB_NA_SVETLE(5) // Barevné kostky
			SEND_STRING 0,"'--> Posilam POHYB SV5'"
            // SPUST_POHYB_NA_SVETLE(5)
        }
        // PRÍKLAD: Cidlo 4 (Vstup) -> Kostky + Vstup
        CASE 4:
        {
            SPUST_POHYB_NA_SVETLE(6) // 
			SEND_STRING 0,"'--> Posilam POHYB SV6'"
            // SPUST_POHYB_NA_SVETLE(6)
        }
        
        // ... Definice pro ostatní cidla 4-11 ...
    }
}

DEFINE_FUNCTION VYPNI_SVETLO(INTEGER svetlo_id)
{
    STACK_VAR CHAR nulove_hodnoty[5]
    STACK_VAR INTEGER i
    
    FOR(i = 1; i <= 5; i++)
    {
        nulove_hodnoty[i] = 0
    }
    
    NASTAV_SVETLO(svetlo_id, nulove_hodnoty)
    STAVY_SVETEL[svetlo_id].AKTIVNI_STAV = STAV_VYPNUTO
}

// ===============================================================
// FUNKCE PRO REGISTRACI SVETEL
// ===============================================================
DEFINE_FUNCTION NASTAV_TABLET_ADRESY(INTEGER svetlo_id, INTEGER pocet_kanalu)
{
    SVETLA[svetlo_id].ZACATECNI_TP_LEVEL_CODE = ZAKLAD_TP_LEVEL_CODE + nGlobalTPOffset
    SVETLA[svetlo_id].ZACATECNI_TP_ADDRESS_CODE = ZAKLAD_TP_ADRESS_CODE + nGlobalTPOffset
    nGlobalTPOffset = nGlobalTPOffset + pocet_kanalu // Posun offsetu pro další svetlo
}

DEFINE_FUNCTION INTEGER REGISTRUJ_SPINANE_SVETLO(CHAR nazev[], CHAR area_channel[2])
{
    POCET_SVETEL = POCET_SVETEL + 1
    
    IF (POCET_SVETEL > MAX_SVETEL)
    {
        POCET_SVETEL = MAX_SVETEL
        RETURN 0
    }
    
    // 1. Základní prirazení (používáme = místo COPY)
    SVETLA[POCET_SVETEL].NAZEV = nazev
    SVETLA[POCET_SVETEL].TYP = SVETLO_SPINANE
    SVETLA[POCET_SVETEL].POCET_KANALU = 1
    SVETLA[POCET_SVETEL].AREA_CHANNELS[1] = area_channel
    
    // 2. Výpocet adres pro tablet - sjednoceno do funkce
    //SVETLA[POCET_SVETEL].ZACATECNI_TP_LEVEL_CODE = ZAKLAD_TP_LEVEL_CODE + nGlobalTPOffset
    //SVETLA[POCET_SVETEL].ZACATECNI_TP_ADDRESS_CODE = ZAKLAD_TP_ADRESS_CODE + nGlobalTPOffset
     // Posun offsetu pro další svetlo (+1 kanál)
    //nGlobalTPOffset = nGlobalTPOffset + 1
	NASTAV_TABLET_ADRESY(POCET_SVETEL, 1)  // Pro 1kanálové
    
    // 3. Výchozí hodnoty
    STAVY_SVETEL[POCET_SVETEL].HODNOTY_SOUMRAK[1] = 50
    STAVY_SVETEL[POCET_SVETEL].HODNOTY_POHYB[1] = 100
    
    // 4. Nactení z pameti
    NACTI_STAV_SVETLA(POCET_SVETEL)
    SEND_STRING 0,"'ZAREGISTROVANO SPINANE SVETLO'"
	
    RETURN POCET_SVETEL
	
}

DEFINE_FUNCTION INTEGER REGISTRUJ_STMIVANE_SVETLO(CHAR nazev[], CHAR area_channel[2])
{
    POCET_SVETEL = POCET_SVETEL + 1
    
    IF (POCET_SVETEL > MAX_SVETEL)
    {
        POCET_SVETEL = MAX_SVETEL
        RETURN 0
    }
    
    SVETLA[POCET_SVETEL].NAZEV = nazev
    SVETLA[POCET_SVETEL].TYP = SVETLO_STMIVANE
    SVETLA[POCET_SVETEL].POCET_KANALU = 1
    SVETLA[POCET_SVETEL].AREA_CHANNELS[1] = area_channel
    
    // Výpocet adres pro tablet - sjednoceno do funkce
   	NASTAV_TABLET_ADRESY(POCET_SVETEL, 1)  // Pro 1kanálové // Posun offsetu (+1 kanál)
    
    
    
    // Výchozí hodnoty
    STAVY_SVETEL[POCET_SVETEL].HODNOTY_SOUMRAK[1] = 30
    STAVY_SVETEL[POCET_SVETEL].HODNOTY_POHYB[1] = 80
    
    NACTI_STAV_SVETLA(POCET_SVETEL)
    SEND_STRING 0,"'ZAREGISTROVANO STMIVANE SVETLO'"
	
    RETURN POCET_SVETEL
	
}

DEFINE_FUNCTION INTEGER REGISTRUJ_PETIBAREVNE_SVETLO(CHAR nazev[], CHAR area_channels[5][2])
	{
    STACK_VAR INTEGER i
    
    POCET_SVETEL = POCET_SVETEL + 1
    
    IF (POCET_SVETEL > MAX_SVETEL)
    {
        POCET_SVETEL = MAX_SVETEL
        RETURN 0
    }
    
    SVETLA[POCET_SVETEL].NAZEV = nazev
    SVETLA[POCET_SVETEL].TYP = SVETLO_PETIBAREVNE
    SVETLA[POCET_SVETEL].POCET_KANALU = 5
    
    // Kopírování kanálu smyckou (bezpecnejší pro starší kompilátory)
    FOR(i = 1; i <= 5; i++)
    {
        SVETLA[POCET_SVETEL].AREA_CHANNELS[i] = area_channels[i]
        
        // Výchozí hodnoty pro pohyb (vysoká intenzita)
        STAVY_SVETEL[POCET_SVETEL].HODNOTY_POHYB[i] = 80
    }
    
    // Výpocet adres pro tablet sjednoceno do funkce
    NASTAV_TABLET_ADRESY(POCET_SVETEL, 5)  // Pro 5kanálové // Posun offsetu (+5 kanálu!)
    
    
    // Výchozí barvy pro dny (inicializace, pokud je prázdná pamet)
    // Toto se prepíše funkcí NACTI_STAV_SVETLA, pokud už bylo neco uloženo
    FOR(i = 1; i <= 7; i++)
    {
        // Jen jako pojistka, pokud v pameti nic není
        IF (SOUMRAKOVE_BARVY[POCET_SVETEL].HODNOTY[i][1] == 0)
        {
            SOUMRAKOVE_BARVY[POCET_SVETEL].HODNOTY[i][1] = 20 // R
            SOUMRAKOVE_BARVY[POCET_SVETEL].HODNOTY[i][2] = 20 // G
            SOUMRAKOVE_BARVY[POCET_SVETEL].HODNOTY[i][3] = 20 // B
            SOUMRAKOVE_BARVY[POCET_SVETEL].HODNOTY[i][4] = 10 // CW
            SOUMRAKOVE_BARVY[POCET_SVETEL].HODNOTY[i][5] = 10 // WW
        }
    }
    
    NACTI_STAV_SVETLA(POCET_SVETEL)
    SEND_STRING 0,"'ZAREGISTROVANO 5BAREVNE SVETLO'"
	
    RETURN POCET_SVETEL
	
}

DEFINE_FUNCTION INTEGER REGISTRUJ_DVOUKANALOVE_SVETLO(CHAR nazev[], CHAR area_channels[2][2])
{
    POCET_SVETEL = POCET_SVETEL + 1
    
    IF(POCET_SVETEL > MAX_SVETEL)
    {
        POCET_SVETEL = MAX_SVETEL
        RETURN 0
    }
    
    SVETLA[POCET_SVETEL].NAZEV = nazev
    SVETLA[POCET_SVETEL].TYP = SVETLO_DVOUKANALOVE
    SVETLA[POCET_SVETEL].POCET_KANALU = 2
    SVETLA[POCET_SVETEL].AREA_CHANNELS[1] = area_channels[1]  // Studená
    SVETLA[POCET_SVETEL].AREA_CHANNELS[2] = area_channels[2]  // Teplá
    
    // Výpocet adres pro tablet - sjednoceno do funkce
    NASTAV_TABLET_ADRESY(POCET_SVETEL, 2)  // pro 2kanálové
    
    // Výchozí hodnoty (procenta 0-100)
    STAVY_SVETEL[POCET_SVETEL].HODNOTY_SOUMRAK[1] = 20  // Studená slabší
    STAVY_SVETEL[POCET_SVETEL].HODNOTY_SOUMRAK[2] = 40  // Teplá silnejší = útulnejší
    
    STAVY_SVETEL[POCET_SVETEL].HODNOTY_POHYB[1] = 60    // Studená
    STAVY_SVETEL[POCET_SVETEL].HODNOTY_POHYB[2] = 60    // Teplá
    
    STAVY_SVETEL[POCET_SVETEL].HODNOTY_PARTY[1] = 80
    STAVY_SVETEL[POCET_SVETEL].HODNOTY_PARTY[2] = 80
    
    NACTI_STAV_SVETLA(POCET_SVETEL)
    
    SEND_STRING 0,"'REG: 2KANALOVE #', ITOA(POCET_SVETEL), ' [', nazev, ']'"
    RETURN POCET_SVETEL
}
// ===============================================================
// FUNKCE PRO GLOBÁLNÍ OVLÁDÁNÍ
// ===============================================================

// ===============================================================
// FUNKCE PRO EDITACI NA TABLETU
// ===============================================================

DEFINE_FUNCTION AKTUALIZUJ_TABLET_HODNOTY(INTEGER svetlo_id)
{
    STACK_VAR INTEGER i
    STACK_VAR CHAR text[20]
    
    // Aktualizovat hodnoty na tabletu pro editované svetlo
    FOR(i = 1; i <= SVETLA[svetlo_id].POCET_KANALU; i++)
    {
        // Dotaz na aktuální stav z iLight
        CALL 'ILIGHT_CHANNEL_REQUEST'(SVETLA[svetlo_id].AREA_CHANNELS[i])
        
        // Zobrazit aktuální hodnotu na tabletu
        text = ITOA(STAVY_SVETEL[svetlo_id].AKTUALNI_HODNOTY[i])
        // Zde by byly príkazy pro aktualizaci tabletu
    }
}

// ===============================================================
// FUNKCE AKTIVUJ_SVETELNOU_SCENU - Kompletní verze
// ===============================================================
// Hlavní funkce pro prepínání režimu svetla
// Parametry:
//   nSvetloID - ID svetla (1 až MAX_SVETEL)
//   nNovyStav - Nový stav (STAV_VYPNUTO/SOUMRAK/POHYB/PARTY)
//
// Funkce:
// 1. Kontroluje, zda už svetlo není v požadovaném stavu
// 2. Nacte správné hodnoty podle režimu a typu svetla
// 3. Prevede hodnoty z 0-255 na 0-100% pro iLight
// 4. Odešle príkazy do iLight s odpovídajícím fade time
// 5. Aktualizuje interní stav
// ===============================================================

DEFINE_FUNCTION AKTIVUJ_SVETELNOU_SCENU(INTEGER nSvetloID, INTEGER nNovyStav)
{
    STACK_VAR INTEGER k
    STACK_VAR CHAR nCilovaUroven
    STACK_VAR INTEGER nCilovaUrovenProcenta
    STACK_VAR INTEGER nCilovyDen
    STACK_VAR CHAR nFadeTime
    STACK_VAR INTEGER nTypSvetla

    // ===================================================================
    // KROK 1: VALIDACE A KONTROLA
    // ===================================================================

    // Kontrola platnosti ID svetla
    IF(nSvetloID <= 0 OR nSvetloID > POCET_SVETEL)
    {
        RETURN
    }

    // Kontrola, zda už svetlo není v požadovaném stavu
    // (Zbytecne neposíláme príkazy, pokud už je svetlo ve správném režimu)
   // IF(AKTUALNI_STAV_SVETLA[nSvetloID] == nNovyStav)
   // {
   //     RETURN
   // }

    // ===================================================================
    // KROK 2: NASTAVENÍ FADE TIME (doby prechodu)
    // ===================================================================
	// Uložení stavu
    AKTUALNI_STAV_SVETLA[nSvetloID] = nNovyStav
	
    SWITCH(nNovyStav)
    {
        CASE STAV_VYPNUTO:
        {
            nFadeTime = FADE_TIME_VYPNUTO  // 0.5s - rychlé zhasnutí
        }
        CASE STAV_POHYB:
        {
            nFadeTime = FADE_TIME_POHYB    // 0.2s - okamžitá reakce
        }
        CASE STAV_SOUMRAK:
        CASE STAV_PARTY:
        {
            nFadeTime = FADE_TIME_SOUMRAK  // 1.0s - plynulý prechod
        }
        DEFAULT:
        {
            nFadeTime = FADE_TIME_SOUMRAK
        }
    }

    // ===================================================================
    // KROK 3: NACTENÍ TYPU SVETLA (pro optimalizaci)
    // ===================================================================

    nTypSvetla = SVETLA[nSvetloID].TYP

    // ===================================================================
    // KROK 4: PROCHÁZENÍ KANÁLU A ODESÍLÁNÍ HODNOT
    // ===================================================================

    FOR(k = 1; k <= SVETLA[nSvetloID].POCET_KANALU; k++)
    {
        nCilovaUroven = 0  // Výchozí hodnota

        // ---------------------------------------------------------------
        // 4A. URCENÍ CÍLOVÉ ÚROVNE PODLE REŽIMU
        // ---------------------------------------------------------------

        SWITCH(nNovyStav)
        {
			CASE STAV_VYPNUTO: nCilovaUroven = 0
            
			CASE STAV_SOUMRAK: 
				{
					IF (SVETLA[nSvetloID].TYP == SVETLO_PETIBAREVNE)
					{
						// NOVÁ LOGIKA:
						// Pokud práve editujeme Soumrak, chceme videt vybraný den z tabletu.
						// Pokud beží automatika (needitujeme), chceme videt aktuální reálný den.
						IF (nAktualniRezimEditace == STAV_SOUMRAK)
						{
							 nCilovyDen = nAktualneVybranyDen
						}
						ELSE
						{
							 nCilovyDen = DEN_V_TYDNU
						}
						
						// Použijeme nCilovyDen místo DEN_V_TYDNU
						nCilovaUroven = SOUMRAKOVE_BARVY[nSvetloID].HODNOTY[nCilovyDen][k]
					}
					ELSE
					{
						nCilovaUroven = STAVY_SVETEL[nSvetloID].HODNOTY_SOUMRAK[k]
					}
				}
            CASE STAV_POHYB: 
                nCilovaUroven = STAVY_SVETEL[nSvetloID].HODNOTY_POHYB[k]
				SEND_STRING 0,"'--> Posilam POHYB HODNOTY'"
            
            CASE STAV_PARTY:
                nCilovaUroven = STAVY_SVETEL[nSvetloID].HODNOTY_PARTY[k]
           
            DEFAULT:
				nCilovaUroven = 0  // Neznámý stav - vypnout
		}

        // ---------------------------------------------------------------
        // 4B. KONVERZE  -> 0-100% (iLight)
        // ---------------------------------------------------------------

        // Všechny hodnoty už máme v rozsahu 0-100%. 
 		nCilovaUrovenProcenta = nCilovaUroven

        // Omezení na rozsah 0-100 (pro jistotu)
        IF(nCilovaUrovenProcenta < 0)
        {
            nCilovaUrovenProcenta = 0
        }
        ELSE IF(nCilovaUrovenProcenta > 100)
        {
            nCilovaUrovenProcenta = 100
        }

        // ---------------------------------------------------------------
        // 4C. ODESLÁNÍ PRÍKAZU DO iLight
        // ---------------------------------------------------------------

        // ILIGHT_CHANNEL_VALUE je funkce definovaná v hlavním programu (iLight.axi)
        // Parametry: AREA_CHANNEL[2], VALUE (0-100), FADETIME (0-255 v desetinách sekundy)
        CALL 'ILIGHT_CHANNEL_VALUE'(SVETLA[nSvetloID].AREA_CHANNELS[k],TYPE_CAST(nCilovaUrovenProcenta),nFadeTime)

        // Ukládáme ORIGINÁLNÍ hodnotu (0-255), ne konvertovanou
        STAVY_SVETEL[nSvetloID].AKTUALNI_HODNOTY[k] = nCilovaUroven
    }

    // ===================================================================
    // KROK 5: ULOŽENÍ NOVÉHO STAVU
    // ===================================================================

    AKTUALNI_STAV_SVETLA[nSvetloID] = nNovyStav

    // ===================================================================
    // KROK 6: SPECIÁLNÍ AKCE PRO VYPNUTÍ
    // ===================================================================
	(*
    IF(nNovyStav == STAV_VYPNUTO)
		{
        // Nastavení casového zámku - zabrání okamžitému zapnutí pohybovým cidlem
        // Zámek vyprší po POHYB_TIMEOUT_SEKUNDY (napr. 180 sekund = 3 minuty)
        POCAS_ZAKAZU_REAKCE[nSvetloID] = AKTUALNI_CAS_V_SEKUNDACH + POHYB_TIMEOUT_SEKUNDY
		}
	*)
    // ===================================================================
    // KROK 7: AKTUALIZACE TABLETU (volitelné)
    // ===================================================================

    // Pokud je toto svetlo práve editované na tabletu, aktualizovat zobrazení
    IF(nAktualneVybraneSvetlo == nSvetloID)
    {
        STACK_VAR INTEGER nLevelCode
        STACK_VAR INTEGER nAddressCode

        // Aktualizace bargrafu a textových hodnot pro každý kanál
        FOR(k = 1; k <= SVETLA[nSvetloID].POCET_KANALU; k++)
        {
            // Výpocet adresy pro tento kanál
            nLevelCode = SVETLA[nSvetloID].ZACATECNI_TP_LEVEL_CODE + (k - 1)
            nAddressCode = SVETLA[nSvetloID].ZACATECNI_TP_ADDRESS_CODE + (k - 1)

            // Odeslání na tablet - Level (bargraf)
            SEND_LEVEL dvMyTP_04, nLevelCode, TYPE_CAST(STAVY_SVETEL[nSvetloID].AKTUALNI_HODNOTY[k])

            // Odeslání na tablet - Text (císelná hodnota v %)
            nCilovaUrovenProcenta = STAVY_SVETEL[nSvetloID].AKTUALNI_HODNOTY[k]
			SEND_COMMAND dvMyTP_04, "'^TXT-', ITOA(nAddressCode), ',0,', ITOA(nCilovaUrovenProcenta), '%'"
        }

        // Aktualizace názvu režimu na tabletu (volitelné)
        SWITCH(nNovyStav)
        {
            CASE STAV_VYPNUTO:
            {
                SEND_COMMAND dvMyTP_04, "'^TXT-100,0,VYPNUTO'"
            }
            CASE STAV_SOUMRAK:
            {
                SEND_COMMAND dvMyTP_04, "'^TXT-100,0,SOUMRAK'"
            }
            CASE STAV_POHYB:
            {
                SEND_COMMAND dvMyTP_04, "'^TXT-100,0,POHYB'"
            }
            CASE STAV_PARTY:
            {
                SEND_COMMAND dvMyTP_04, "'^TXT-100,0,PARTY'"
            }
        }
    }
		// AKTUALIZACE STAVU V PAMETI - 
		AKTUALNI_STAV_SVETLA[nSvetloID] = nNovyStav
		
		// Pokud svetlo vypínáme, musíme vynulovat i casovace pohybu,
		// aby cidlo mohlo okamžite znovu sepnout
		IF (nNovyStav == STAV_VYPNUTO)
		{
			POSLEDNI_POHYB_CAS[nSvetloID] = 0
		}
		
		// Aktualizace tabletu (pokud je toto svetlo práve vybrané)
		IF (nSvetloID == nAktualneVybraneSvetlo)
		{
			AKTUALIZUJ_TABLET_HODNOTY(nSvetloID)
		}
}

// =============================================================== 
// POMOCNÉ FUNKCE PRO PRÁCI S SCÉNAMI
// =============================================================== 
DEFINE_FUNCTION ZOBRAZ_EDITOVANY_DEN_TEXT()
{
    STACK_VAR CHAR sNazevDne[15]
    
    // 1. Prirazení textu podle císla dne (1 = Pondelí, 7 = Nedele)
    SWITCH(nAktualneVybranyDen)
    {
        CASE 1: sNazevDne = 'Pondelí'
        CASE 2: sNazevDne = 'Utery'
        CASE 3: sNazevDne = 'Streda'
        CASE 4: sNazevDne = 'Ctvrtek'
        CASE 5: sNazevDne = 'Patek'
        CASE 6: sNazevDne = 'Sobota'
        CASE 7: sNazevDne = 'Nedele'
        DEFAULT: sNazevDne = 'Neznamy den'
    }
    
    // 2. Odeslání na tablet (Port 4, Address Code 2)
    SEND_COMMAND dvMyTP_04, "'^TXT-2,0,', sNazevDne"
}

DEFINE_FUNCTION SPUST_SLEDOVANI_FADU()
{
    // Pokud už beží z predchozí akce, sestrelíme ji, at zacne odznova
    IF (TIMELINE_ACTIVE(TL_FADE_POLLING)) 
    {
        TIMELINE_KILL(TL_FADE_POLLING)
    }
    // Start nové (20 kroku)
    TIMELINE_CREATE(TL_FADE_POLLING, lFadePollingTimes, 30, TIMELINE_RELATIVE, TIMELINE_ONCE)
}
// ===============================================================
// ZÁLOHA NA DISK AMX
// ===============================================================
DEFINE_FUNCTION ULOZ_PRESETY_NA_DISK()
{
    STACK_VAR SLONG slFile
    STACK_VAR SLONG slResult
    
    // --- 1. Uložení standardních stavu (STAVY_SVETEL) ---
    VARIABLE_TO_STRING(STAVY_SVETEL, sBufferStavy, 1) 
    slFile = FILE_OPEN('ZahradaStavy.dat', 3) // 3 = Vytvorit nový / Prepsat
    IF (slFile > 0)
    {
        slResult = FILE_WRITE(slFile, sBufferStavy, LENGTH_STRING(sBufferStavy))
        FILE_CLOSE(slFile)
    }

    // --- 2. Uložení dnu v týdnu (SOUMRAKOVE_BARVY) ---
    VARIABLE_TO_STRING(SOUMRAKOVE_BARVY, sBufferDny, 1) 
    slFile = FILE_OPEN('ZahradaDny.dat', 3) 
    IF (slFile > 0)
    {
        slResult = FILE_WRITE(slFile, sBufferDny, LENGTH_STRING(sBufferDny))
        FILE_CLOSE(slFile)
		SEND_COMMAND BUTTON.INPUT.DEVICE,"'@PPN-zaloha_ulozena'"
    }
    
    SEND_STRING 0, "'ZALOHA: Vsechny presety byly uspesne ulozeny na disk!'"
}

DEFINE_FUNCTION NACTI_PRESETY_Z_DISKU()
{
    STACK_VAR SLONG slFile
    STACK_VAR SLONG slResult

    // --- 1. Nactení standardních stavu ---
    slFile = FILE_OPEN('ZahradaStavy.dat', 1) // 1 = Císt
    IF (slFile > 0)
    {
        slResult = FILE_READ(slFile, sBufferStavy, 50000)
        FILE_CLOSE(slFile)
        
        // Rozbalíme data PRIMO do ostré promenné
        STRING_TO_VARIABLE(STAVY_SVETEL, sBufferStavy, 1)
        SEND_STRING 0, "'ZÁLOHA: Stavy svetel nacteny.'"
    }

    // --- 2. Nactení dnu v týdnu ---
    slFile = FILE_OPEN('ZahradaDny.dat', 1) 
    IF (slFile > 0)
    {
        slResult = FILE_READ(slFile, sBufferDny, 50000)
        FILE_CLOSE(slFile)
        
        // Rozbalíme data PRIMO do ostré promenné
        STRING_TO_VARIABLE(SOUMRAKOVE_BARVY, sBufferDny, 1)
        SEND_STRING 0, "'ZÁLOHA: Barvy pro dny nacteny.'"
    }
    
    SEND_STRING 0, "'ZÁLOHA: Kompletni obnova presetu dokoncena.'"
}

// ===============================================================
// EVENT HANDLERY PRO TABLET
// ===============================================================
DEFINE_EVENT

BUTTON_EVENT[dvMyTP_04,nBTN_ZAHRADA]	// JE TU NECO DVAKRAT, CASEM SLOUCIT
{
	PUSH:
    {
        STACK_VAR INTEGER nBtnIdx
		STACK_VAR INTEGER button_id
		STACK_VAR INTEGER svetlo_id
		STACK_VAR INTEGER kanal_id  
		nBtnIdx = GET_LAST(nBTN_ZAHRADA)
		button_id = nBTN_ZAHRADA[nBtnIdx]
		
        SWITCH(nBtnIdx)	// prepsat na událost button_id, zatím je to rešeno samostatne níže 
        {
            CASE 1000:  // 
				{
				//VYPNI_VSECHNA_SVETLA()
				//SEND_STRING 0,"'--> Posilam VYPNOUT VSE - NECHODI'"
                
				}
           
            CASE 1001:  // 
				{
				
				//GLOBALNY_STAV = STAV_SOUMRAK
				//	APLIKUJ_SOUMRAK_VSECHNA()
				//	SEND_STRING 0,"'--> Posilam SOUMRAK - NECHODI'"
				}
            
            CASE 1002:  // 
				{
				//GLOBALNY_STAV = STAV_POHYB
                //APLIKUJ_POHYB_VSECHNA()
				//SEND_STRING 0,"'--> Posilam POHYB - NECHODI'"    	
				}
            
            CASE 1003:  // Pohybové cidlo
            {
				
				//ZAPNI_PARTY_MOD()
				//SEND_STRING 0,"'--> Posilam PARTY MOD - NECHODI'"
            }
            
            DEFAULT:  // Ostatní tlacítka 1-73, 100-104, 200-204, 300-304, 1100-1106
            {
                IF(button_id >= 1 AND button_id <= 73)
                {
                    EDITOVANE_SVETLO = button_id
                    AKTUALIZUJ_TABLET_HODNOTY(EDITOVANE_SVETLO)
                }
                ELSE IF(button_id >= 100 AND button_id <= 104)  // Kanály R,G,B,CW,WW
                {
                    kanal_id = button_id - 99
                    // Zde by byla logika pro prímé nastavení kanálu
                }
                ELSE IF(button_id >= 200 AND button_id <= 204)  // Raise kanály
                {
                    IF(EDITOVANE_SVETLO > 0 AND EDITOVANE_SVETLO <= POCET_SVETEL)
                    {
                        kanal_id = button_id - 199
                        IF(kanal_id <= SVETLA[EDITOVANE_SVETLO].POCET_KANALU)
                        {
                            CALL 'ILIGHT_CHANNEL_RAISE2'(SVETLA[EDITOVANE_SVETLO].AREA_CHANNELS[kanal_id])
                        }
                    }
                }
                ELSE IF(button_id >= 300 AND button_id <= 304)  // Lower kanály
                {
                    IF(EDITOVANE_SVETLO > 0 AND EDITOVANE_SVETLO <= POCET_SVETEL)
                    {
                        kanal_id = button_id - 299
                        IF(kanal_id <= SVETLA[EDITOVANE_SVETLO].POCET_KANALU)
                        {
                            CALL 'ILIGHT_CHANNEL_LOWER2'(SVETLA[EDITOVANE_SVETLO].AREA_CHANNELS[kanal_id])
                        }
                    }
                }
                ELSE IF(button_id >= 1100 AND button_id <= 1106)  // Dny v týdnu
                {
                    EDITOVANY_DEN = button_id - 1099
                    // Aktualizovat zobrazení pro editaci barev vybraného dne
                }
            }	
        }
    }
	// ===============================================================
    // OPAKOVANÁ AKCE PRI DRŽENÍ TLACÍTKA (každých 200 ms)
    // ===============================================================
    HOLD[2, REPEAT]:
    {
        // V HOLD bloku musíme promenné a ID tlacítka vytvorit znovu
        STACK_VAR INTEGER nBtnIdx
        STACK_VAR INTEGER button_id
        STACK_VAR INTEGER kanal_id

        nBtnIdx = GET_LAST(nBTN_ZAHRADA)
        button_id = nBTN_ZAHRADA[nBtnIdx]

        // 1. OVLÁDÁNÍ KANÁLU - RAISE (200-204)
        IF(button_id >= 200 AND button_id <= 204)
        {
            // Ignorujeme spínaná svetla (ON/OFF relé nemá smysl plynule zvyšovat)
            IF(nAktualneVybraneSvetlo > 0 AND SVETLA[nAktualneVybraneSvetlo].TYP != SVETLO_SPINANE)
            {
                kanal_id = button_id - 199 // 200 -> 1, 201 -> 2
                IF(kanal_id <= SVETLA[nAktualneVybraneSvetlo].POCET_KANALU)
                {
                    CALL 'ILIGHT_CHANNEL_RAISE'(SVETLA[nAktualneVybraneSvetlo].AREA_CHANNELS[kanal_id])
                    
                    // Volitelne: Hned si sáhneme pro novou hodnotu, at vidíme na bargrafu plynulý rust
                    CALL 'ILIGHT_CHANNEL_REQUEST' (SVETLA[nAktualneVybraneSvetlo].AREA_CHANNELS[kanal_id])
                }
            }
        }

        // 2. OVLÁDÁNÍ KANÁLU - LOWER (300-304)
        ELSE IF(button_id >= 300 AND button_id <= 304)
        {
            IF(nAktualneVybraneSvetlo > 0 AND SVETLA[nAktualneVybraneSvetlo].TYP != SVETLO_SPINANE)
            {
                kanal_id = button_id - 299 // 300 -> 1, 301 -> 2
                IF(kanal_id <= SVETLA[nAktualneVybraneSvetlo].POCET_KANALU)
                {
                    CALL 'ILIGHT_CHANNEL_LOWER'(SVETLA[nAktualneVybraneSvetlo].AREA_CHANNELS[kanal_id])
                    
                    // Volitelne: Hned si sáhneme pro novou hodnotu, at vidíme na bargrafu plynulý pokles
                    CALL 'ILIGHT_CHANNEL_REQUEST' (SVETLA[nAktualneVybraneSvetlo].AREA_CHANNELS[kanal_id])
                }
            }
        }
    }
}

BUTTON_EVENT[dvMyTP_04,nBTN_ZAHRADA]
{
    PUSH:
    {
        STACK_VAR INTEGER nBtnIdx
        STACK_VAR INTEGER button_id
        STACK_VAR INTEGER kanal_index
        nBtnIdx = GET_LAST(nBTN_ZAHRADA)
        button_id = nBTN_ZAHRADA[nBtnIdx]
        
        // 1. VÝBER SVETLA (Tlacítka 1-73)
        IF(button_id >= 1 AND button_id <= 73)
        {
            nAktualneVybraneSvetlo = button_id
            
            // Zobrazíme na tabletu aktuální název a hodnoty
            SEND_COMMAND dvMyTP_04, "'^TXT-1,0,', SVETLA[nAktualneVybraneSvetlo].NAZEV"
            ZOBRAZ_EDITOVANY_DEN_TEXT()
            // Vyžádáme si aktuální stav od iLight (aby se srovnaly fadery)
            AKTUALIZUJ_TABLET_HODNOTY(nAktualneVybraneSvetlo)
        }
        
        // 2. STMÍVÁNÍ - RAISE (200-204)
        ELSE IF(button_id >= 200 AND button_id <= 204)
        {
            kanal_index = button_id - 199 // 1 až 5
            IF(nAktualneVybraneSvetlo > 0 AND kanal_index <= SVETLA[nAktualneVybraneSvetlo].POCET_KANALU)
            {
                 IF(SVETLA[nAktualneVybraneSvetlo].TYP == SVETLO_SPINANE)
					NASTAV_SVETLO_SPINANE (nAktualneVybraneSvetlo, 100) // Hned zapnout
				ELSE
				 // Voláme iLight RAISE
                 CALL 'ILIGHT_CHANNEL_RAISE'(SVETLA[nAktualneVybraneSvetlo].AREA_CHANNELS[kanal_index])
            }
        }
        
        // 3. STMÍVÁNÍ - LOWER (300-304)
        ELSE IF(button_id >= 300 AND button_id <= 304)
        {
            kanal_index = button_id - 299 // 1 až 5
            IF(nAktualneVybraneSvetlo > 0 AND kanal_index <= SVETLA[nAktualneVybraneSvetlo].POCET_KANALU)
            {
				IF(SVETLA[nAktualneVybraneSvetlo].TYP == SVETLO_SPINANE)
					NASTAV_SVETLO_SPINANE (nAktualneVybraneSvetlo, 0) // Hned vypnout
				ELSE
                 // Voláme iLight LOWER
                 CALL 'ILIGHT_CHANNEL_LOWER'(SVETLA[nAktualneVybraneSvetlo].AREA_CHANNELS[kanal_index])
            }
        }
        
        // 4. ULOŽIT AKTUÁLNÍ SCÉNU (Tlacítko 1050)  -  ZATIM, PAK PREDELAT NA PODRZENI
        ELSE IF(button_id == 1050) 
        {
            ULOZ_EDITOVANE_NASTAVENI()
			SEND_STRING 0,"'--> Ukladam do pameti'"
        }
        
       // 5. VÝBER DNE V TÝDNU PRO EDITACI (1100-1106)
        ELSE IF(button_id >= 1100 AND button_id <= 1106)
        {
            STACK_VAR INTEGER i_den // Pomocná promenná pro cyklus
            nAktualneVybranyDen = button_id - 1099
			
            // 1. Zhasneme všechny dny v cyklu
            FOR(i_den = 1100; i_den <= 1106; i_den++)
            {
                OFF[dvMyTP_04, i_den]
            }
			(* /// Toto hodlam resit jinak a jinde
            // 2. Rozsvítíme jen ten vybraný
            ON[dvMyTP_04, button_id]
			// SEND_COMMAND dvMyTP_04, "'^TXT-2,0,',ITOA(nAktualneVybranyDen)"
			*)
			ZOBRAZ_EDITOVANY_DEN_TEXT()	// Poslu text na tablet
			// --- NOVÉ: OKAMŽITÁ AKTUALIZACE SVETLA ---
            // Pokud jsme v režimu editace Soumraku a máme vybrané svetlo, 
            // hned nacteme hodnoty pro nove vybraný den.
            IF (nAktualniRezimEditace == STAV_SOUMRAK AND nAktualneVybraneSvetlo > 0)
				{
				AKTIVUJ_SVETELNOU_SCENU(nAktualneVybraneSvetlo, STAV_SOUMRAK)
				SPUST_SLEDOVANI_FADU()
				}
        }
    }
    
   RELEASE:
    {
        STACK_VAR INTEGER nBtnIdx
        STACK_VAR INTEGER button_id
        STACK_VAR INTEGER kanal_index
        
        nBtnIdx = GET_LAST(nBTN_ZAHRADA)
        button_id = nBTN_ZAHRADA[nBtnIdx]
        kanal_index = 0 // Inicializace na 0, pokud se nejedná o stmívací tlacítko
        
        // 1. Zjistíme, zda jde o stmívací tlacítko a nastavíme kanal_index
        IF(button_id >= 300 AND button_id <= 304) // LOWER
        {
             kanal_index = button_id - 299
        }
        ELSE IF(button_id >= 200 AND button_id <= 204) // RAISE
        {
             kanal_index = button_id - 199
        }
        // Všechny ostatní tlacítka (napr. výber scény) automaticky zanechají kanal_index = 0

        // 2. Podmínené volání STOP (provede se jen pro stmívací tlacítka a vybrané svetlo)
        IF(kanal_index > 0 AND nAktualneVybraneSvetlo > 0)
        {
             // Volání ILIGHT_CHANNEL_STOP.
             CALL 'ILIGHT_CHANNEL_STOP'(SVETLA[nAktualneVybraneSvetlo].AREA_CHANNELS[kanal_index])
        }
        // Konec bloku RELEASE
    }
}

///  nechodi [button id] 1000, 1001, 1002, 1003, POSILAM NIZE// Party, Vypnout, Soumrak, Pohyb

BUTTON_EVENT[dvMyTP_04,1000]									/// VYPNOUT
{
  PUSH:
	  {
			
		STACK_VAR INTEGER s
		VYPNI_VSECHNA_SVETLA()
		SEND_STRING 0,"'--> Posilam VYPNOUT VSE2'"
		// ZABLOKOVÁNÍ CIDEL NA DEFINOVANOU DOBU PO MANUÁLNÍM VYPNUTÍ
        FOR(s = 1; s <= POCET_SVETEL; s++)
			{
            POCAS_ZAKAZU_REAKCE[s] = AKTUALNI_CAS_V_SEKUNDACH + POHYB_TIMEOUT_SEKUNDY
			}
		SPUST_SLEDOVANI_FADU()
	  }
	 RELEASE:
	  {
	    IF (BUTTON.HOLDTIME > 2000) // JEN POKUD TLACITKO BYLO DRZENO DELSI DOBU NEZ 2s
				{ 
				bCidlaZablokovana = 1
				}
	  }
}
BUTTON_EVENT[dvMyTP_04,1001]									///  SOUMRAK
{
  PUSH:
	  {

			
		GLOBALNY_STAV = STAV_SOUMRAK		
		APLIKUJ_SOUMRAK_VSECHNA()				// ZAPNU PRO VSECHNY SVETLA
		SEND_STRING 0,"'--> Posilam SOUMRAK2'"
		nAktualniRezimEditace = STAV_SOUMRAK
			IF (nAktualneVybraneSvetlo > 0)	 // Pokud chceš prepnout jen to jedno svetlo, které edituješ:
			{
				AKTIVUJ_SVETELNOU_SCENU(nAktualneVybraneSvetlo, STAV_SOUMRAK)
				SPUST_SLEDOVANI_FADU()
			}	
		// Pokud už beží, restartujeme ji (aby se jelo od zacátku 10s fadu)
		
	  }
}
BUTTON_EVENT[dvMyTP_04,1002]									/// POHYB
{
  PUSH:
	  {
		STACK_VAR INTEGER s
        GLOBALNY_STAV = STAV_POHYB
		bCidlaZablokovana = 0	// odblokovani cidel 
		ON[dvMyTP_04,1050]
        APLIKUJ_POHYB_VSECHNA()		// ZAPNU PRO VSECHNY SVETLA
        SEND_STRING 0,"'--> Posilam POHYB2'"
        nAktualniRezimEditace = STAV_POHYB // <--- Nastavení režimu
        
        IF (nAktualneVybraneSvetlo > 0)
        {
            AKTIVUJ_SVETELNOU_SCENU(nAktualneVybraneSvetlo, STAV_POHYB)
			SPUST_SLEDOVANI_FADU()
        }
        
        // ---> NOVÉ: Zajištení casu pro editaci (1 minuta = 60 sekund) <---
        FOR(s = 1; s <= POCET_SVETEL; s++)
        {
            POSLEDNI_POHYB_CAS[s] = AKTUALNI_CAS_V_SEKUNDACH + 60
        }
	  }
	RELEASE:
		{
		IF (BUTTON.HOLDTIME >3000)
			{
			bCidlaZablokovana = 1
			OFF[dvMyTP_04,1050]
			}
		}
}
BUTTON_EVENT[dvMyTP_04,1003]                                    /// PARTY MOD
{
  PUSH:
      {
        
		
		ZAPNI_PARTY_MOD()	// ZAPNU PRO VSECHNY SVETLA
		SEND_STRING 0,"'--> Posilam PARTY MOD2'"
		nAktualniRezimEditace = STAV_PARTY // <--- Nastavení režimu
		IF (nAktualneVybraneSvetlo > 0)
			{
			AKTIVUJ_SVETELNOU_SCENU(nAktualneVybraneSvetlo, STAV_PARTY)
			SPUST_SLEDOVANI_FADU()
			}
      }
}

BUTTON_EVENT[dvMyTP_04,1050]									// Tlacítko ULOŽIT
{
  PUSH:
	  {
		IF (nAktualneVybraneSvetlo > 0)
			{
			ULOZ_EDITOVANE_NASTAVENI()
			SEND_STRING 0,"'--> Ukladam do pameti2'"
			SEND_COMMAND dvMyTP_04, "'BEEP'"
			}
	  }
	RELEASE:
		{
		IF (BUTTON.HOLDTIME >1000)
			{
			ULOZ_PRESETY_NA_DISK()
			SEND_COMMAND dvMyTP_04, "'BEEP'"
			}
		}
		
}
BUTTON_EVENT[dvMyTP_04,99]									// Tlacítko ZAHRADA
{
  PUSH:
	  {
		nAktualneVybranyDen = DEN_V_TYDNU
		EDITOVANY_DEN = DEN_V_TYDNU
		ZOBRAZ_EDITOVANY_DEN_TEXT()
	  }
}
// ===============================================================
// SIMULACE CIDEL A TMY PRO TESTOVÁNÍ (Tlacítka 800 - 803)
// ===============================================================

// Tlacítko 800: Prepínac DEN / NOC  V MODULU TEPLOMER--ZPRACUJ DATA  DOCASNE VYRAZENO GLOBAL_JE_TMA = FALSE
BUTTON_EVENT[dvMyTP_04, 800] 
{
    PUSH:
    {
        IF (GLOBAL_JE_TMA == TRUE)
        {
            GLOBAL_JE_TMA = FALSE
            OFF[dvMyTP_04, 800] // Zhasnuté tlacítko = je den
            SEND_STRING 0, "'TEST: Nastaven DEN -> Cidla budou ignorována'"
        }
        ELSE
        {
            GLOBAL_JE_TMA = TRUE
            ON[dvMyTP_04, 800]  // Rozsvícené tlacítko = je tma
            SEND_STRING 0, "'TEST: Nastavena TMA -> Cidla jsou AKTIVNÍ'"
        }
    }
}

// Tlacítka 801-803: Simulace samotných pohybových cidel
// Pole definujeme rovnou v hlavicce eventu
BUTTON_EVENT[dvMyTP_04, 801]	// Tlacítka 801-804: Simulace samotných pohybových cidel
BUTTON_EVENT[dvMyTP_04, 802]
BUTTON_EVENT[dvMyTP_04, 803]
BUTTON_EVENT[dvMyTP_04, 804]
{
    PUSH:  // PUSH = Clovek vstoupil do zóny cidla
    {
        STACK_VAR INTEGER nCidloIdx
        nCidloIdx = BUTTON.INPUT.CHANNEL - 800 // 801 bude cidlo 1, 802 cidlo 2 atd.
        
        // Zapneme virtuální cidlo
        CIDLO_ZAHRADA[nCidloIdx] = TRUE
        
        // Zpetná vazba pro tebe na tablet
        ON[dvMyTP_04, BUTTON.INPUT.CHANNEL]
        SEND_STRING 0, "'TEST: Cidlo ', ITOA(nCidloIdx), ' detekuje POHYB!'"
    }
    
    // RELEASE = Clovek odešel ze zóny
    RELEASE:
    {
        STACK_VAR INTEGER nCidloIdx
        nCidloIdx = BUTTON.INPUT.CHANNEL - 800
        
        // Vypneme virtuální cidlo
        CIDLO_ZAHRADA[nCidloIdx] = FALSE
        
        // Zpetná vazba pro tebe na tablet
        OFF[dvMyTP_04, BUTTON.INPUT.CHANNEL]
        SEND_STRING 0, "'TEST: Cidlo ', ITOA(nCidloIdx), ' je v klidu.'"
    }
}

// ===============================================================
// JEDNOTNÁ TIMELINE PRO ZAHRADU (Tep 250 ms)
// ===============================================================
TIMELINE_EVENT[TL_ZAHRADA]
{
    STACK_VAR INTEGER i 
    
    // ===========================================================
    // RYCHLÁ ÚLOHA: Provádí se VŽDY (každých 250 ms)
    // ===========================================================
    // Zpracování 11 pohybových cidel
    FOR(i = 1; i <= 11; i++)
    {
        // Podmínka: Je TMA? (Pokud je svetlo, pohyb ignorujeme)
        IF (GLOBAL_JE_TMA == TRUE)
        {
            // A. DETEKCE NOVÉHO POHYBU (Nábežná hrana 0->1)
            IF (CIDLO_ZAHRADA[i] == TRUE AND LAST_CIDLO_ZAHRADA[i] == FALSE)
            {
                // Spustíme celou skupinu svetel pro toto cidlo
                ROZSVIT_ZONU_DLE_CIDLA(i)
            }
            // B. DETEKCE PRETRVÁVAJÍCÍHO POHYBU (Stále 1)
            ELSE IF (CIDLO_ZAHRADA[i] == TRUE)
            {
                ROZSVIT_ZONU_DLE_CIDLA(i)
            }
        }
        // Uložení aktuálního stavu pro príští cyklus
        LAST_CIDLO_ZAHRADA[i] = CIDLO_ZAHRADA[i]
		
		/// aktualizace zobrazeni stavu tlacitek
		// STAV
			[dvMyTP_04, 1000] = (GLOBALNY_STAV == STAV_VYPNUTO)
			[dvMyTP_04, 1001] = (GLOBALNY_STAV == STAV_SOUMRAK )
			[dvMyTP_04, 1002] = (GLOBALNY_STAV == STAV_POHYB)
			[dvMyTP_04, 1003] = (GLOBALNY_STAV == STAV_PARTY)
		// den v tydnu	
			[dvMyTP_04, 1100] = (EDITOVANY_DEN  == 1)
			[dvMyTP_04, 1101] = (EDITOVANY_DEN  == 2)
			[dvMyTP_04, 1102] = (EDITOVANY_DEN  == 3)
			[dvMyTP_04, 1103] = (EDITOVANY_DEN  == 4)
			[dvMyTP_04, 1104] = (EDITOVANY_DEN  == 5)
			[dvMyTP_04, 1105] = (EDITOVANY_DEN  == 6)
			[dvMyTP_04, 1106] = (EDITOVANY_DEN  == 7)
		// tlacitko pro nastaveni tma-svetlo
			[dvMyTP_04, 800] = (GLOBAL_JE_TMA)
		
    }

    // ===========================================================
    // POMALÁ ÚLOHA: Provádí se jednou za 30 sekund
    // ===========================================================
    nPocitadlo30s = nPocitadlo30s + 1
    
    // 120 cyklu * 250 ms = 30000 ms = 30 sekund
    IF (nPocitadlo30s >= 120)
    {
        // Resetujeme pocítadlo
        nPocitadlo30s = 0
        
        // Inkrementace našeho interního casu
        AKTUALNI_CAS_V_SEKUNDACH = AKTUALNI_CAS_V_SEKUNDACH + 30
        
        // Kontrola automatického vypnutí po pohybu pro všechna svetla
        FOR(i = 1; i <= POCET_SVETEL; i++)
        {
            // Pokud je svetlo zapnuté pohybem
            IF (AKTUALNI_STAV_SVETLA[i] == STAV_POHYB)
            {
                // Zkontrolujeme, zda uplynul cas od posledního pohybu
                IF (AKTUALNI_CAS_V_SEKUNDACH > (POSLEDNI_POHYB_CAS[i] + POHYB_TIMEOUT_SEKUNDY)) //[cite: 130]
                {
                    // Cas vypršel -> Kam se máme vrátit?
                    // Pokud je globální stav zahrady SOUMRAK, vrátíme se na soumrakové hodnoty.
                    IF (GLOBALNY_STAV == STAV_SOUMRAK)
                    {
                        // CALL 'AKTIVUJ_SVETELNOU_SCENU'(i, STAV_SOUMRAK) - nahrazeno níže primo volam funkci
						AKTIVUJ_SVETELNOU_SCENU(i, STAV_SOUMRAK)
                        SEND_STRING 0, "'TEST: DOSEL CAS POHYBU -> VRACIM NA SOUMRAK'"
                    }
                    // Pokud je globální stav PARTY (pro jistotu, cidla by v party asi nemela fungovat, 
                    // ale kdyby náhodou ano, at se to nezkazí)
                    ELSE IF (GLOBALNY_STAV == STAV_PARTY)
                    {
                        // CALL 'AKTIVUJ_SVETELNOU_SCENU'(i, STAV_PARTY) - nahrazeno níže primo volam funkci
						AKTIVUJ_SVETELNOU_SCENU(i, STAV_PARTY)
                        SEND_STRING 0, "'TEST: DOSEL CAS POHYBU -> VRACIM NA PARTY'"
                    }
                    // Ve všech ostatních prípadech (Vypnuto) proste zhasneme
                    ELSE
                    {
                        // CALL 'AKTIVUJ_SVETELNOU_SCENU'(i, STAV_VYPNUTO)  - nahrazeno níže primo volam funkci
						AKTIVUJ_SVETELNOU_SCENU(i, STAV_VYPNUTO)
                        SEND_STRING 0, "'TEST: DOSEL CAS POHYBU -> VYPINAM (Vracim do tmy)'"
                    }
                }
            }
        }
    }
}
TIMELINE_EVENT[TL_FADE_POLLING]
{
    STACK_VAR INTEGER k
    
    // Zkontrolujeme, zda máme vybrané platné svetlo
    IF (nAktualneVybraneSvetlo > 0 AND nAktualneVybraneSvetlo <= POCET_SVETEL)
    {
        // Projdeme všechny kanály, které svetlo má (1, 2, nebo 5)
        FOR (k = 1; k <= SVETLA[nAktualneVybraneSvetlo].POCET_KANALU; k++)
        {
            // Odeslání dotazu pro každý kanál
            CALL 'ILIGHT_CHANNEL_REQUEST' (SVETLA[nAktualneVybraneSvetlo].AREA_CHANNELS[k])
        }
    }
}
// ===============================================================
// INICIALIZACE
// ===============================================================
DATA_EVENT[dvIlight]
{
	STRING:
    {
        // Pridáme príchozí data do bufferu
        sZahradaBuffer = "sZahradaBuffer, DATA.TEXT"
        
        // Zpracujeme buffer, dokud obsahuje ukoncovací znak $0D (CR)
        WHILE(FIND_STRING(sZahradaBuffer, "$0D", 1))
        {
            STACK_VAR CHAR sTempMsg[50]
            
            // Vytáhneme jednu celou zprávu i s $0D
            sTempMsg = REMOVE_STRING(sZahradaBuffer, "$0D", 1)
            
            // Hledáme odpoved na dotaz stavu (@RL)
            IF (FIND_STRING(sTempMsg, "'@RL'", 1))
            {
                // Odstraníme vše až do @RL vcetne
                // Príklad vstupu: "String From... -[@RL002:A040:L000$0D]" -> my máme v bufferu jen vnitrek
                REMOVE_STRING(sTempMsg, "'@RL'", 1)
                
                // Odstraníme $0D na konci (poslední znak)
                SET_LENGTH_STRING(sTempMsg, LENGTH_STRING(sTempMsg) - 1)
                
                // Nyní máme cistý string: "002:A040:L000"
                CALL 'ZPRACUJ_ZPETNOU_VAZBU'(sTempMsg)
				SEND_STRING 0,"'Posilam: <',sTempMsg,'>'"
            }
        }
        
        // Ochrana proti pretecení bufferu
        IF (LENGTH_STRING(sZahradaBuffer) > 1000)
        {
            sZahradaBuffer = ""
        }
    }
}

DEFINE_START 
{
   
	STACK_VAR INTEGER i
    // Pomocná promenná pro definici kanálu 5barevného svetla
    STACK_VAR CHAR temp_kanaly_kostky[5][2] 
	STACK_VAR CHAR temp_2kanal[2][2]
	CREATE_BUFFER dvIlight, sZahradaBuffer
    
    // Inicializace
    POCET_SVETEL = 0
    GLOBALNY_STAV = STAV_VYPNUTO
    nGlobalTPOffset = 0 // Reset pocítadla adres
    nAktualneVybranyDen = DEN_V_TYDNU
	EDITOVANY_DEN = DEN_V_TYDNU
    
    // ... Timeline ...
    TIMELINE_CREATE(TL_ZAHRADA, TL_ZAHRADA_TIMES, 1, TIMELINE_ABSOLUTE, TIMELINE_REPEAT)
      
    // Inicializace stavu na vypnuto
    FOR(i = 1; i <= MAX_SVETEL; i++)
    {
       AKTUALNI_STAV_SVETLA[i] = STAV_VYPNUTO
    }

    // ===============================================================
    // REGISTRACE SVETEL 
    // ===============================================================
	// ZAKLAD_TP_LEVEL_CODE = 10 // První Level Code pro svetlo 1, Kanál 1
	// ZAKLAD_TP_ADRESS_CODE = 270  // První Address Code (text) pro svetlo 1
    
	// 1. SVETLO LÁVA ALTÁN (Stmívané)
    // Predáváme název a kanál z iLight (definovaný v konstantách/promenných)
    REGISTRUJ_STMIVANE_SVETLO('Svetlo láva altán', SV_VEN_ZAHRADA_01)		// NENI FYZICKY
    
    // 2. BAREVNÉ KOSTKY (5-barevné)
    // Nejprve naplníme pomocné pole kanálu
    temp_kanaly_kostky[1] = SV_1PP_RELAX_STENA_R03 // Cervena
    temp_kanaly_kostky[2] = SV_1PP_RELAX_STENA_G03 // Zelena
    temp_kanaly_kostky[3] = SV_1PP_RELAX_STENA_B03 // Modra
    temp_kanaly_kostky[4] = SV_1PP_RELAX_STENA_W03 // Studena
    temp_kanaly_kostky[5] = SV_1PP_RELAX_STENA_B05 // Tepla
    
    REGISTRUJ_PETIBAREVNE_SVETLO('Barevné Test 1', temp_kanaly_kostky)
	
	// 3. SPINANE SVETLO (1-barevné)
	REGISTRUJ_SPINANE_SVETLO('Reflektor', SV_1NP_ZZAHRAD_01)
	
    //// 4.  TESTOVACI RELAX 1
	// Nejprve naplníme pomocné pole kanálu
    temp_kanaly_kostky[1] = SV_1PP_RELAX_STENA_R04 // Cervena 	// RELAX SVETLIK {38,5} Level/Adress 18/278
    temp_kanaly_kostky[2] = SV_1PP_RELAX_STENA_G04 // Zelena 	// RELAX SVETLIK {38,6}
    temp_kanaly_kostky[3] = SV_1PP_RELAX_STENA_B04 // Modra 	// RELAX SVETLIK 
    temp_kanaly_kostky[4] = SV_1PP_RELAX_STENA_W04 // Studena 	// RELAX SVETLIK 
    temp_kanaly_kostky[5] = SV_1PP_RELAX_STENA_R05 // Tepla  	// STENA PROTI KOUPELNE
    
    REGISTRUJ_PETIBAREVNE_SVETLO('Barevné Test 2', temp_kanaly_kostky)
	
	//// 5.  TESTOVACI RELAX 2
	// Nejprve naplníme pomocné pole kanálu
    temp_kanaly_kostky[1] = SV_1PP_RELAX_STENA_R02 // Cervena 	// Stena u sol.jeskyne
    temp_kanaly_kostky[2] = SV_1PP_RELAX_STENA_G02 // Zelena 	// Stena u sol.jeskyne 
    temp_kanaly_kostky[3] = SV_1PP_RELAX_STENA_B02 // Modra 	// Stena u sol.jeskyne 
    temp_kanaly_kostky[4] = SV_1PP_RELAX_STENA_W02 // Studena 	// Stena u sol.jeskyne 
    temp_kanaly_kostky[5] = SV_1PP_RELAX_STENA_G05 // Tepla  	// STENA PROTI KOUPELNE
    
	 REGISTRUJ_PETIBAREVNE_SVETLO('Barevné Test 3', temp_kanaly_kostky)
	 
	 // 6. Dvoukanálové svetlo
    temp_2kanal[1] = SV_1NP_KUCHYN_02  // Studená bílá
    temp_2kanal[2] = SV_1NP_KUCHYN_03  // Teplá bílá
    REGISTRUJ_DVOUKANALOVE_SVETLO('Lávové lampicky 1', temp_2kanal)
	
	
	//// 7.  TESTOVACI NENI
	// Nejprve naplníme pomocné pole kanálu
    temp_kanaly_kostky[1] = SV_VEN_ZAHRADA_04 // NENI
    temp_kanaly_kostky[2] = SV_VEN_ZAHRADA_05 // NENI 
    temp_kanaly_kostky[3] = SV_VEN_ZAHRADA_06 // NENI 
    temp_kanaly_kostky[4] = SV_VEN_ZAHRADA_07 // NENI
    temp_kanaly_kostky[5] = SV_VEN_ZAHRADA_08 // NENI
	REGISTRUJ_PETIBAREVNE_SVETLO('Barevné Test 4', temp_kanaly_kostky)
	 
    // Zde mužeš pridávat další svetla 
    // REGISTRUJ_SPINANE_SVETLO('Reflektor', SV_NEJAKY_KANAL)
	
	ZOBRAZ_EDITOVANY_DEN_TEXT()
	// WAIT 20 
	// NACTI_PRESETY_Z_DISKU()		// TO ASI SPIS RUCNE,PRI POTREBE OBNOVY
}
