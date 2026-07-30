PROGRAM_NAME='Zaluzie'
(***********************************************************)
(*  FILE CREATED ON: 22/04/2026  AT: 09:57:57              *)
(***********************************************************)
(*  FILE_LAST_MODIFIED_ON: 22/04/2026  AT: 13:00:34        *)
(***********************************************************)
(*  ................................................       *)
(*  			Varianta GEMINI							  *)
(*  			 										   *)
(*  ................................................       *)
(***********************************************************)

DEFINE_CONSTANT
MAX_ZALUZII = 30 // Zde uprav císlo podle skutecného celkového poctu žaluzií

// --- INDEXY ŽALUZIÍ ---
// Vytvoríme si jména pro indexy v poli, abychom v kódu nemuseli psát císla, 
// ale hezky citelné konstanty.

//////////////--- 0MK --------------////////////////////////
ZAL_VEN_PRAC_Z1				= 1	// VLEVO
ZAL_VEN_PRAC_Z2				= 2	// STRED 
ZAL_VEN_PRAC_Z3				= 3	// VPRAVO

ZAL_VEN_HOST_Z1				= 4	// U LESA
ZAL_VEN_HOST_Z2				= 5	// K DOMU
ZAL_VEN_HOST_Z3				= 6	// K UDIRNE

//////////////--- 1PP --------------////////////////////////
ZAL_1PP_KUCH_Z1				= 7		// Kuchyne linka
ZAL_1PP_RELA_Z1				= 8		// Relax
ZAL_1PP_KOUP_Z1				= 9		// Koupelna c Relaxu

//////////////--- Zaluzie 1 NP -----////////////////////////
ZAL_1NP_OBYVAK_KRB_LEVA  = 10	// OBYVAK 1
ZAL_1NP_OBYVAK_KRB_PRAVA = 11	// OBYVAK 2
ZAL_1NP_KUCHYNE          = 12	// U KUCH LINKY
ZAL_1NP_ZAL_ZZAH_Z1		 = 13 	// Zimni zahrada leva strana
ZAL_1NP_ZAL_ZZAH_Z2		 = 14 	// Zimni zahrada u vchodu leva
ZAL_1NP_ZAL_ZZAH_Z3		 = 15 	// Zimni zahrada VCHOD
ZAL_1NP_ZAL_ZZAH_Z4		 = 16 	// Zimni zahrada u vchodu prava
ZAL_1NP_ZAL_ZZAH_Z5		 = 17 	// Zimni zahrada prava strana
ZAL_1NP_KOUP_Z1			 = 18	// Koupelna ZALUZIE
ZAL_1NP_KOUP_Z2			 = 19	// Koupelna ROLETA
ZAL_1NP_WC_Z1			 = 20	// WC ZALUZIE
ZAL_1NP_WC_Z2			 = 21	// WC ROLETA

//////////////--- Zaluzie Mezipatro -----////////////////////////
ZAL_2NP_HALA_Z1			= 22	// SCHODY V MEZIPATRE

//////////////--- Zaluzie 2 NP -----////////////////////////
ZAL_2NP_HALA_Z2			= 23    // HALA STRED
ZAL_2NP_HALA_Z3			= 24	// HALA KRAJE		
ZAL_2NP_LOZN_Z1			= 25	// LOZNICE VLEVO
ZAL_2NP_LOZN_Z2			= 26	// LOZNICE VPRAVO
ZAL_2NP_DETP_Z1			= 27	// 	DP - ROLETA LEVA
ZAL_2NP_DETP_Z2			= 28	//  DP - ZALUZIE BALKON
ZAL_2NP_DETP_Z3			= 29	//  DP - ROLETA PRAVA
ZAL_2NP_KOUP_Z1			= 30	// ZALUZIE KOUPELNA

