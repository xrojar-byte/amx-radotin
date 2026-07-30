PROGRAM_NAME='Srdce'
(***********************************************************)
(*  FILE CREATED ON: 08/11/2011  AT: 08:15:02              *)
(***********************************************************)
(*  FILE_LAST_MODIFIED_ON: 06/21/2012  AT: 09:13:47        *)
(***********************************************************)
(* SrdceTep*)
DEFINE_DEVICE

//vdSrdceTep			= 33051:1:0	

DEFINE_CONSTANT
TL_SRDCE_TEP = 15 		// HLAVNI TIMELINE PRO SRDCE
DEFINE_TYPE

DEFINE_VARIABLE


VOLATILE CHAR SrdceTep_BUFFER[150]
VOLATILE CHAR SrdceTep_TEMP[150]	//MOZNA ZBYTECNE ZPRACOVAVAM ALE NEVADI
VOLATILE CHAR SrdceTep_BUSY=FALSE
VOLATILE CHAR SrdceTep_QUEUE[150]
VOLATILE INTEGER cTEmp = 0
VOLATILE INTEGER nFAIL = 0
///////////////////////////////// 
LONG TimeArray[100] = {1000,1000}



/// SRDCE TEP ZAKLADNI CAS NASTAVIM 60:LEVEL(50-80) x1000

DEFINE_CALL 'CHANGE_TIME'
{
IF (cCASs1 <> TimeArray[1])
	{
	CALL 'SrdceTep_OFF'
	WAIT 20
	CALL 'SrdceTep_ON'
	}
ELSE
	{
	SEND_STRING 0,"'LEVEL NOT CHANGE'"
	}
}

DEFINE_CALL 'SrdceTep_ON'
{
	SrdceTep_BUSY=FALSE
	cTEmp=0
	TimeArray[1] = cCASs1   //
	TimeArray[2] = cCASs1   //
	TIMELINE_CREATE(TL_SRDCE_TEP,TimeArray,2,TIMELINE_RELATIVE,TIMELINE_REPEAT) 
	SEND_COMMAND dvMyTP_01,"'^TXT-180,0,','START'"
	SEND_COMMAND dvMyTP_01,"'^TXT-100,0,',ITOA(fTEMP1)"
	SEND_STRING 0,"'SRDCE 1 START'"
}

DEFINE_CALL 'SrdceTep_OFF'
{
	IF (TIMELINE_ACTIVE (TL_SRDCE_TEP))
			{
			TIMELINE_KILL(TL_SRDCE_TEP)
			}
	SEND_STRING 0,"'SRDCE HLAVNI STOP'"
			SEND_COMMAND dvMyTP_01,"'^TXT-180,0,','STOP'"
			CLEAR_BUFFER SrdceTep_BUFFER
			IF ((fTEMP1>40)&(fTEMP1<99))
				{
				SEND_COMMAND dvMyTP_01,"'^TXT-100,0,',ITOA(fTEMP1)"
				SEND_LEVEL dvMyTP_01, 100, LEVEL.VALUE
				}
			ELSE
				{
				SEND_COMMAND dvMyTP_01,"'^TXT-100,0,','>>:<<'"
				}
			WAIT 10
				SEND_COMMAND dvMyTP_01,"'^TXT-180,0,','RYCHLOST TEPU'"
				SrdceTep_BUSY=FALSE
}

