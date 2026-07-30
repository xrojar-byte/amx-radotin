PROGRAM_NAME='Virt_zaluz'
(***********************************************************)
(*  FILE CREATED ON: 08/11/2024  AT: 08:15:02              *)
(***********************************************************)
(*  FILE_LAST_MODIFIED_ON: 06/21/2024  AT: 09:13:47        *)  
(*
  TENTO MODUL BYL PUVODNE ZAMYSLEN JINAK, DOUFAM, ZE NA TO 
  NAJDU CAS
  MOMENTALE SLOUZI POUZE JAKO ZPOZDENI - FRONTA PRO PRIKAZY, 
  KTERE MOHLO BYT PRIMO V MODULU ZALUZII
  COZ JE ZBYTECNE A BUDU RUSIT
*)
(*  FILE_LAST_MODIFIED_ON: 06/21/2024  AT: 09:13:47        *)
(***********************************************************)
DEFINE_DEVICE
//dvILight = 5001:1:0 // RS232 Port pro systém iLight

DEFINE_CONSTANT
ZAL_P_00  = 0  // pridano
ZAL_P_01  = 1  // pridano
ZAL_P_02  = 2  // pridano
ZAL_P_03  = 3  // pridano

MAX_QUEUE_SIZE = 10 // Maximální velikost fronty
COMMAND_PROCESSING_DELAY = 8 // Doba zpracování jednoho príkazu (0,8 sekundy = 8 * 100 ms)

DEFINE_VARIABLE
CHAR cCommandQueue[MAX_QUEUE_SIZE][50] // Fronta príkazu (max 10 príkazu)
INTEGER nQueueHead = 1 // Ukazatel na hlavu fronty
INTEGER nQueueTail = 1 // Ukazatel na konec fronty
INTEGER nQueueCount = 0 // Pocet príkazu ve fronte
INTEGER nCommandInProgress = 0 // Indikátor zpracování príkazu

VOLATILE CHAR ZALUZ_POVEL  // pridano

DEFINE_FUNCTION SEND_COMMAND_TO_ILIGHT(CHAR cCommand[])
{
    nCommandInProgress = 1 // Oznacíme, že príkaz je ve zpracování
    //SEND_STRING dvILight, cCommand // Odeslání príkazu do iLight
	CALL 'ZALUZ_PRIKAZ' (cCommand)

    // Spustí casovac pro cekání na další príkaz
    WAIT(COMMAND_PROCESSING_DELAY) // Cekání 0,5 sekundy
    {
        nCommandInProgress = 0 // Po cekání povolíme zpracování dalšího príkazu
        PROCESS_COMMAND_QUEUE()
    }
}

DEFINE_FUNCTION PROCESS_COMMAND_QUEUE()
{
    // Pokud není žádný príkaz ve zpracování a ve fronte jsou príkazy
    IF (!nCommandInProgress && nQueueCount > 0)
    {
        // Odeslání príkazu z hlavy fronty
        SEND_COMMAND_TO_ILIGHT(cCommandQueue[nQueueHead])

        // Posun ukazatele na další príkaz ve fronte a aktualizace poctu príkazu
        nQueueHead = (nQueueHead MOD MAX_QUEUE_SIZE) + 1
        nQueueCount--
    }
}

DEFINE_FUNCTION ADD_COMMAND_TO_QUEUE(CHAR cCommand[])
{
    // Kontrola, zda je fronta plná
    IF (nQueueCount == MAX_QUEUE_SIZE)
    {
        // Odeslání chybového hlášení, pokud je fronta plná
        SEND_STRING 0, "'ERROR: Command queue is full. Cannot add new command.', $0D"
    }
    ELSE
    {
        // Pridání príkazu do fronty
        cCommandQueue[nQueueTail] = cCommand

        // Posun ukazatele na konec fronty a aktualizace poctu príkazu
        nQueueTail = (nQueueTail MOD MAX_QUEUE_SIZE) + 1
        nQueueCount++

        // Zpracování fronty
        PROCESS_COMMAND_QUEUE()
    }
}
///********************** PRIDANO *******************************///
DEFINE_CALL 'ZALUZ_RESET' // Pres cidlo
{
  ADD_COMMAND_TO_QUEUE ("ZALUZ_POVEL=1")
}

DEFINE_CALL 'ZALUZ_SLUNCE_V_DOLU' // Pres cidlo
{
  ADD_COMMAND_TO_QUEUE ("ZALUZ_POVEL=ZAL_P_01")
}

DEFINE_CALL 'ZALUZ_ZZ_V_DOLU' // Pres cidlo
{
  ADD_COMMAND_TO_QUEUE ("2")
  //ADD_COMMAND_TO_QUEUE("'UP', $0D") 
}

