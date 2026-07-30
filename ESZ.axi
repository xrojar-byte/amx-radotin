PROGRAM_NAME='ESZ'
(***********************************************************)
(*  FILE CREATED ON: 02/07/2016  AT: 09:57:57              *)
(***********************************************************)
(*  PREPSANO NA DATOVE RIZENE ZPRACOVANI ZPRAV  07/2026     *)
(***********************************************************)
(*  ................................................       *)
(*  			PRO ZABEZPEC TQS3 a protokol SPINEL		   *)
(*  			PRO Clima Sensor D od Adolf Thies GmbH	   *)
(*  ................................................       *)
(***********************************************************)

DEFINE_DEVICE

//dvEsz = 5001:1:1

DEFINE_CONSTANT
FALSE			= 0
TRUE			= 1
ZONA_1		    = 1
ZONA_2 			= 2
ZONA_3 			= 3
ZONA_4 			= 4
ZONA_28		    = 28
ZONA_29		    = 29
ZONA_30		    = 30
ZONA_69		    = 69
ZONA_70		    = 70
ZONA_71		    = 71
ZONA_88		    = 88
ZONA_91		    = 91
ZONA_92 		= 92
ZONA_93 		= 93
ZONA_96 		= 96
ZONA_97		    = 97
ZONA_109	    = 109

TL_ESZ = 19 // SETS AN ID FOR THE TIMELINE

// Pocet polozek v jednotlivych vyhledavacich tabulkach
ESZ_POCET_ZON_ALARM = 4
ESZ_POCET_DVERI     = 5
ESZ_POCET_CIDEL     = 13

DEFINE_VARIABLE
VOLATILE CHAR OBJEKT
VOLATILE CHAR ESZ_BUFFER[255]
VOLATILE CHAR ESZ_TEMP[100]
VOLATILE CHAR ESZ_MAM[8]

LONG ZABEZPEC_CAS[] = {900,900,900,900,900,900,900,900,900,900,900,900,900,900,900,900,900,900,900,900,900}

VOLATILE CHAR Z_DVERE1 = FALSE
VOLATILE CHAR Z_DVERE2 = FALSE
VOLATILE CHAR CIDLO_VODA1 = FALSE
VOLATILE CHAR CIDLO_VODA2 = FALSE
VOLATILE CHAR CIDLO_VODA3 = FALSE
VOLATILE CHAR CIDLO_VODA4 = FALSE
VOLATILE CHAR CIDLO_VODA5 = FALSE
VOLATILE CHAR CIDLO_VODA6 = FALSE
VOLATILE CHAR CIDLO_VODA7 = FALSE
VOLATILE CHAR CIDLO_VODA8 = FALSE
VOLATILE CHAR CIDLO_VODA9 = FALSE
VOLATILE CHAR CIDLO_VODA10 = FALSE
VOLATILE CHAR CIDLO_VODA11 = FALSE
VOLATILE CHAR CIDLO_VODA12 = FALSE
VOLATILE CHAR CIDLO_VODA13 = FALSE
VOLATILE CHAR CIDLO_VODA14 = FALSE
VOLATILE CHAR CIDLO_VODA15 = FALSE
VOLATILE CHAR CIDLO_ZAHRADA1 = FALSE
VOLATILE CHAR CIDLO_ZAHRADA2 = FALSE
VOLATILE CHAR CIDLO_ZAHRADA3 = FALSE
VOLATILE CHAR CIDLO_ZAHRADA4 = FALSE
VOLATILE CHAR CIDLO_ZAHRADA5 = FALSE
VOLATILE CHAR CIDLO_ZAHRADA6 = FALSE
VOLATILE CHAR CIDLO_ZAHRADA7 = FALSE
VOLATILE CHAR CIDLO_ZAHRADA8 = FALSE
VOLATILE CHAR CIDLO_ZAHRADA9 = FALSE
VOLATILE CHAR CIDLO_ZAHRADA10 = FALSE
VOLATILE CHAR CIDLO_ZAHRADA11 = FALSE
VOLATILE CHAR CIDLO_ZAHRADA12 = FALSE