(*
DEFINE_CONSTANT
// --- INDEXY PRO STRUKTURU ŽALUZIÍ (MAX_ZALUZII = 28) ---
// 1PP - Suterén
ZAL_1PP_KUCHYNE          = 1
ZAL_1PP_RELAX            = 2
ZAL_1PP_KOUPELNA         = 3

// 1NP - Prízemí
ZAL_1NP_OBYVAK_KRB_LEVA  = 4
ZAL_1NP_OBYVAK_KRB_PRAVA = 5
ZAL_1NP_KUCHYNE          = 6
ZAL_1NP_KOUPELNA         = 7
ZAL_1NP_KOUPELNA_ROLETA  = 8
ZAL_1NP_WC               = 9
ZAL_1NP_ZZ_LEVA          = 10  // Zimní zahrada
ZAL_1NP_ZZ_VCHOD_LEVA    = 11
ZAL_1NP_ZZ_VCHOD         = 12
ZAL_1NP_ZZ_VCHOD_PRAVA   = 13
ZAL_1NP_ZZ_PRAVA         = 14

// 2NP - Podkroví
ZAL_2NP_LOZNICE_LEVA     = 15
ZAL_2NP_LOZNICE_PRAVA    = 16
ZAL_2NP_HALA_SCHODY      = 17
ZAL_2NP_HALA_STRED       = 18
ZAL_2NP_HALA_KRAJE       = 19
ZAL_2NP_DETI_ROLETA_LEVA = 20
ZAL_2NP_DETI_BALKON      = 21
ZAL_2NP_DETI_ROLETA_PRAVA= 22
ZAL_2NP_KOUPELNA         = 23

// 0MK - Pracovna / Hostovský domek
ZAL_0MK_PRAC_LEVA        = 24
ZAL_0MK_PRAC_STRED       = 25
ZAL_0MK_PRAC_PRAVA       = 26
ZAL_0MK_HOST_LESA        = 27
ZAL_0MK_HOST_DOMU        = 28
ZAL_0MK_HOST_UDIRNY      = 29

*)

DEFINE_TYPE
// --- ŠABLONA ŽALUZIE ---
STRUCTURE _sZaluzie
{
    CHAR    sNazev[30]         // Textový název pro snadnejší diagnostiku a logování
    INTEGER nStav              // 0=Auto, 1=Tablet UP, 2=Tablet DWN, 3=Zed UP, 4=Zed DWN, 6=Blokace
    INTEGER nKanalUP           // Tvoje puvodní konstanta pro iLight kanál NAHORU
    INTEGER nKanalDWN          // Tvoje puvodní konstanta pro iLight kanál DOLU
    INTEGER nStavPredVetrem    // Uložení stavu (0-6), když prijde vítr
    INTEGER nPosledniSmer      // Interní hlídání: 1=Nahoru, 2=Dolu, 0=Stop
}


DEFINE_VARIABLE
// --- HLAVNÍ POLE ŽALUZIÍ ---
// Vytvoríme jedno pole struktur o velikosti MAX_ZALUZII. 
// Promenná je PERSISTENT, aby si pamatovala stavy (napr. blokaci 6) i pri výpadku proudu.
PERSISTENT _sZaluzie uZaluzie[MAX_ZALUZII] 