DEFINE_CALL 'ZALUZ_ZZ_V_STOP' // Pres cidlo
{
  ADD_COMMAND_TO_QUEUE ("ZAL_P_03")
}

DEFINE_CALL 'ZALUZ_PRIKAZ' (ZALUZ_POVEL[])
{
SEND_STRING 0,"'PRISEL PRIKAZ'"
SWITCH (ZALUZ_POVEL)
			{
			CASE 0:
				{
				//CALL 'SLUNCE_VYCHOD_DOLU'
				SEND_STRING 0,"'z0'"
				//WAIT 33
				//nCommandInProgress = 0
				//PROCESS_COMMAND_QUEUE()
				}
			CASE 1:
				{
				//CALL 'SLUNCE_VYCHOD_DOLU'
				SEND_STRING 0,"'z1'"
				//WAIT 33
				//nCommandInProgress = 0
				//PROCESS_COMMAND_QUEUE()
				}
			CASE 2:
				{
				CALL 'ZL_ZZAHRAD_VYCHODZ_DOLU'  /// Test
				SEND_STRING 0,"'z2 DOLU'"
				//WAIT 55
				//	{
				//	nCommandInProgress = 0
				//	PROCESS_COMMAND_QUEUE()
				//	}
				}
			CASE 3:
				{
				CALL 'ZL_ZZAHRAD_VYCHODZ_STOP'  /// Test
				SEND_STRING 0,"'z2 STOP'"
				//WAIT 15
				//	{
				//	nCommandInProgress = 0
				//	PROCESS_COMMAND_QUEUE()
				//	}
				}
			DEFAULT:
				{
					SEND_STRING 0,"'NEURCENO'"
					WAIT 100
						{
						nCommandInProgress = 0
						PROCESS_COMMAND_QUEUE()
						}
				}
			}
		
}
///********************** KONEC PRIDANO *******************************///




DEFINE_EVENT
DATA_EVENT[dvILight]
{
    ONLINE:
    {
        // Zarízení je online, mužeme poslat úvodní príkazy nebo inicializovat komunikaci
        SEND_STRING 0, "'System is now online.', $0D"
    }

    STRING:
    {
        // Prijali jsme odpoved od iLight systému
        nCommandInProgress = 0 // Resetování príznaku zpracování príkazu

        // Zpracování dalšího príkazu ve fronte
        PROCESS_COMMAND_QUEUE()
    }
}

DEFINE_START
{
    // Pridání príkazu do fronty (ukázka)
   // ADD_COMMAND_TO_QUEUE("'UP', $0D")    // Povel pro zdvihnutí žaluzií
   // ADD_COMMAND_TO_QUEUE("'DOWN', $0D")  // Povel pro spuštení žaluzií
   // ADD_COMMAND_TO_QUEUE("'STOP', $0D")  // Povel pro zastavení žaluzií
}