VOLATILE CHAR ZONA_CIDLO
VOLATILE INTEGER VODA_CIDLA_CITAC=10
VOLATILE INTEGER VODA_CIDLA_DUM=10

/////////////////////////////////////////////////////////////////////////////
// VYHLEDAVACI TABULKY (Deklarace v DEFINE_VARIABLE, naplnìní v DEFINE_START)
/////////////////////////////////////////////////////////////////////////////

CHAR ESZ_ZONA_MARKER[ESZ_POCET_ZON_ALARM][15]
CHAR ESZ_ZONA_OBJEKT[ESZ_POCET_ZON_ALARM]

CHAR ESZ_DVERE_MARKER[ESZ_POCET_DVERI][15]
CHAR ESZ_DVERE_CISLO[ESZ_POCET_DVERI]
CHAR ESZ_DVERE_STAV[ESZ_POCET_DVERI]

CHAR ESZ_CIDLO_MARKER[ESZ_POCET_CIDEL][15]
CHAR ESZ_CIDLO_ZONA[ESZ_POCET_CIDEL]


DEFINE_START

// --- Alarmove zony ---
ESZ_ZONA_MARKER[1] = 'RA001'; ESZ_ZONA_OBJEKT[1] = ZONA_1
ESZ_ZONA_MARKER[2] = 'RA002'; ESZ_ZONA_OBJEKT[2] = ZONA_2
ESZ_ZONA_MARKER[3] = 'RA003'; ESZ_ZONA_OBJEKT[3] = ZONA_3
ESZ_ZONA_MARKER[4] = 'RA004'; ESZ_ZONA_OBJEKT[4] = ZONA_4

// --- Dvere (zahrada) ---
ESZ_DVERE_MARKER[1] = 'G000N037A001'; ESZ_DVERE_CISLO[1] = 1; ESZ_DVERE_STAV[1] = TRUE
ESZ_DVERE_MARKER[2] = 'RZ037OOOOO';   ESZ_DVERE_CISLO[2] = 1; ESZ_DVERE_STAV[2] = TRUE
ESZ_DVERE_MARKER[3] = 'RZ037COOOO';   ESZ_DVERE_CISLO[3] = 1; ESZ_DVERE_STAV[3] = FALSE

ESZ_DVERE_MARKER[4] = 'RZ038OOOOO';   ESZ_DVERE_CISLO[4] = 2; ESZ_DVERE_STAV[4] = TRUE
ESZ_DVERE_MARKER[5] = 'RZ038COOOO';   ESZ_DVERE_CISLO[5] = 2; ESZ_DVERE_STAV[5] = FALSE

// --- Cidla vody ---
ESZ_CIDLO_MARKER[1] = 'RZ028'; ESZ_CIDLO_ZONA[1] = ZONA_28
ESZ_CIDLO_MARKER[2] = 'RZ029'; ESZ_CIDLO_ZONA[2] = ZONA_29
ESZ_CIDLO_MARKER[3] = 'RZ030'; ESZ_CIDLO_ZONA[3] = ZONA_30
ESZ_CIDLO_MARKER[4] = 'RZ069'; ESZ_CIDLO_ZONA[4] = ZONA_69
ESZ_CIDLO_MARKER[5] = 'RZ070'; ESZ_CIDLO_ZONA[5] = ZONA_70
ESZ_CIDLO_MARKER[6] = 'RZ071'; ESZ_CIDLO_ZONA[6] = ZONA_71
ESZ_CIDLO_MARKER[7] = 'RZ088'; ESZ_CIDLO_ZONA[7] = ZONA_88
ESZ_CIDLO_MARKER[8] = 'RZ091'; ESZ_CIDLO_ZONA[8] = ZONA_91
ESZ_CIDLO_MARKER[9] = 'RZ092'; ESZ_CIDLO_ZONA[9] = ZONA_92
ESZ_CIDLO_MARKER[10]= 'RZ093'; ESZ_CIDLO_ZONA[10]= ZONA_93
ESZ_CIDLO_MARKER[11]= 'RZ096'; ESZ_CIDLO_ZONA[11]= ZONA_96
ESZ_CIDLO_MARKER[12]= 'RZ097'; ESZ_CIDLO_ZONA[12]= ZONA_97
ESZ_CIDLO_MARKER[13]= 'RZ109'; ESZ_CIDLO_ZONA[13]= ZONA_109


