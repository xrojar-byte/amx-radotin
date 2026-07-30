PROGRAM_NAME='ESZ'
(***********************************************************)
(*  FILE CREATED ON: 02/07/2016  AT: 09:57:57              *)
(***********************************************************)
(*  FILE_LAST_MODIFIED_ON: 10/04/2016  AT: 13:00:34        *)
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
//ZONA_94 		= 94
ZONA_96 		= 96
ZONA_97		    = 97
ZONA_109	    = 109
//ZONA_37 		= DVERE1
//ZONA_38 		= DVERE2
/////////////////////////////////
//Zahrada_OTEVRENA	= 0
//Zahrada_ZAVRENA		= 1

TL_ESZ = 19 // SETS AN ID FOR THE TIMELINE

DEFINE_VARIABLE
VOLATILE CHAR OBJEKT
VOLATILE CHAR ESZ_BUFFER[255]
VOLATILE CHAR ESZ_TEMP[100]
VOLATILE CHAR ESZ_MAM[8]
LONG ZABEZPEC_CAS[] = {900,900,900,900,900,900,900,900,900,900,900,900,900,900,900,900,900,900,900,900,900,900,900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000} //Cas pro akce 
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

DEFINE_CALL 'ESZ_BUFFER_PROCESS'
{
  IF (LENGTH_STRING(ESZ_BUFFER) > 1)
	   {
	   ESZ_TEMP = REMOVE_STRING(ESZ_BUFFER,"$0D",1)
	   IF (LENGTH_STRING(ESZ_TEMP)) 			// JE TAM ALESPON JEDNA CELA ZPRAVA, ZPRACUJU
		//SEND_STRING 0,"'ESZ TEMP: ',ESZ_TEMP"   /// JENOM PRO TESTY
		  {
		  IF (FIND_STRING(ESZ_TEMP,"'RA001'",1))
			 {
			 REMOVE_STRING(ESZ_TEMP,"'RA001'",1) // ODSTRANIM VSE DO PRIZNAKU ZACATKU ZPRAVY VCETNE
			 IF (FIND_STRING(ESZ_TEMP,"$0D",1)) // MAME I KONEC ZPRAVY?
				{
				ESZ_MAM = REMOVE_STRING(ESZ_TEMP,"$0D",1) // VYTAHNU VSE DO KONCE ZPRAVY
				SET_LENGTH_STRING(ESZ_MAM,(LENGTH_STRING(ESZ_MAM)-1)) // ODSTRANIM KONEC ZPRAVY
				(*
				IF (FIND_STRING(ESZ_MAM,"'D'",1))
					{
					SEND_STRING 0,"'DUM ALARM NEAKTIVNI'"   /// JENOM PRO TESTY
					}
				ELSE IF (FIND_STRING(ESZ_MAM,"'A'",1))
					{
					SEND_STRING 0,"'DUM ALARM AKTIVNI'"   /// JENOM PRO TESTY
					}
				*)
				//SEND_STRING 0,"'ZONA 1: <',ESZ_MAM,'>'"   /// JENOM PRO TESTY
				OBJEKT=ZONA_1
				CALL 'ZOBRAZ STAV' (ESZ_MAM)
				}
			 }
			IF (FIND_STRING(ESZ_TEMP,"'RA002'",1))
			 {
			 REMOVE_STRING(ESZ_TEMP,"'RA002'",1) // ODSTRANIM VSE DO PRIZNAKU ZACATKU ZPRAVY VCETNE
			 IF (FIND_STRING(ESZ_TEMP,"$0D",1)) // MAME I KONEC ZPRAVY?
				{
				ESZ_MAM = REMOVE_STRING(ESZ_TEMP,"$0D",1) // VYTAHNU VSE DO KONCE ZPRAVY
				SET_LENGTH_STRING(ESZ_MAM,(LENGTH_STRING(ESZ_MAM)-1)) // ODSTRANIM KONEC ZPRAVY
				//SEND_STRING 0,"'ZONA 2: <',ESZ_MAM,'>'"   /// JENOM PRO TESTY
				OBJEKT=ZONA_2
				CALL 'ZOBRAZ STAV' (ESZ_MAM)
				}
			 }
			 IF (FIND_STRING(ESZ_TEMP,"'RA003'",1))
			 {
			 REMOVE_STRING(ESZ_TEMP,"'RA003'",1) // ODSTRANIM VSE DO PRIZNAKU ZACATKU ZPRAVY VCETNE
			 IF (FIND_STRING(ESZ_TEMP,"$0D",1)) // MAME I KONEC ZPRAVY?
				{
				ESZ_MAM = REMOVE_STRING(ESZ_TEMP,"$0D",1) // VYTAHNU VSE DO KONCE ZPRAVY
				SET_LENGTH_STRING(ESZ_MAM,(LENGTH_STRING(ESZ_MAM)-1)) // ODSTRANIM KONEC ZPRAVY
				//SEND_STRING 0,"'ZONA 3: <',ESZ_MAM,'>'"   /// JENOM PRO TESTY
				OBJEKT=ZONA_3
				CALL 'ZOBRAZ STAV' (ESZ_MAM)
				}
			 }
			 IF (FIND_STRING(ESZ_TEMP,"'RA004'",1))
			 {
			 REMOVE_STRING(ESZ_TEMP,"'RA004'",1) // ODSTRANIM VSE DO PRIZNAKU ZACATKU ZPRAVY VCETNE
			 IF (FIND_STRING(ESZ_TEMP,"$0D",1)) // MAME I KONEC ZPRAVY?
				{
				ESZ_MAM = REMOVE_STRING(ESZ_TEMP,"$0D",1) // VYTAHNU VSE DO KONCE ZPRAVY
				SET_LENGTH_STRING(ESZ_MAM,(LENGTH_STRING(ESZ_MAM)-1)) // ODSTRANIM KONEC ZPRAVY
				//SEND_STRING 0,"'ZONA 4: <',ESZ_MAM,'>'"   /// JENOM PRO TESTY
				OBJEKT=ZONA_4
				CALL 'ZOBRAZ STAV' (ESZ_MAM)
				}
			 }
			IF (FIND_STRING(ESZ_TEMP,"'G000N037A001'",1)) // stav 6 bytu ukazuje O - otevreno C - zavreno
			 {
			 REMOVE_STRING(ESZ_TEMP,"'G000N037A001'",1) // ODSTRANIM VSE DO PRIZNAKU ZACATKU ZPRAVY VCETNE
			 IF (FIND_STRING(ESZ_TEMP,"$0D",1)) // MAME I KONEC ZPRAVY?
				{
				ESZ_MAM = REMOVE_STRING(ESZ_TEMP,"$0D",1) // VYTAHNU VSE DO KONCE ZPRAVY
				SET_LENGTH_STRING(ESZ_MAM,(LENGTH_STRING(ESZ_MAM)-1)) // ODSTRANIM KONEC ZPRAVY
				SEND_STRING 0,"'DVERE 37 OTEVRENY: <',ESZ_MAM,'>'"   /// JENOM PRO TESTY
				Z_DVERE1=TRUE
				//DVERE = Zahrada_OTEVRENA
				CALL 'ZOBRAZ_DVERE'
				
				}
			 }
			 IF (FIND_STRING(ESZ_TEMP,"'RZ037OOOOO'",1)) // stav 6 bytu ukazuje O - otevreno C - zavreno
			 {
			 REMOVE_STRING(ESZ_TEMP,"'RZ037OOOOO'",1) // ODSTRANIM VSE DO PRIZNAKU ZACATKU ZPRAVY VCETNE
			 IF (FIND_STRING(ESZ_TEMP,"$0D",1)) // MAME I KONEC ZPRAVY?
				{
				ESZ_MAM = REMOVE_STRING(ESZ_TEMP,"$0D",1) // VYTAHNU VSE DO KONCE ZPRAVY
				SET_LENGTH_STRING(ESZ_MAM,(LENGTH_STRING(ESZ_MAM)-1)) // ODSTRANIM KONEC ZPRAVY
				SEND_STRING 0,"'DVERE 37 OTEVRENY: <',ESZ_MAM,'>'"   /// JENOM PRO TESTY
				Z_DVERE1=TRUE
				//DVERE = Zahrada_OTEVRENA
				CALL 'ZOBRAZ_DVERE'
				
				}
			 }
			 IF (FIND_STRING(ESZ_TEMP,"'RZ037COOOO'",1)) // G001N005A006 means zone 5 in area 6 has been opened. (Event group 001= Zone open, Event number 005= zone 5, Area 006= area 6).
			 {
			 REMOVE_STRING(ESZ_TEMP,"'RZ037COOOO'",1) // ODSTRANIM VSE DO PRIZNAKU ZACATKU ZPRAVY VCETNE
			 IF (FIND_STRING(ESZ_TEMP,"$0D",1)) // MAME I KONEC ZPRAVY?
				{
				ESZ_MAM = REMOVE_STRING(ESZ_TEMP,"$0D",1) // VYTAHNU VSE DO KONCE ZPRAVY
				SET_LENGTH_STRING(ESZ_MAM,(LENGTH_STRING(ESZ_MAM)-1)) // ODSTRANIM KONEC ZPRAVY
				//SEND_STRING 0,"'DVERE 37 ZAVRENY: <',ESZ_MAM,'>'"   /// JENOM PRO TESTY
				Z_DVERE1=FALSE
				//DVERE = Zahrada_ZAVRENA
				CALL 'ZOBRAZ_DVERE'
				
				}
			 }
			IF (FIND_STRING(ESZ_TEMP,"'G000N007A001'",1)) // G001N005A006 means zone 5 in area 6 has been opened. (Event group 001= Zone open, Event number 005= zone 5, Area 006= area 6).
			 {
			 REMOVE_STRING(ESZ_TEMP,"'G000N007A001'",1) // ODSTRANIM VSE DO PRIZNAKU ZACATKU ZPRAVY VCETNE
			 IF (FIND_STRING(ESZ_TEMP,"$0D",1)) // MAME I KONEC ZPRAVY?
				{
				ESZ_MAM = REMOVE_STRING(ESZ_TEMP,"$0D",1) // VYTAHNU VSE DO KONCE ZPRAVY
				SET_LENGTH_STRING(ESZ_MAM,(LENGTH_STRING(ESZ_MAM)-1)) // ODSTRANIM KONEC ZPRAVY
				//SEND_STRING 0,"'DVERE 37 ZAVRENY: <',ESZ_MAM,'>'"   /// JENOM PRO TESTY
				Z_DVERE1=FALSE
				//DVERE = Zahrada_ZAVRENA
				CALL 'ZOBRAZ_DVERE'
				
				}
			 }
			IF (FIND_STRING(ESZ_TEMP,"'RZ038OOOOO'",1)) // Predelat - stav 6 bytu ukazuje O - otevreno C - zavreno
			 {
			 REMOVE_STRING(ESZ_TEMP,"'RZ038OOOOO'",1) // ODSTRANIM VSE DO PRIZNAKU ZACATKU ZPRAVY VCETNE
			 IF (FIND_STRING(ESZ_TEMP,"$0D",1)) // MAME I KONEC ZPRAVY?
				{
				ESZ_MAM = REMOVE_STRING(ESZ_TEMP,"$0D",1) // VYTAHNU VSE DO KONCE ZPRAVY
				SET_LENGTH_STRING(ESZ_MAM,(LENGTH_STRING(ESZ_MAM)-1)) // ODSTRANIM KONEC ZPRAVY
				SEND_STRING 0,"'DVERE 38 OTEVRENY: <',ESZ_MAM,'>'"   /// JENOM PRO TESTY
				Z_DVERE2=TRUE
				DVERE = Zahrada_OTEVRENA
				CALL 'ZOBRAZ_DVERE'
				
				}
			 }
			 IF (FIND_STRING(ESZ_TEMP,"'RZ038COOOO'",1)) // G001N005A006 means zone 5 in area 6 has been opened. (Event group 001= Zone open, Event number 005= zone 5, Area 006= area 6).
			 {
			 REMOVE_STRING(ESZ_TEMP,"'RZ038COOOO'",1) // ODSTRANIM VSE DO PRIZNAKU ZACATKU ZPRAVY VCETNE
			 IF (FIND_STRING(ESZ_TEMP,"$0D",1)) // MAME I KONEC ZPRAVY?
				{
				ESZ_MAM = REMOVE_STRING(ESZ_TEMP,"$0D",1) // VYTAHNU VSE DO KONCE ZPRAVY
				SET_LENGTH_STRING(ESZ_MAM,(LENGTH_STRING(ESZ_MAM)-1)) // ODSTRANIM KONEC ZPRAVY
				//SEND_STRING 0,"'DVERE 38 ZAVRENY: <',ESZ_MAM,'>'"   /// JENOM PRO TESTY
				Z_DVERE2=FALSE
				DVERE = Zahrada_ZAVRENA
				CALL 'ZOBRAZ_DVERE'
				
				}
			 }
			//* CIDLA VODY  *//
			IF (FIND_STRING(ESZ_TEMP,"'RZ028'",1)) 		
				{
				 REMOVE_STRING(ESZ_TEMP,"'RZ028'",1)
				 IF (FIND_STRING(ESZ_TEMP,"$0D",1))
					{
					ESZ_MAM = REMOVE_STRING(ESZ_TEMP,"$0D",1)
					SET_LENGTH_STRING(ESZ_MAM,(LENGTH_STRING(ESZ_MAM)-1)) 
					ZONA_CIDLO=ZONA_28
					CALL 'URCI CIDLA'  (ESZ_MAM)
					}
				} 
			IF (FIND_STRING(ESZ_TEMP,"'RZ029'",1)) 		
				{
				 REMOVE_STRING(ESZ_TEMP,"'RZ029'",1)
				 IF (FIND_STRING(ESZ_TEMP,"$0D",1))
					{
					ESZ_MAM = REMOVE_STRING(ESZ_TEMP,"$0D",1)
					SET_LENGTH_STRING(ESZ_MAM,(LENGTH_STRING(ESZ_MAM)-1)) 
					ZONA_CIDLO=ZONA_29
					CALL 'URCI CIDLA'  (ESZ_MAM)
					}
				}
			IF (FIND_STRING(ESZ_TEMP,"'RZ030'",1)) 		
				{
				 REMOVE_STRING(ESZ_TEMP,"'RZ030'",1)
				 IF (FIND_STRING(ESZ_TEMP,"$0D",1))
					{
					ESZ_MAM = REMOVE_STRING(ESZ_TEMP,"$0D",1)
					SET_LENGTH_STRING(ESZ_MAM,(LENGTH_STRING(ESZ_MAM)-1)) 
					ZONA_CIDLO=ZONA_30
					CALL 'URCI CIDLA'  (ESZ_MAM)
					}
				} 
			IF (FIND_STRING(ESZ_TEMP,"'RZ069'",1)) 		
				{
				 REMOVE_STRING(ESZ_TEMP,"'RZ069'",1)
				 IF (FIND_STRING(ESZ_TEMP,"$0D",1))
					{
					ESZ_MAM = REMOVE_STRING(ESZ_TEMP,"$0D",1)
					SET_LENGTH_STRING(ESZ_MAM,(LENGTH_STRING(ESZ_MAM)-1)) 
					ZONA_CIDLO=ZONA_69
					CALL 'URCI CIDLA'  (ESZ_MAM)
					}
				} 
			IF (FIND_STRING(ESZ_TEMP,"'RZ070'",1)) 		
				{
				 REMOVE_STRING(ESZ_TEMP,"'RZ070'",1)
				 IF (FIND_STRING(ESZ_TEMP,"$0D",1))
					{
					ESZ_MAM = REMOVE_STRING(ESZ_TEMP,"$0D",1)
					SET_LENGTH_STRING(ESZ_MAM,(LENGTH_STRING(ESZ_MAM)-1)) 
					ZONA_CIDLO=ZONA_70
					CALL 'URCI CIDLA'  (ESZ_MAM)
					}
				} 
			IF (FIND_STRING(ESZ_TEMP,"'RZ071'",1)) 		
				{
				 REMOVE_STRING(ESZ_TEMP,"'RZ071'",1)
				 IF (FIND_STRING(ESZ_TEMP,"$0D",1))
					{
					ESZ_MAM = REMOVE_STRING(ESZ_TEMP,"$0D",1)
					SET_LENGTH_STRING(ESZ_MAM,(LENGTH_STRING(ESZ_MAM)-1)) 
					ZONA_CIDLO=ZONA_71
					CALL 'URCI CIDLA'  (ESZ_MAM)
					}
				}
			IF (FIND_STRING(ESZ_TEMP,"'RZ088'",1)) 		
				{
				 REMOVE_STRING(ESZ_TEMP,"'RZ088'",1)
				 IF (FIND_STRING(ESZ_TEMP,"$0D",1))
					{
					ESZ_MAM = REMOVE_STRING(ESZ_TEMP,"$0D",1)
					SET_LENGTH_STRING(ESZ_MAM,(LENGTH_STRING(ESZ_MAM)-1)) 
					ZONA_CIDLO=ZONA_88
					CALL 'URCI CIDLA'  (ESZ_MAM)
					}
				}
			IF (FIND_STRING(ESZ_TEMP,"'RZ091'",1)) // G001N005A006 means zone 5 in area 6 has been opened. (Event group 001= Zone open, Event number 005= zone 5, Area 006= area 6).
				 {
				 REMOVE_STRING(ESZ_TEMP,"'RZ091'",1) // ODSTRANIM VSE DO PRIZNAKU ZACATKU ZPRAVY VCETNE
				  IF (FIND_STRING(ESZ_TEMP,"$0D",1)) // MAME I KONEC ZPRAVY?
					{
					ESZ_MAM = REMOVE_STRING(ESZ_TEMP,"$0D",1) // VYTAHNU VSE DO KONCE ZPRAVY
					SET_LENGTH_STRING(ESZ_MAM,(LENGTH_STRING(ESZ_MAM)-1)) // ODSTRANIM KONEC ZPRAVY
					//SEND_STRING 0,"'ZONA 3: <',ESZ_MAM,'>'"   /// JENOM PRO TESTY
					ZONA_CIDLO=ZONA_91
					CALL 'URCI CIDLA'  (ESZ_MAM)
					}
				 }
			 IF (FIND_STRING(ESZ_TEMP,"'RZ092'",1)) // G001N005A006 means zone 5 in area 6 has been opened. (Event group 001= Zone open, Event number 005= zone 5, Area 006= area 6).
				 {
				 REMOVE_STRING(ESZ_TEMP,"'RZ092'",1) // ODSTRANIM VSE DO PRIZNAKU ZACATKU ZPRAVY VCETNE
				 IF (FIND_STRING(ESZ_TEMP,"$0D",1)) // MAME I KONEC ZPRAVY?
					{
					ESZ_MAM = REMOVE_STRING(ESZ_TEMP,"$0D",1) // VYTAHNU VSE DO KONCE ZPRAVY
					SET_LENGTH_STRING(ESZ_MAM,(LENGTH_STRING(ESZ_MAM)-1)) // ODSTRANIM KONEC ZPRAVY
					//SEND_STRING 0,"'ZONA 92: <',ESZ_MAM,'>'"   /// JENOM PRO TESTY
					ZONA_CIDLO=ZONA_92
					CALL 'URCI CIDLA'  (ESZ_MAM)
					}
				 }
			 IF (FIND_STRING(ESZ_TEMP,"'RZ093'",1)) // G001N005A006 means zone 5 in area 6 has been opened. (Event group 001= Zone open, Event number 005= zone 5, Area 006= area 6).
				 {
				 REMOVE_STRING(ESZ_TEMP,"'RZ093'",1) // ODSTRANIM VSE DO PRIZNAKU ZACATKU ZPRAVY VCETNE
				 IF (FIND_STRING(ESZ_TEMP,"$0D",1)) // MAME I KONEC ZPRAVY?
					{
					ESZ_MAM = REMOVE_STRING(ESZ_TEMP,"$0D",1) // VYTAHNU VSE DO KONCE ZPRAVY
					SET_LENGTH_STRING(ESZ_MAM,(LENGTH_STRING(ESZ_MAM)-1)) // ODSTRANIM KONEC ZPRAVY
					//SEND_STRING 0,"'ZONA 3: <',ESZ_MAM,'>'"   /// JENOM PRO TESTY
					ZONA_CIDLO=ZONA_93
					CALL 'URCI CIDLA'  (ESZ_MAM)
					}
				 }
			IF (FIND_STRING(ESZ_TEMP,"'RZ096'",1)) 		
				{
				 REMOVE_STRING(ESZ_TEMP,"'RZ096'",1)
				 IF (FIND_STRING(ESZ_TEMP,"$0D",1))
					{
					ESZ_MAM = REMOVE_STRING(ESZ_TEMP,"$0D",1)
					SET_LENGTH_STRING(ESZ_MAM,(LENGTH_STRING(ESZ_MAM)-1)) 
					ZONA_CIDLO=ZONA_96
					CALL 'URCI CIDLA'  (ESZ_MAM)
					}
				}
			IF (FIND_STRING(ESZ_TEMP,"'RZ097'",1)) 		
				{
				 REMOVE_STRING(ESZ_TEMP,"'RZ097'",1)
				 IF (FIND_STRING(ESZ_TEMP,"$0D",1))
					{
					ESZ_MAM = REMOVE_STRING(ESZ_TEMP,"$0D",1)
					SET_LENGTH_STRING(ESZ_MAM,(LENGTH_STRING(ESZ_MAM)-1)) 
					ZONA_CIDLO=ZONA_97
					CALL 'URCI CIDLA'  (ESZ_MAM)
					}
				}
			IF (FIND_STRING(ESZ_TEMP,"'RZ109'",1)) 		
				{
				 REMOVE_STRING(ESZ_TEMP,"'RZ109'",1)
				 IF (FIND_STRING(ESZ_TEMP,"$0D",1))
					{
					ESZ_MAM = REMOVE_STRING(ESZ_TEMP,"$0D",1)
					SET_LENGTH_STRING(ESZ_MAM,(LENGTH_STRING(ESZ_MAM)-1)) 
					ZONA_CIDLO=ZONA_109
					CALL 'URCI CIDLA'  (ESZ_MAM)
					}
				}
		  }
		IF (LENGTH_STRING(ESZ_BUFFER) >= (MAX_LENGTH_STRING(ESZ_BUFFER)-20)) // MAME NESMYSLY V BUFFERU, TAK HO VYCISTIM
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
	//SEND_STRING dvEsz,"'RZ037COOOO',$0D"
	//WAIT 30
	///SEND_STRING dvEsz,"'RZ038OOOOO',$0D"
	TIMELINE_RESTART(TL_ESZ)	
}	

DEFINE_CALL 'ZOBRAZ_DVERE'
{
IF (Z_DVERE1 = TRUE)
	{
	DVERE = Zahrada_OTEVRENA
	CALL 'ZL_ZZAH_REAKCE_NA_DVERE'
	}
ELSE IF (Z_DVERE2 = TRUE)
	{
	DVERE = Zahrada_OTEVRENA
	//ZAL_1NP_ZZAH_Z3=6
	CALL 'ZL_ZZAH_REAKCE_NA_DVERE'
	}	
ELSE IF (Z_DVERE1 & Z_DVERE2 = FALSE)
	{
	DVERE = Zahrada_ZAVRENA
	//ZAL_1NP_ZZAH_Z3=0
	CALL 'ZL_ZZAH_REAKCE_NA_DVERE'
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
	
DEFINE_CALL 'URCI CIDLA' (CHAR ESZ_MAM[]) // Cidla vody v Relax + zbytek domu
{
LOCAL_VAR CHAR STAV[1]
SWITCH (ZONA_CIDLO)
    {
		CASE 28: // Kotelna // !! cidla mimo relax zpracuji jinak
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
		CASE 29: //trezor  // !! cidla mimo relax zpracuji jinak
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
		CASE 30: //poklop  // !! cidla mimo relax zpracuji jinak
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
		CASE 69: // Kuchyn 1NP  // !! cidla mimo relax zpracuji jinak
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
		CASE 70: // Kuchyn 1PP  // !! cidla mimo relax zpracuji jinak
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
		CASE 71: // Koupelna 1NP  // !! cidla mimo relax zpracuji jinak
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
		CASE 88: // Technicka mist.  // !! cidla mimo relax zpracuji jinak
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
		CASE 91:  //Jakuzza 1
			{
			STAV = "ESZ_MAM[1]"
			//SEND_STRING 0,"'CIDLO VODA1: <',STAV,'>'"
			SWITCH (STAV)
				{
				CASE 'O':
					{
					VODA_CIDLA_CITAC++ 
					ON [dvMyTP_03,31]  /// 
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
		CASE 92: //Jakuzza 2
			{
			STAV = "ESZ_MAM[1]"
			SWITCH (STAV)
				{
				CASE 'O':
					{
					VODA_CIDLA_CITAC++
					ON [dvMyTP_03,32]
					CIDLO_VODA2 = TRUE
					VODA_CIDLA_CITAC++
					}
				CASE 'C':
					{
					//SEND_COMMAND dvMyTP_01,"'^UNI-91,0,0050004F0050004C00410043004800200021'"
					OFF [dvMyTP_03,32]
					CIDLO_VODA2 = FALSE
					VODA_CIDLA_CITAC--
					}
			    }
			}
		CASE 93: //Jakuzza 3
			{
			STAV = "ESZ_MAM[1]"
			SWITCH (STAV)
				{
				CASE 'O':
					{
					VODA_CIDLA_CITAC++
					ON [dvMyTP_03,33]
					CIDLO_VODA3 = TRUE
					VODA_CIDLA_CITAC++
					CALL 'ZPRACUJ_VODU'
					}
				CASE 'C':
					{
					//SEND_COMMAND dvMyTP_01,"'^UNI-91,0,0050004F0050004C00410043004800200021'"
					OFF [dvMyTP_03,33]
					CIDLO_VODA4 = FALSE
					VODA_CIDLA_CITAC--
					CALL 'ZPRACUJ_VODU'
					}
			    }
			}
		CASE 96: // WC 1NP  // !! cidla mimo relax zpracuji jinak
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
		CASE 97: // Koupelna 2NP  // !! cidla mimo relax zpracuji jinak
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
		CASE 109: // Pracovna  // !! cidla mimo relax zpracuji jinak
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

DEFINE_CALL 'ZPRACUJ_VODU'	// Zavrit nebo otevrit vodu pro cidla RELAX	
{
IF(VODA_CIDLA_CITAC<9)
	{
	VODA_CIDLA_CITAC=9
	}
IF (VODA_CIDLA_CITAC>12)
	{
	IF (VODA_VENTIL_MANUAL=0)
	    {
	     SEND_STRING 0,"'ZAVRI VODU CIDLA RELAX'"   /// JENOM PRO TESTY
	     ON [dvMyTP_03,29]
	     CALL 'ZAVRI_VODU'
	    }
	ELSE
	    {
	    /// ZDE JE MOZNE PRIPADNE VLOZIT PRODLEVU PO KTERE SE VRATI DO 0
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
	    //SEND_STRING 0,"'OTEVRI VODU'"   /// JENOM PRO TESTY
	    OFF [dvMyTP_03,29]
	    CALL 'OTEVRI_VODU'
	    }
	ELSE
	    {
	    /// ZDE JE MOZNE PRIPADNE VLOZIT PRODLEVU PO KTERE SE VRATI DO 0
	    }
	}

}

DEFINE_CALL 'ZPRACUJ_DUM'	// Zavrit nebo otevrit vodu pro cidla typ 2
{
IF (VODA_CIDLA_DUM>12)
	{
	IF (VODA_VENTIL_MANUAL=0)
	    {
	    SEND_STRING 0,"'ZAVRI VODU CIDLA2'"   /// JENOM PRO TESTY
	    ON [dvMyTP_03,29]
	    CALL 'ZAVRI_VODU'
	     }
	ELSE
	    {
	    /// ZDE JE MOZNE PRIPADNE VLOZIT PRODLEVU PO KTERE SE VRATI DO 0
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
	    //SEND_STRING 0,"'OTEVRI VODU'"   /// JENOM PRO TESTY
	    OFF [dvMyTP_03,29]
	    CALL 'OTEVRI_VODU'
	      }
	ELSE
	    {
	    /// ZDE JE MOZNE PRIPADNE VLOZIT PRODLEVU PO KTERE SE VRATI DO 0
	    }
	}
}	
(* *)

DEFINE_CALL 'ODECTI_DUM'	// CIDLA DUM VERZE 2	
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

DEFINE_CALL 'ZOBRAZ STAV' (CHAR ESZ_MAM[]) // ALARM ZOBRAZENI NA DISPLAY
{
LOCAL_VAR CHAR ALARM[1]
LOCAL_VAR CHAR STAV[1]
ALARM = "ESZ_MAM[1]"
SWITCH (ALARM)
    {
    CASE 'D':		// Hlavni dum
	    {
	    SWITCH (OBJEKT)
		    {
		    CASE 1:
			    {
			    CALL 'AKCE_PRO_ODKODOVANO'
			    SEND_COMMAND dvMyTP_01,"'^UNI-90,0,0044016E004D00200041004C00410052004D0020005600590050004E00550054'"
			    SEND_COMMAND dvMyTP_01,"'^TXT-91,0,',ESZ_MAM" //
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
			    //SEND_STRING 0,"'Z2 ALARM NEAKTIVNI'"   /// JENOM PRO TESTY
			    SEND_COMMAND dvMyTP_01,"'^UNI-78,0,00530054004100560020002D0020005600590050004E00550054004F'"
			    SEND_COMMAND dvMyTP_01,"'^TXT-93,0,',ESZ_MAM" //
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
					    // AKCE PRO POPLACH
					    }
				    }
			    }
		    CASE 3:
			    {
			    //SEND_STRING 0,"'Z3 ALARM NEAKTIVNI'"   /// JENOM PRO TESTY
			    SEND_COMMAND dvMyTP_01,"'^UNI-79,0,00530054004100560020002D0020005600590050004E00550054004F'"
			    SEND_COMMAND dvMyTP_01,"'^TXT-94,0,',ESZ_MAM" // 
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
					    // AKCE PRO POPLACH
					    }
				    }
			    }
		    CASE 4:
			    {
			    //SEND_STRING 0,"'Z4 ALARM NEAKTIVNI'"   /// JENOM PRO TESTY
			    SEND_COMMAND dvMyTP_01,"'^UNI-92,0,00530054004100560020002D0020005600590050004E00550054004F'"
			    SEND_COMMAND dvMyTP_01,"'^TXT-95,0,',ESZ_MAM" //
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
					    // AKCE PRO POPLACH
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
			    //SEND_STRING 0,"'DUM ALARM AKTIVNI'"   /// JENOM PRO TESTY
			    CALL 'AKCE_PRO_ZAKODOVANO'
			    SEND_COMMAND dvMyTP_01,"'^UNI-90,0,0044016E004D0020005A00410053005401580045017D0045004E004F'"
			    SEND_COMMAND dvMyTP_01,"'^TXT-91,0,',ESZ_MAM" //
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
			    //SEND_STRING 0,"'Z2 ALARM AKTIVNI'"   /// JENOM PRO TESTY
			    SEND_COMMAND dvMyTP_01,"'^UNI-78,0,00530054004100560020002D0020005A00410053005401580045017D0045004E004F'"
			    SEND_COMMAND dvMyTP_01,"'^TXT-93,0,',ESZ_MAM" // 
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
					    // AKCE PRO POPLACH
					    }
				    }
			    }
		    CASE 3:
			    {
			    //SEND_STRING 0,"'Z3 ALARM AKTIVNI'"   /// JENOM PRO TESTY
			    SEND_COMMAND dvMyTP_01,"'^UNI-79,0,00530054004100560020002D0020005A00410053005401580045017D0045004E004F'"
			    SEND_COMMAND dvMyTP_01,"'^TXT-94,0,',ESZ_MAM" //
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
					    // AKCE PRO POPLACH
					    }
				    }
			    }
		    CASE 4:
			    {
			    //SEND_STRING 0,"'Z4 ALARM AKTIVNI'"   /// JENOM PRO TESTY
			    SEND_COMMAND dvMyTP_01,"'^UNI-92,0,00530054004100560020002D0020005A00410053005401580045017D0045004E004F'"
			    SEND_COMMAND dvMyTP_01,"'^TXT-95,0,',ESZ_MAM" //
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
					    // AKCE PRO POPLACH
					    }
				    }
			    }
		    }
	    }
    CASE 'S':
	    {
	    SEND_STRING 0,"'DUM ALARM STAY'"   /// JENOM PRO TESTY
	    }
    CASE 'F':
	    {
	    SEND_STRING 0,"'DUM ALARM FORCE'"   /// JENOM PRO TESTY
	    }
    CASE 'I':
	    {
	    SEND_STRING 0,"'DUM ALARM STAY I'"   /// JENOM PRO TESTY
	    }
    }
    IF (VODA_VENTIL_MANUAL=0)	// 0=AUTOMAT
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