(*
DEFINE_DEVICE

//vdZaluzie			= 33051:1:0	
//dvIlight = 5001:6:0 // RS232 Port pro systém iLight

DEFINE_CONSTANT
ZAL_P_00  = 0
ZAL_P_01  = 1
ZAL_P_02  = 2
ZAL_P_03  = 3

DEFINE_VARIABLE

VOLATILE CHAR cCommandQueue[10][50] // Fronta príkazu (max 20 príkazu)
VOLATILE CHAR ZALUZ_POVEL	
VOLATILE INTEGER nQueueHead = 1 // Ukazatel na hlavu fronty
VOLATILE INTEGER nQueueTail = 1 // Ukazatel na konec fronty
VOLATILE INTEGER nQueueSize = 10 // Maximální velikost fronty
VOLATILE INTEGER nCommandInProgress = 0 // Indikátor zpracování príkazu


DEFINE_FUNCTION SEND_COMMAND_TO_ILIGHT(CHAR cCommand[])
{
    // nCommandInProgress = 1
    //SEND_STRING dvIlight, cCommand
	CALL 'ZALUZ_PRIKAZ' (cCommand)
}

DEFINE_FUNCTION PROCESS_COMMAND_QUEUE()
{
    // Pokud není žádný príkaz ve zpracování a ve fronte jsou príkazy
    IF (!nCommandInProgress && nQueueHead != nQueueTail)
    {
        // Odeslání príkazu z hlavy fronty
        SEND_COMMAND_TO_ILIGHT(cCommandQueue[nQueueHead])

        // Posun ukazatele na další príkaz ve fronte
        nQueueHead = (nQueueHead % nQueueSize) + 1
    }
	(*
	IF (LENGTH_STRING(nQueueSize) >= MAX_LENGTH_STRING(nQueueSize))
		{
		CLEAR_BUFFER cCommandQueue // Clear it.
		}
	*)
	
}

DEFINE_FUNCTION ADD_COMMAND_TO_QUEUE(CHAR cCommand[])
{
    // Pridání príkazu do fronty
    cCommandQueue[nQueueTail] = cCommand

    // Posun ukazatele na konec fronty
    nQueueTail = (nQueueTail % nQueueSize) + 1

    // Zpracování fronty
    PROCESS_COMMAND_QUEUE()
}

DEFINE_CALL 'ZALUZ_RESET' // Pres cidlo
{
  ADD_COMMAND_TO_QUEUE ("ZALUZ_POVEL=0")
}

DEFINE_CALL 'ZALUZ_SLUNCE_V_DOLU' // Pres cidlo
{
  ADD_COMMAND_TO_QUEUE ("ZALUZ_POVEL=ZAL_P_01")
}

DEFINE_CALL 'ZALUZ_ZZ_V_DOLU' // Pres cidlo
{
  ADD_COMMAND_TO_QUEUE ("ZALUZ_POVEL=2")
}

DEFINE_CALL 'ZALUZ_ZZ_V_STOP' // Pres cidlo
{
  ADD_COMMAND_TO_QUEUE ("ZALUZ_POVEL=ZAL_P_03")
}



/// DEFINE_CALL 'ZALUZ_PRIKAZ' (CHAR ZALUZ_POVEL[])
DEFINE_CALL 'ZALUZ_PRIKAZ' (ZALUZ_POVEL[])
{
nCommandInProgress = 1
SWITCH (ZALUZ_POVEL)
			{
			CASE 0:
				{
				//CALL 'SLUNCE_VYCHOD_DOLU'
				SEND_STRING 0,"ZALUZ_POVEL, 'z0'"
				WAIT 33
				nCommandInProgress = 0
				PROCESS_COMMAND_QUEUE()
				}
			CASE 1:
				{
				//CALL 'SLUNCE_VYCHOD_DOLU'
				SEND_STRING 0,"ZALUZ_POVEL, 'z1'"
				WAIT 33
				nCommandInProgress = 0
				PROCESS_COMMAND_QUEUE()
				}
			CASE 2:
				{
				CALL 'ZL_ZZAHRAD_VYCHODZ_DOLU'  /// Test
				SEND_STRING 0,"ZALUZ_POVEL, 'z2'"
				WAIT 55
					{
					nCommandInProgress = 0
					PROCESS_COMMAND_QUEUE()
					}
				}
			CASE ZAL_P_03:
				{
				CALL 'ZL_ZZAHRAD_VYCHODZ_STOP'  /// Test
				SEND_STRING 0,"ZALUZ_POVEL, 'z2'"
				WAIT 15
					{
					nCommandInProgress = 0
					PROCESS_COMMAND_QUEUE()
					}
				}
			DEFAULT:
				{
					SEND_STRING 0,"'NEURCENO'"
					WAIT 100
						{
						nCommandInProgress = 0
						PROCESS_COMMAND_QUEUE()
						}
				}
			}
		
}

DEFINE_START
{ 
    // Pridání príkazu do fronty (ukázka)
    //ADD_COMMAND_TO_QUEUE("CALL 'Zaluzie2_Koupelna_Stop'")    // Povel pro zdvihnutí žaluzií
    //ADD_COMMAND_TO_QUEUE("'DOWN'\r")  // Povel pro spuštení žaluzií
    //ADD_COMMAND_TO_QUEUE("'STOP'\r")  // Povel pro zastavení žaluzií
}

 
DEFINE_EVENT

    // Událost pri prijetí odpovedi od iLight systému
    DATA_EVENT[vdZaluzie]
    {
       ONLINE: 
		{
            // Odpoved od systému zpracována, povolit další príkaz z fronty
            CALL 'ZALUZ_RESET'
			nCommandInProgress = 0
            PROCESS_COMMAND_QUEUE()
        }
    }
	(**)

*)
(*
DEFINE_CALL 'PRIKAZ_ZALUZIE' (CHAR cCMD[])
{
	ZAL_QUEUE = "ZAL_QUEUE,'@',cCMD,$0D" // PRIDAM DO FRONTY A PRIDAM ZACATEK+KONEC ZPRAVY
  IF (!(ZALUZ_BUSY)) // MUZEME POSLAT HNED, JINAK JEN NECHAME VE FRONTE
	{
	  CALL 'ODESLAT_NA_ILIGHT'
	}
}

DEFINE_CALL 'ODESLAT_NA_ILIGHT'
{
    ZALUZ_TEMP = REMOVE_STRING(ZAL_QUEUE,"$0D",1)
    IF (LENGTH_STRING(ZALUZ_TEMP) > 0)
	   {
	   CANCEL_WAIT 'ZALUZ_TIMEOUT_BUSY' 
	   ZALUZ_BUSY = TRUE
	   // SEND_STRING dvIlight,"ZALUZ_TEMP"
	   SEND_STRING 0,"ZALUZ_TEMP"
	   WAIT 10 'ZALUZ_TIMEOUT_BUSY' 
		  {
			ZALUZ_BUSY = FALSE
		  }
	   }
    ELSE  (* Garbage *)
	   {
		ZAL_QUEUE = "''"
	   }
}




///////////////////////////////// 

                  
DEFINE_CALL 'ZaluzTep_BUFFER_PROCESS'
{
	INTEGER nSTART
	INTEGER nKONEC
	CHAR VALUE_TEMP[100]
	nKONEC = FIND_STRING(ZaluzTep_BUFFER,'Konec',1)
	IF (nKONEC)
		{
		IF (ZaluzTep_BUSY=FALSE)
			{
			ZaluzTep_BUSY=TRUE
			//SEND_STRING 0,"'BUFFER NASEL KONEC'"
			ZALUZ_TEMP = REMOVE_STRING(ZaluzTep_BUFFER,'Konec',1)	
			nSTART = FIND_STRING(ZALUZ_TEMP,"'='",1)+1 // POSUNUTI ZA =
			nKONEC = FIND_STRING(ZALUZ_TEMP,"'Konec'",nSTART) // KONEC ZPRAVY
			VALUE_TEMP = MID_STRING(ZALUZ_TEMP,nSTART,nKONEC-nSTART)
			SEND_STRING 0,"'LEVEL=',itoa(LEVEL.VALUE),' VALUE_TEMP=',itoa(VALUE_TEMP)"
			IF ((VALUE_TEMP>38)&(VALUE_TEMP<96))
				{
				fTEMP1[1]=VALUE_TEMP[1]
				fTEMP1[2]=VALUE_TEMP[2]
				fTEMP2=6000/fTEMP1
				cCASs1=fTEMP2*10
				SEND_STRING 0,"'fTEMP1=',itoa(fTEMP1),' fTEMP2=',itoa(fTEMP2)"
				nFAIL=0
				//SEND_LEVEL dvMyTPs, 100, LEVEL.VALUE
				CALL 'CHANGE_TIME'
				}
			ELSE
				{
				nFAIL++
				SEND_STRING 0,"'MIMO ROZSAH ',itoa(nFAIL)"
				IF (nFAIL> 5)
					{
					fTEMP1=60
					CALL 'ZaluzTep_OFF'
					nFAIL=0
					}
				}
			}
		}
	IF (LENGTH_STRING(ZaluzTep_BUFFER) >= MAX_LENGTH_STRING(ZaluzTep_BUFFER))  
		{
		CLEAR_BUFFER ZaluzTep_BUFFER // Clear it.
		}
	IF (LENGTH_STRING(ZaluzTep_BUFFER))
		{
		IF (ZaluzTep_BUSY=FALSE)
			{
			CALL 'ZaluzTep_BUFFER_PROCESS'
			}
		ELSE
			{
			WAIT 30
			CALL 'ZaluzTep_BUFFER_PROCESS'
			}
		}
}



DEFINE_LATCHING

DEFINE_MUTUALLY_EXCLUSIVE

DEFINE_START

DEFINE_EVENT 


DATA_EVENT[vdZaluzTep]
{
  ONLINE: 
	{
	  //SEND_COMMAND vdZaluzTep, 'SET BAUD 9600,N,8,1'
		ZaluzTep_BUSY = FALSE
		ZaluzTep_QUEUE = ""
		ZaluzTep_BUFFER = ""
	}
	STRING:
	{
		ZaluzTep_BUFFER = "ZaluzTep_BUFFER, DATA.TEXT"
		CALL 'ZaluzTep_BUFFER_PROCESS'
		//SEND_STRING 0,"'CASOVAC PRIJAL STRING'"
	}
}


DEFINE_PROGRAM

IF (!(ZaluzTep_BUSY))
    CALL 'ZaluzTep_BUFFER_PROCESS'
*)

(***********************************************************)
(*                     END OF PROGRAM                      *)
(*        DO NOT PUT ANY CODE BELOW THIS COMMENT           *)
(***********************************************************)