DEFINE_CALL 'ESZ_BUFFER_PROCESS'
{
LOCAL_VAR INTEGER i

IF (LENGTH_STRING(ESZ_BUFFER) > 1)
	{
	WHILE (FIND_STRING(ESZ_BUFFER,"$0D",1))
		{
		ESZ_TEMP = REMOVE_STRING(ESZ_BUFFER,"$0D",1)

		IF (LENGTH_STRING(ESZ_TEMP))
			{
			// 1) ALARMOVE ZONY (RA001-RA004)
			FOR (i=1; i<=ESZ_POCET_ZON_ALARM; i++)
				{
				IF (FIND_STRING(ESZ_TEMP,ESZ_ZONA_MARKER[i],1))
					{
					REMOVE_STRING(ESZ_TEMP,ESZ_ZONA_MARKER[i],1)
					IF (FIND_STRING(ESZ_TEMP,"$0D",1))
						{
						ESZ_MAM = REMOVE_STRING(ESZ_TEMP,"$0D",1)
						SET_LENGTH_STRING(ESZ_MAM,(LENGTH_STRING(ESZ_MAM)-1))
						OBJEKT = ESZ_ZONA_OBJEKT[i]
						CALL 'ZOBRAZ STAV' (ESZ_MAM)
						}
					}
				}

			// 2) DVERE ZAHRADA (1 a 2)
			FOR (i=1; i<=ESZ_POCET_DVERI; i++)
				{
				IF (FIND_STRING(ESZ_TEMP,ESZ_DVERE_MARKER[i],1))
					{
					REMOVE_STRING(ESZ_TEMP,ESZ_DVERE_MARKER[i],1)
					IF (FIND_STRING(ESZ_TEMP,"$0D",1))
						{
						ESZ_MAM = REMOVE_STRING(ESZ_TEMP,"$0D",1)
						SET_LENGTH_STRING(ESZ_MAM,(LENGTH_STRING(ESZ_MAM)-1))
						IF (ESZ_DVERE_CISLO[i] = 1)
							Z_DVERE1 = ESZ_DVERE_STAV[i]
						ELSE
							Z_DVERE2 = ESZ_DVERE_STAV[i]
						CALL 'ZOBRAZ_DVERE'
						}
					}
				}

			// 3) CIDLA VODY
			FOR (i=1; i<=ESZ_POCET_CIDEL; i++)
				{
				IF (FIND_STRING(ESZ_TEMP,ESZ_CIDLO_MARKER[i],1))
					{
					REMOVE_STRING(ESZ_TEMP,ESZ_CIDLO_MARKER[i],1)
					IF (FIND_STRING(ESZ_TEMP,"$0D",1))
						{
						ESZ_MAM = REMOVE_STRING(ESZ_TEMP,"$0D",1)
						SET_LENGTH_STRING(ESZ_MAM,(LENGTH_STRING(ESZ_MAM)-1))
						ZONA_CIDLO = ESZ_CIDLO_ZONA[i]
						CALL 'URCI CIDLA' (ESZ_MAM)
						}
					}
				}
			}
		}

	IF (LENGTH_STRING(ESZ_BUFFER) >= (MAX_LENGTH_STRING(ESZ_BUFFER)-20))
		CLEAR_BUFFER ESZ_BUFFER
	}
}

DEFINE_CALL 'ZOBRAZ_ESZ'
{
	SEND_STRING dvTeplomer,"'*B1TR',$0D"
	TIMELINE_PAUSE(TL_ESZ)
	SEND_STRING dvEsz,"'RA001',$0D"
	WAIT 4
	SEND_STRING dvEsz,"'RA002',$0D"
	WAIT 8
	SEND_STRING dvEsz,"'RA003',$0D"
	WAIT 12
	SEND_STRING dvEsz,"'RA004',$0D"
	WAIT 16
	SEND_STRING dvMeteo,"'00TR1',$0D"
	WAIT 20
	SEND_STRING dvEsz,"'RZ037',$0D"
	WAIT 24
	SEND_STRING dvEsz,"'RZ038',$0D"
	CALL 'ZOBRAZ_VENTIL_RELAX'
	TIMELINE_RESTART(TL_ESZ)
}