//CREATE_BUFFER dvEsz, ESZ_BUFFER[255]


DEFINE_EVENT

TIMELINE_EVENT[TL_ESZ]    // EVENTS FOR TIMELINE
{
  
  SWITCH(Timeline.Sequence)
  {
    case 1:{          
			SEND_STRING dvEsz,"'RZ037',$0D"
			}
    case 2:{     
			SEND_STRING dvEsz,"'RZ038',$0D"
           }   
   case 3:{          // First Event
			SEND_STRING dvEsz,"'RA001',$0D"
           }
    case 4:{          // Second Event
			SEND_STRING dvEsz,"'RA002',$0D"
           }
	case 5:{          
			SEND_STRING dvEsz,"'RZ037',$0D"
			}
    case 6:{     
			SEND_STRING dvEsz,"'RZ038',$0D"
           }     
    case 7:{          // Third Event
              SEND_STRING dvEsz,"'RA003',$0D"
				}
    case 8:{          // Forth Event
             SEND_STRING dvEsz,"'RA004',$0D"
           }
    case 9:{          
			SEND_STRING dvEsz,"'RZ091',$0D"
			}
    case 10:{     
			SEND_STRING dvEsz,"'RZ092',$0D"
           }        
    case 11:{          // 7th Event
            SEND_STRING dvEsz,"'RZ093',$0D"
           } 
    case 12:{          // 8th Event
            SEND_STRING dvEsz,"'RZ096',$0D"
           }   
    case 13:{          // 8th Event
            SEND_STRING dvEsz,"'RZ097',$0D"
           }        		   
    case 14:{          // 8th Event
            SEND_STRING dvEsz,"'RZ109',$0D"
           }        
    case 15:{          // 8th Event
            SEND_STRING dvEsz,"'RZ028',$0D"
           }        
    case 16:{          // 8th Event
            SEND_STRING dvEsz,"'RZ029',$0D"
           }        
    case 17:{          // 8th Event
            SEND_STRING dvEsz,"'RZ030',$0D"
           }        
    case 18:{          // 8th Event
            SEND_STRING dvEsz,"'RZ069',$0D"
           }        
    case 19:{          // 8th Event
            SEND_STRING dvEsz,"'RZ070',$0D"
           }        
    case 20:{          // 8th Event
            SEND_STRING dvEsz,"'RZ071',$0D"
           }   
    case 21:{          // 8th Event
            SEND_STRING dvEsz,"'RZ088',$0D"
           }  		   

  }
}