DEFINE_FUNCTION fnInitZaluzie()
{
    // Zde propojujeme logické indexy s fyzickými kanály
    // Ostatní promenné ve strukture (nStav, nPosledniSmer) jsou NetLinxem automaticky nastaveny na 0.

    // ==========================================
    // 0MK - PRACOVNA A HOSTOVSKÝ DOMEK
    // ==========================================
    uZaluzie[ZAL_VEN_PRAC_Z1].sNazev    = '0MK Pracovna vlevo'
    uZaluzie[ZAL_VEN_PRAC_Z1].nKanalUP  = ZL_VEN_PRAC_Z1_UP
    uZaluzie[ZAL_VEN_PRAC_Z1].nKanalDWN = ZL_VEN_PRAC_Z1_DW

    uZaluzie[ZAL_VEN_PRAC_Z2].sNazev    = '0MK Pracovna stred'
    uZaluzie[ZAL_VEN_PRAC_Z2].nKanalUP  = ZL_VEN_PRAC_Z2_UP
    uZaluzie[ZAL_VEN_PRAC_Z2].nKanalDWN = ZL_VEN_PRAC_Z2_DW

    uZaluzie[ZAL_VEN_PRAC_Z3].sNazev    = '0MK Pracovna vpravo'
    uZaluzie[ZAL_VEN_PRAC_Z3].nKanalUP  = ZL_VEN_PRAC_Z3_UP
    uZaluzie[ZAL_VEN_PRAC_Z3].nKanalDWN = ZL_VEN_PRAC_Z3_DW

    uZaluzie[ZAL_VEN_HOST_Z1].sNazev    = '0MK Host u lesa'
    uZaluzie[ZAL_VEN_HOST_Z1].nKanalUP  = ZL_VEN_HOST1_UP
    uZaluzie[ZAL_VEN_HOST_Z1].nKanalDWN = ZL_VEN_HOST1_DW

    uZaluzie[ZAL_VEN_HOST_Z2].sNazev    = '0MK Host k domu'
    uZaluzie[ZAL_VEN_HOST_Z2].nKanalUP  = ZL_VEN_HOST_Z2_UP
    uZaluzie[ZAL_VEN_HOST_Z2].nKanalDWN = ZL_VEN_HOST_Z2_DW

    uZaluzie[ZAL_VEN_HOST_Z3].sNazev    = '0MK Host k udirne'
    uZaluzie[ZAL_VEN_HOST_Z3].nKanalUP  = ZL_VEN_HOST_Z3_UP
    uZaluzie[ZAL_VEN_HOST_Z3].nKanalDWN = ZL_VEN_HOST_Z3_DW

    // ==========================================
    // 1PP - SUTERÉN
    // ==========================================
    uZaluzie[ZAL_1PP_KUCH_Z1].sNazev    = '1PP Kuchyne linka'
    uZaluzie[ZAL_1PP_KUCH_Z1].nKanalUP  = ZL_1PP_KUCH_Z1_UP
    uZaluzie[ZAL_1PP_KUCH_Z1].nKanalDWN = ZL_1PP_KUCH_Z1_DW

    uZaluzie[ZAL_1PP_RELA_Z1].sNazev    = '1PP Relax'
    uZaluzie[ZAL_1PP_RELA_Z1].nKanalUP  = ZL_1PP_RELA_Z1_UP
    uZaluzie[ZAL_1PP_RELA_Z1].nKanalDWN = ZL_1PP_RELA_Z1_DW

    uZaluzie[ZAL_1PP_KOUP_Z1].sNazev    = '1PP Koupelna u relaxu'
    uZaluzie[ZAL_1PP_KOUP_Z1].nKanalUP  = ZL_1PP_KOUP_Z1_UP
    uZaluzie[ZAL_1PP_KOUP_Z1].nKanalDWN = ZL_1PP_KOUP_Z1_DW

    // ==========================================
    // 1NP - PRÍZEMÍ
    // ==========================================
    uZaluzie[ZAL_1NP_OBYVAK_KRB_LEVA].sNazev    = '1NP Obyvak krb vlevo'
    uZaluzie[ZAL_1NP_OBYVAK_KRB_LEVA].nKanalUP  = ZL_1NP_OBYVAK_KRB_LEVA_UP
    uZaluzie[ZAL_1NP_OBYVAK_KRB_LEVA].nKanalDWN = ZL_1NP_OBYVAK_KRB_LEVA_DW

    uZaluzie[ZAL_1NP_OBYVAK_KRB_PRAVA].sNazev   = '1NP Obyvak krb vpravo'
    uZaluzie[ZAL_1NP_OBYVAK_KRB_PRAVA].nKanalUP = ZL_1NP_OBYVAK_KRB_PRAVA_UP
    uZaluzie[ZAL_1NP_OBYVAK_KRB_PRAVA].nKanalDWN= ZL_1NP_OBYVAK_KRB_PRAVA_DW

    uZaluzie[ZAL_1NP_KUCHYNE].sNazev    = '1NP Kuchyne'
    uZaluzie[ZAL_1NP_KUCHYNE].nKanalUP  = ZL_1NP_KUCHYNE_UP
    uZaluzie[ZAL_1NP_KUCHYNE].nKanalDWN = ZL_1NP_KUCHYNE_DW

    uZaluzie[ZAL_1NP_ZAL_ZZAH_Z1].sNazev    = '1NP ZZ leva strana'
    uZaluzie[ZAL_1NP_ZAL_ZZAH_Z1].nKanalUP  = ZL_1NP_ZAL_ZZAH_Z1_UP
    uZaluzie[ZAL_1NP_ZAL_ZZAH_Z1].nKanalDWN = ZL_1NP_ZAL_ZZAH_Z1_DW

    uZaluzie[ZAL_1NP_ZAL_ZZAH_Z2].sNazev    = '1NP ZZ u vchodu leva'
    uZaluzie[ZAL_1NP_ZAL_ZZAH_Z2].nKanalUP  = ZL_1NP_ZAL_ZZAH_Z2_UP
    uZaluzie[ZAL_1NP_ZAL_ZZAH_Z2].nKanalDWN = ZL_1NP_ZAL_ZZAH_Z2_DW

    uZaluzie[ZAL_1NP_ZAL_ZZAH_Z3].sNazev    = '1NP ZZ vchod'
    uZaluzie[ZAL_1NP_ZAL_ZZAH_Z3].nKanalUP  = ZL_1NP_ZAL_ZZAH_Z3_UP
    uZaluzie[ZAL_1NP_ZAL_ZZAH_Z3].nKanalDWN = ZL_1NP_ZAL_ZZAH_Z3_DW

    uZaluzie[ZAL_1NP_ZAL_ZZAH_Z4].sNazev    = '1NP ZZ u vchodu prava'
    uZaluzie[ZAL_1NP_ZAL_ZZAH_Z4].nKanalUP  = ZL_1NP_ZAL_ZZAH_Z4_UP
    uZaluzie[ZAL_1NP_ZAL_ZZAH_Z4].nKanalDWN = ZL_1NP_ZAL_ZZAH_Z4_DW

    uZaluzie[ZAL_1NP_ZAL_ZZAH_Z5].sNazev    = '1NP ZZ prava strana'
    uZaluzie[ZAL_1NP_ZAL_ZZAH_Z5].nKanalUP  = ZL_1NP_ZAL_ZZAH_Z5_UP
    uZaluzie[ZAL_1NP_ZAL_ZZAH_Z5].nKanalDWN = ZL_1NP_ZAL_ZZAH_Z5_DW

    uZaluzie[ZAL_1NP_KOUP_Z1].sNazev    = '1NP Koupelna Zaluzie'
    uZaluzie[ZAL_1NP_KOUP_Z1].nKanalUP  = ZL_1NP_KOUP_Z1_UP
    uZaluzie[ZAL_1NP_KOUP_Z1].nKanalDWN = ZL_1NP_KOUP_Z1_DW

    uZaluzie[ZAL_1NP_KOUP_Z2].sNazev    = '1NP Koupelna Roleta'
    uZaluzie[ZAL_1NP_KOUP_Z2].nKanalUP  = ZL_1NP_KOUP_Z2_UP
    uZaluzie[ZAL_1NP_KOUP_Z2].nKanalDWN = ZL_1NP_KOUP_Z2_DW

    uZaluzie[ZAL_1NP_WC_Z1].sNazev      = '1NP WC Zaluzie'
    uZaluzie[ZAL_1NP_WC_Z1].nKanalUP    = ZL_1NP_WC_Z1_UP
    uZaluzie[ZAL_1NP_WC_Z1].nKanalDWN   = ZL_1NP_WC_Z1_DW

    uZaluzie[ZAL_1NP_WC_Z2].sNazev      = '1NP WC Roleta'
    uZaluzie[ZAL_1NP_WC_Z2].nKanalUP    = ZL_1NP_WC_Z2_UP
    uZaluzie[ZAL_1NP_WC_Z2].nKanalDWN   = ZL_1NP_WC_Z2_DW

    // ==========================================
    // MEZIPATRO
    // ==========================================
    uZaluzie[ZAL_2NP_HALA_Z1].sNazev    = '2NP Hala schody mezipatro'
    uZaluzie[ZAL_2NP_HALA_Z1].nKanalUP  = ZL_2NP_HALA_Z1_UP
    uZaluzie[ZAL_2NP_HALA_Z1].nKanalDWN = ZL_2NP_HALA_Z1_DW

    // ==========================================
    // 2NP - PODKROVÍ
    // ==========================================
    uZaluzie[ZAL_2NP_HALA_Z2].sNazev    = '2NP Hala stred'
    uZaluzie[ZAL_2NP_HALA_Z2].nKanalUP  = ZL_2NP_HALA_Z2_UP
    uZaluzie[ZAL_2NP_HALA_Z2].nKanalDWN = ZL_2NP_HALA_Z2_DW

    uZaluzie[ZAL_2NP_HALA_Z3].sNazev    = '2NP Hala kraje'
    uZaluzie[ZAL_2NP_HALA_Z3].nKanalUP  = ZL_2NP_HALA_Z3_UP
    uZaluzie[ZAL_2NP_HALA_Z3].nKanalDWN = ZL_2NP_HALA_Z3_DW

    uZaluzie[ZAL_2NP_LOZN_Z1].sNazev    = '2NP Loznice vlevo'
    uZaluzie[ZAL_2NP_LOZN_Z1].nKanalUP  = ZL_2NP_LOZN_Z1_UP
    uZaluzie[ZAL_2NP_LOZN_Z1].nKanalDWN = ZL_2NP_LOZN_Z1_DW

    uZaluzie[ZAL_2NP_LOZN_Z2].sNazev    = '2NP Loznice vpravo'
    uZaluzie[ZAL_2NP_LOZN_Z2].nKanalUP  = ZL_2NP_LOZN_Z2_UP
    uZaluzie[ZAL_2NP_LOZN_Z2].nKanalDWN = ZL_2NP_LOZN_Z2_DW

    uZaluzie[ZAL_2NP_DETP_Z1].sNazev    = '2NP Deti roleta leva'
    uZaluzie[ZAL_2NP_DETP_Z1].nKanalUP  = ZL_2NP_DETP_Z1_UP
    uZaluzie[ZAL_2NP_DETP_Z1].nKanalDWN = ZL_2NP_DETP_Z1_DW

    uZaluzie[ZAL_2NP_DETP_Z2].sNazev    = '2NP Deti zaluzie balkon'
    uZaluzie[ZAL_2NP_DETP_Z2].nKanalUP  = ZL_2NP_DETP_Z2_UP
    uZaluzie[ZAL_2NP_DETP_Z2].nKanalDWN = ZL_2NP_DETP_Z2_DW

    uZaluzie[ZAL_2NP_DETP_Z3].sNazev    = '2NP Deti roleta prava'
    uZaluzie[ZAL_2NP_DETP_Z3].nKanalUP  = ZL_2NP_DETP_Z3_UP
    uZaluzie[ZAL_2NP_DETP_Z3].nKanalDWN = ZL_2NP_DETP_Z3_DW

    uZaluzie[ZAL_2NP_KOUP_Z1].sNazev    = '2NP Koupelna zaluzie'
    uZaluzie[ZAL_2NP_KOUP_Z1].nKanalUP  = ZL_2NP_KOUP_Z1_UP
    uZaluzie[ZAL_2NP_KOUP_Z1].nKanalDWN = ZL_2NP_KOUP_Z1_DW
}