DEFINE_CALL 'ZOBRAZ_DVERE'
{
IF (Z_DVERE1 = TRUE)
	{
	DVERE = Zahrada_OTEVRENA
	}
ELSE IF (Z_DVERE2 = TRUE)
	{
	DVERE = Zahrada_OTEVRENA
	}
ELSE
	{
	DVERE = Zahrada_ZAVRENA
	}
}

DEFINE_CALL 'ZOBRAZ_VENTIL_RELAX'
{
IF (VODA_VENTIL_RELAX = TRUE)
	{
	ON [dvMyTP_03,35]
	OFF [dvMyTP_02,301]
	ON [dvMyTP_02,300]
	}
ELSE
	{
	OFF [dvMyTP_03,35]
	ON [dvMyTP_02,301]
	OFF [dvMyTP_02,300]
	}
}

DEFINE_CALL 'URCI CIDLA' (CHAR ESZ_MAM[])
{
LOCAL_VAR CHAR STAV[1]
SWITCH (ZONA_CIDLO)
    {
		CASE 28:
			{
			STAV = "ESZ_MAM[1]"
			SWITCH (STAV)
				{
				CASE 'O':
					{
					ON [dvMyTP_03,35]
					VODA_CIDLA_DUM++
					CIDLO_VODA5 = TRUE
					CALL 'ZPRACUJ_DUM'
					}
				CASE 'C':
					{
					OFF [dvMyTP_03,35]
					CIDLO_VODA5 = FALSE
					CALL 'ODECTI_DUM'
					}
			    }
			}
		CASE 29:
			{
			STAV = "ESZ_MAM[1]"
			SWITCH (STAV)
				{
				CASE 'O':
					{
					ON [dvMyTP_03,36]
					VODA_CIDLA_DUM++
					CIDLO_VODA6 = TRUE
					CALL 'ZPRACUJ_DUM'
					}
				CASE 'C':
					{
					OFF [dvMyTP_03,36]
					CIDLO_VODA6 = FALSE
					CALL 'ODECTI_DUM'
					}
			    }
			}
		CASE 30:
			{
			STAV = "ESZ_MAM[1]"
			SWITCH (STAV)
				{
				CASE 'O':
					{
					ON [dvMyTP_03,37]
					VODA_CIDLA_DUM++
					CIDLO_VODA7 = TRUE
					CALL 'ZPRACUJ_DUM'
					}
				CASE 'C':
					{
					OFF [dvMyTP_03,37]
					CIDLO_VODA7 = FALSE
					CALL 'ODECTI_DUM'
					}
			    }
			}
		CASE 69:
			{
			STAV = "ESZ_MAM[1]"
			SWITCH (STAV)
				{
				CASE 'O':
					{
					ON [dvMyTP_03,41]
					VODA_CIDLA_DUM++
					CIDLO_VODA8 = TRUE
					CALL 'ZPRACUJ_DUM'
					}
				CASE 'C':
					{
					OFF [dvMyTP_03,41]
					CIDLO_VODA8 = FALSE
					CALL 'ODECTI_DUM'
					}
			    }
			}
		CASE 70:
			{
			STAV = "ESZ_MAM[1]"
			SWITCH (STAV)
				{
				CASE 'O':
					{
					ON [dvMyTP_03,34]
					VODA_CIDLA_DUM++
					CIDLO_VODA9 = TRUE
					CALL 'ZPRACUJ_DUM'
					}
				CASE 'C':
					{
					OFF [dvMyTP_03,34]
					CIDLO_VODA9 = FALSE
					CALL 'ODECTI_DUM'
					}
			    }
			}
		CASE 71:
			{
			STAV = "ESZ_MAM[1]"
			SWITCH (STAV)
				{
				CASE 'O':
					{
					ON [dvMyTP_03,39]
					VODA_CIDLA_DUM++
					CIDLO_VODA10 = TRUE
					CALL 'ZPRACUJ_DUM'
					}
				CASE 'C':
					{
					OFF [dvMyTP_03,39]
					CIDLO_VODA10 = FALSE
					CALL 'ODECTI_DUM'
					}
			    }
			}
		CASE 88:
			{
			STAV = "ESZ_MAM[1]"
			SWITCH (STAV)
				{
				CASE 'O':
					{
					ON [dvMyTP_03,38]
					VODA_CIDLA_DUM++
					CIDLO_VODA11 = TRUE
					CALL 'ZPRACUJ_DUM'
					}
				CASE 'C':
					{
					OFF [dvMyTP_03,38]
					CIDLO_VODA11 = FALSE
					CALL 'ODECTI_DUM'
					}
			    }
			}
		CASE 91:
			{
			STAV = "ESZ_MAM[1]"
			SWITCH (STAV)
				{
				CASE 'O':
					{
					ON [dvMyTP_03,31]
					ON [dvMyTP_03,35]
					CIDLO_VODA1 = TRUE
					VODA_CIDLA_CITAC++
					}
				CASE 'C':
					{
					OFF [dvMyTP_03,31]
					OFF [dvMyTP_03,35]
					CIDLO_VODA1 = FALSE
					VODA_CIDLA_CITAC--
					}
			    }
			}
		CASE 92:
			{
			STAV = "ESZ_MAM[1]"
			SWITCH (STAV)
				{
				CASE 'O':
					{
					ON [dvMyTP_03,32]
					CIDLO_VODA2 = TRUE
					VODA_CIDLA_CITAC++
					}
				CASE 'C':
					{
					OFF [dvMyTP_03,32]
					CIDLO_VODA2 = FALSE
					VODA_CIDLA_CITAC--
					}
			    }
			}
		CASE 93:
			{
			STAV = "ESZ_MAM[1]"
			SWITCH (STAV)
				{
				CASE 'O':
					{
					VODA_CIDLA_CITAC++
					ON [dvMyTP_03,33]
					CIDLO_VODA3 = TRUE
					CALL 'ZPRACUJ_VODU'
					}
				CASE 'C':
					{
					OFF [dvMyTP_03,33]
					CIDLO_VODA3 = FALSE
					VODA_CIDLA_CITAC--
					CALL 'ZPRACUJ_VODU'
					}
			    }
			}
		CASE 96:
			{
			STAV = "ESZ_MAM[1]"
			SWITCH (STAV)
				{
				CASE 'O':
					{
					ON [dvMyTP_03,40]
					VODA_CIDLA_DUM++
					CIDLO_VODA12 = TRUE
					CALL 'ZPRACUJ_DUM'
					}
				CASE 'C':
					{
					OFF [dvMyTP_03,40]
					CIDLO_VODA12 = FALSE
					CALL 'ODECTI_DUM'
					}
			    }
			}
		CASE 97:
			{
			STAV = "ESZ_MAM[1]"
			SWITCH (STAV)
				{
				CASE 'O':
					{
					ON [dvMyTP_03,42]
					VODA_CIDLA_DUM++
					CIDLO_VODA13 = TRUE
					CALL 'ZPRACUJ_DUM'
					}
				CASE 'C':
					{
					OFF [dvMyTP_03,42]
					CIDLO_VODA13 = FALSE
					CALL 'ODECTI_DUM'
					}
			    }
			}
		CASE 109:
			{
			STAV = "ESZ_MAM[1]"
			SWITCH (STAV)
				{
				CASE 'O':
					{
					ON [dvMyTP_03,43]
					VODA_CIDLA_DUM++
					CIDLO_VODA14 = TRUE
					CALL 'ZPRACUJ_DUM'
					}
				CASE 'C':
					{
					OFF [dvMyTP_03,43]
					CIDLO_VODA14 = FALSE
					CALL 'ODECTI_DUM'
					}
			    }
			}
		}
}