DATA_EVENT[dvEsz]
{
  ONLINE: 
	{
	  SEND_COMMAND dvEsz,"'SET BAUD 19200,N,8,1 485 DISABLE'"
	  TIMELINE_CREATE(TL_ESZ,ZABEZPEC_CAS,21,TIMELINE_RELATIVE,TIMELINE_REPEAT)  
	  ESZ_BUFFER = "" // Vynulovani
	}
 STRING: 
	{
	 ESZ_BUFFER = "ESZ_BUFFER,DATA.TEXT"
	 CALL 'ESZ_BUFFER_PROCESS'
	}
}

DATA_EVENT[dvTP1]	//
{
  ONLINE: 
	{
	WAIT 5
	CALL 'ZOBRAZ_ESZ'
	}
} 
DATA_EVENT[dvTP2]	//
{
  ONLINE: 
	{
	 WAIT 10
	 CALL 'ZOBRAZ_ESZ'
	}
} 	
DATA_EVENT[dvTP3]	//
{
  ONLINE: 
	{
	 WAIT 15
	 CALL 'ZOBRAZ_ESZ'
	}
} 
		
DEFINE_PROGRAM


(***********************************************************)
(*                     END OF PROGRAM                      *)
(*        DO NOT PUT ANY CODE BELOW THIS COMMENT           *)
(***********************************************************)