DEFINE_CALL 'SrdceTep_BUFFER_PROCESS'
{
    INTEGER nSTART
    INTEGER nKONEC
    CHAR VALUE_TEMP[100]
    INTEGER nValueTemp
    
    nKONEC = FIND_STRING(SrdceTep_BUFFER,'Konec',1)
    IF (nKONEC)
    {
        IF (SrdceTep_BUSY=FALSE)
        {
            SrdceTep_BUSY=TRUE
            SrdceTep_TEMP = REMOVE_STRING(SrdceTep_BUFFER,'Konec',1)    
            nSTART = FIND_STRING(SrdceTep_TEMP,"'='",1)+1
            nKONEC = FIND_STRING(SrdceTep_TEMP,"'Konec'",nSTART)
            VALUE_TEMP = MID_STRING(SrdceTep_TEMP,nSTART,nKONEC-nSTART)
            
            nValueTemp = ATOI(VALUE_TEMP)  // Convert string to integer
            
            SEND_STRING 0,"'LEVEL=',itoa(LEVEL.VALUE),' VALUE_TEMP=',itoa(nValueTemp)"
            
            IF ((nValueTemp>38) && (nValueTemp<96))
            {
                fTEMP1 = nValueTemp  // Direct integer assignment
                IF (fTEMP1 != 0)     // Prevent division by zero
                {
                    fTEMP2 = 6000 / fTEMP1  // Assuming fTEMP2 should be 6000 divided by the value
                    cCASs1 = fTEMP2 * 10
                }
                SEND_STRING 0,"'fTEMP1=',itoa(fTEMP1),' fTEMP2=',itoa(fTEMP2)"
                nFAIL = 0
                CALL 'CHANGE_TIME'
            }
            ELSE
            {
                nFAIL++
                SEND_STRING 0,"'MIMO ROZSAH ',itoa(nFAIL)"
                IF (nFAIL > 5)
                {
                    fTEMP1 = 60
                    CALL 'SrdceTep_OFF'
                    nFAIL = 0
                }
            }
        }
    }
    
    IF (LENGTH_STRING(SrdceTep_BUFFER) >= MAX_LENGTH_STRING(SrdceTep_BUFFER))  
    {
        CLEAR_BUFFER SrdceTep_BUFFER
    }
    
    IF (LENGTH_STRING(SrdceTep_BUFFER))
    {
        IF (SrdceTep_BUSY=FALSE)
        {
            CALL 'SrdceTep_BUFFER_PROCESS'
        }
        ELSE
        {
            WAIT 30
            CALL 'SrdceTep_BUFFER_PROCESS'
        }
    }
}                   


DEFINE_LATCHING

DEFINE_MUTUALLY_EXCLUSIVE

DEFINE_START

DEFINE_EVENT 

TIMELINE_EVENT[TL_SRDCE_TEP]  /// POUZIVAM POUZE PRVNI DVA KROKY, ZBYTEK JE NEPOTREBNY
{
  switch(Timeline.Sequence)
	{
	   case 1: {
				CAS_SRDCE_KROK++
				cTEmp++
				CALL 'EFEKT_SRDCE_START'
				}
	   case 2: {
				CAS_SRDCE_KROK++
				cTEmp++
				CALL 'EFEKT_SRDCE_START'
				SEND_COMMAND dvMyTP_01,"'^TXT-100,0,',ITOA(fTEMP1)"
				IF (cTemp>14400)
					{
					SEND_STRING 0,"'POCITADLO KONEC'"
					CALL 'SrdceTep_OFF'
					cTEmp=0
					}
				}
	  (*
	   case 3: {
				CAS_SRDCE_KROK++
				CALL 'EFEKT_SRDCE_START'
				}
	   case 4: {
				CAS_SRDCE_KROK++
				CALL 'EFEKT_SRDCE_START'
				}
		*)
	}
  SEND_STRING 0,"'Srdce Timer ',' Event ',ITOA(Timeline.Sequence), ' Time= ',ITOA(Timeline.Time)"
}
DATA_EVENT[vdSrdceTep]
{
  ONLINE: 
	{
	  //SEND_COMMAND vdSrdceTep, 'SET BAUD 9600,N,8,1'
		SrdceTep_BUSY = FALSE
		SrdceTep_QUEUE = ""
		SrdceTep_BUFFER = ""
	}
	STRING:
	{
		SrdceTep_BUFFER = "SrdceTep_BUFFER, DATA.TEXT"
		CALL 'SrdceTep_BUFFER_PROCESS'
		//SEND_STRING 0,"'CASOVAC PRIJAL STRING'"
	}
}


DEFINE_PROGRAM

IF (!(SrdceTep_BUSY))
    CALL 'SrdceTep_BUFFER_PROCESS'


(***********************************************************)
(*                     END OF PROGRAM                      *)
(*        DO NOT PUT ANY CODE BELOW THIS COMMENT           *)
(***********************************************************)