DEFINE_CALL 'ZPRACUJ_VODU'
{
IF(VODA_CIDLA_CITAC<9)
	{
	VODA_CIDLA_CITAC=9
	}
IF (VODA_CIDLA_CITAC>12)
	{
	IF (VODA_VENTIL_MANUAL=0)
	    {
	     ON [dvMyTP_03,29]
	     CALL 'ZAVRI_VODU'
	    }
	 IF (VODA_CIDLA_CITAC>14)
		{
		VODA_CIDLA_CITAC=14
		}
	}
ELSE
	{
	IF (VODA_VENTIL_MANUAL=0)
	    {
	    OFF [dvMyTP_03,29]
	    CALL 'OTEVRI_VODU'
	    }
	}
}

DEFINE_CALL 'ZPRACUJ_DUM'
{
IF (VODA_CIDLA_DUM>12)
	{
	IF (VODA_VENTIL_MANUAL=0)
	    {
	    ON [dvMyTP_03,29]
	    CALL 'ZAVRI_VODU'
	     }
	 IF (VODA_CIDLA_DUM>14)
		{
		VODA_CIDLA_DUM=14
		}
	}
ELSE
	{
	IF (VODA_VENTIL_MANUAL=0)
	    {
	    OFF [dvMyTP_03,29]
	    CALL 'OTEVRI_VODU'
	      }
	}
}

DEFINE_CALL 'ODECTI_DUM'
{
 IF ((CIDLO_VODA5 = FALSE)&(CIDLO_VODA6 = FALSE)&(CIDLO_VODA7 = FALSE)&(CIDLO_VODA8 = FALSE)&(CIDLO_VODA9 = FALSE)&(CIDLO_VODA10 = FALSE)&(CIDLO_VODA11 = FALSE)&(CIDLO_VODA12 = FALSE)&(CIDLO_VODA13 = FALSE)&(CIDLO_VODA14 = FALSE))
	{
		VODA_CIDLA_DUM--
		IF (VODA_CIDLA_DUM<12)
			{
			 OFF [dvMyTP_03,29]
			CALL 'OTEVRI_VODU'
			}
		IF(VODA_CIDLA_DUM<10)
			{
			VODA_CIDLA_DUM=10
			}
	}
}

DEFINE_CALL 'ZOBRAZ STAV' (CHAR ESZ_MAM[])
{
LOCAL_VAR CHAR ALARM[1]
LOCAL_VAR CHAR STAV[1]
ALARM = "ESZ_MAM[1]"
SWITCH (ALARM)
    {
    CASE 'D':
	    {
	    SWITCH (OBJEKT)
		    {
		    CASE 1:
			    {
			    CALL 'AKCE_PRO_ODKODOVANO'
			    SEND_COMMAND dvMyTP_01,"'^UNI-90,0,0044016E004D00200041004C00410052004D0020005600590050004E00550054'"
			    SEND_COMMAND dvMyTP_01,"'^TXT-91,0,',ESZ_MAM"
			    STAV = "ESZ_MAM[6]"
			    SWITCH (STAV)
				    {
				    CASE 'O':
					    {
					    SEND_COMMAND dvMyTP_01,"'^UNI-91,0,00530054004100560020004F004B'"
					    OFF [dvMyTP_01,1153]
					    }
				    CASE 'A':
					    {
					    SEND_COMMAND dvMyTP_01,"'^UNI-91,0,0050004F0050004C00410043004800200021'"
					    ON [dvMyTP_01,1153]
					    }
				    }
			    }
		    CASE 2:
			    {
			    SEND_COMMAND dvMyTP_01,"'^UNI-78,0,00530054004100560020002D0020005600590050004E00550054004F'"
			    SEND_COMMAND dvMyTP_01,"'^TXT-93,0,',ESZ_MAM"
			    OFF [dvMyTP_01,1154]
			    STAV = "ESZ_MAM[6]"
			    SWITCH (STAV)
				    {
				    CASE 'O':
					    {
					    SEND_COMMAND dvMyTP_01,"'^UNI-93,0,00530054004100560020004F004B'"
					    OFF [dvMyTP_01,1157]
					    }
				    CASE 'A':
					    {
					    SEND_COMMAND dvMyTP_01,"'^UNI-93,0,0050004F0050004C00410043004800200021'"
					    ON [dvMyTP_01,1157]
					    }
				    }
			    }
		    CASE 3:
			    {
			    SEND_COMMAND dvMyTP_01,"'^UNI-79,0,00530054004100560020002D0020005600590050004E00550054004F'"
			    SEND_COMMAND dvMyTP_01,"'^TXT-94,0,',ESZ_MAM"
			    OFF [dvMyTP_01,1155]
			    STAV = "ESZ_MAM[6]"
			    SWITCH (STAV)
				    {
				    CASE 'O':
					    {
					    SEND_COMMAND dvMyTP_01,"'^UNI-94,0,00530054004100560020004F004B'"
					    OFF [dvMyTP_01,1158]
					    }
				    CASE 'A':
					    {
					    SEND_COMMAND dvMyTP_01,"'^UNI-94,0,0050004F0050004C00410043004800200021'"
					    ON [dvMyTP_01,1158]
					    }
				    }
			    }
		    CASE 4:
			    {
			    SEND_COMMAND dvMyTP_01,"'^UNI-92,0,00530054004100560020002D0020005600590050004E00550054004F'"
			    SEND_COMMAND dvMyTP_01,"'^TXT-95,0,',ESZ_MAM"
			    OFF [dvMyTP_01,1156]
			    STAV = "ESZ_MAM[6]"
			    SWITCH (STAV)
				    {
				    CASE 'O':
					    {
					    SEND_COMMAND dvMyTP_01,"'^UNI-95,0,00530054004100560020004F004B'"
					    OFF [dvMyTP_01,1159]
					    }
				    CASE 'A':
					    {
					    SEND_COMMAND dvMyTP_01,"'^UNI-95,0,0050004F0050004C00410043004800200021'"
					    ON [dvMyTP_01,1159]
					    }
				    }
			    }
		    }
	    }
    CASE 'A':
	    {
	    SWITCH (OBJEKT)
		    {
		    CASE 1:
			    {
			    CALL 'AKCE_PRO_ZAKODOVANO'
			    SEND_COMMAND dvMyTP_01,"'^UNI-90,0,0044016E004D0020005A00410053005401580045017D0045004E004F'"
			    SEND_COMMAND dvMyTP_01,"'^TXT-91,0,',ESZ_MAM"
			    STAV = "ESZ_MAM[6]"
			    SWITCH (STAV)
				    {
				    CASE 'O':
					    {
					    SEND_COMMAND dvMyTP_01,"'^UNI-91,0,00530054004100560020004F004B'"
					    OFF [dvMyTP_01,1153]
					    }
				    CASE 'A':
					    {
					    SEND_COMMAND dvMyTP_01,"'^UNI-91,0,0050004F0050004C00410043004800200021'"
					    ON [dvMyTP_01,1153]
					    }
				    }
			    }
		    CASE 2:
			    {
			    SEND_COMMAND dvMyTP_01,"'^UNI-78,0,00530054004100560020002D0020005A00410053005401580045017D0045004E004F'"
			    SEND_COMMAND dvMyTP_01,"'^TXT-93,0,',ESZ_MAM"
			    ON [dvMyTP_01,1154]
			    STAV = "ESZ_MAM[6]"
			    SWITCH (STAV)
				    {
				    CASE 'O':
					    {
					    SEND_COMMAND dvMyTP_01,"'^UNI-93,0,00530054004100560020004F004B'"
					    OFF [dvMyTP_01,1157]
					    }
				    CASE 'A':
					    {
					    SEND_COMMAND dvMyTP_01,"'^UNI-93,0,0050004F0050004C00410043004800200021'"
					    ON [dvMyTP_01,1157]
					    }
				    }
			    }
		    CASE 3:
			    {
			    SEND_COMMAND dvMyTP_01,"'^UNI-79,0,00530054004100560020002D0020005A00410053005401580045017D0045004E004F'"
			    SEND_COMMAND dvMyTP_01,"'^TXT-94,0,',ESZ_MAM"
			    ON [dvMyTP_01,1155]
			    STAV = "ESZ_MAM[6]"
			    SWITCH (STAV)
				    {
				    CASE 'O':
					    {
					    SEND_COMMAND dvMyTP_01,"'^UNI-94,0,00530054004100560020004F004B'"
					    OFF [dvMyTP_01,1158]
					    }
				    CASE 'A':
					    {
					    SEND_COMMAND dvMyTP_01,"'^UNI-94,0,0050004F0050004C00410043004800200021'"
					    ON [dvMyTP_01,1158]
					    }
				    }
			    }
		    CASE 4:
			    {
			    SEND_COMMAND dvMyTP_01,"'^UNI-92,0,00530054004100560020002D0020005A00410053005401580045017D0045004E004F'"
			    SEND_COMMAND dvMyTP_01,"'^TXT-95,0,',ESZ_MAM"
			    ON [dvMyTP_01,1156]
			    STAV = "ESZ_MAM[6]"
			    SWITCH (STAV)
				    {
				    CASE 'O':
					    {
					    SEND_COMMAND dvMyTP_01,"'^UNI-95,0,00530054004100560020004F004B'"
					    OFF [dvMyTP_01,1159]
					    }
				    CASE 'A':
					    {
					    SEND_COMMAND dvMyTP_01,"'^UNI-95,0,0050004F0050004C00410043004800200021'"
					    ON [dvMyTP_01,1159]
					    }
				    }
			    }
		    }
	    }
    }
    IF (VODA_VENTIL_MANUAL=0)
	{
	OFF [dvMyTP_02,303]
	ON [dvMyTP_02,302]
	}
    ELSE
	{
	OFF [dvMyTP_02,302]
	ON [dvMyTP_02,303]
	}
}


DEFINE_START

DEFINE_EVENT

TIMELINE_EVENT[TL_ESZ]
{
  SWITCH(Timeline.Sequence)
  {
    case 1:  { SEND_STRING dvEsz,"'RZ037',$0D" }
    case 2:  { SEND_STRING dvEsz,"'RZ038',$0D" }
    case 3:  { SEND_STRING dvEsz,"'RA001',$0D" }
    case 4:  { SEND_STRING dvEsz,"'RA002',$0D" }
    case 5:  { SEND_STRING dvEsz,"'RZ037',$0D" }
    case 6:  { SEND_STRING dvEsz,"'RZ038',$0D" }
    case 7:  { SEND_STRING dvEsz,"'RA003',$0D" }
    case 8:  { SEND_STRING dvEsz,"'RA004',$0D" }
    case 9:  { SEND_STRING dvEsz,"'RZ091',$0D" }
    case 10: { SEND_STRING dvEsz,"'RZ092',$0D" }
    case 11: { SEND_STRING dvEsz,"'RZ093',$0D" }
    case 12: { SEND_STRING dvEsz,"'RZ096',$0D" }
    case 13: { SEND_STRING dvEsz,"'RZ097',$0D" }
    case 14: { SEND_STRING dvEsz,"'RZ109',$0D" }
    case 15: { SEND_STRING dvEsz,"'RZ028',$0D" }
    case 16: { SEND_STRING dvEsz,"'RZ029',$0D" }
    case 17: { SEND_STRING dvEsz,"'RZ030',$0D" }
    case 18: { SEND_STRING dvEsz,"'RZ069',$0D" }
    case 19: { SEND_STRING dvEsz,"'RZ070',$0D" }
    case 20: { SEND_STRING dvEsz,"'RZ071',$0D" }
    case 21: { SEND_STRING dvEsz,"'RZ088',$0D" }
  }
}

DATA_EVENT[dvEsz]
{
  ONLINE:
	{
	  SEND_COMMAND dvEsz,"'SET BAUD 19200,N,8,1 485 DISABLE'"
	  TIMELINE_CREATE(TL_ESZ,ZABEZPEC_CAS,LENGTH_ARRAY(ZABEZPEC_CAS),TIMELINE_RELATIVE,TIMELINE_REPEAT)
	  ESZ_BUFFER = ""
	}
 STRING:
	{
	 ESZ_BUFFER = "ESZ_BUFFER,DATA.TEXT"
	 CALL 'ESZ_BUFFER_PROCESS'
	}
}

DATA_EVENT[dvTP1]
{
  ONLINE:
	{
	WAIT 5
	CALL 'ZOBRAZ_ESZ'
	}
}
DATA_EVENT[dvTP2]
{
  ONLINE:
	{
	 WAIT 10
	 CALL 'ZOBRAZ_ESZ'
	}
}
DATA_EVENT[dvTP3]
{
  ONLINE:
	{
	 WAIT 15
	 CALL 'ZOBRAZ_ESZ'
	}
}

DEFINE_PROGRAM