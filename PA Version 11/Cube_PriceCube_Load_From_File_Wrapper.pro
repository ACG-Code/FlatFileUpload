601,100
602,"Cube_PriceCube_Load_From_File_Wrapper"
562,"CHARACTERDELIMITED"
586,"}applications/Upload Files/SalesPrice_Upload.csv.blob"
585,"}applications/Upload Files/SalesPrice_Upload.csv.blob"
564,
565,"ftLm?xa]CxewE<R4S7j^pXj6BY1v<MlQvzec\1UGV=?Pq;ycq:kqzxd[qoucBfLa];egmrUu]eb5BAOZJbT@pAMQcLx:3Hj;ZZO<6Q?]Hw=5UwF]yWyS_HQSSscgcNZgewpTsTUI2452298R79M2b\F1rOl^dYMi0;VO[kW<MnoruY2ZYsbn=g4_6CWR4yI<thpUK33^"
559,1
928,0
593,
594,
595,
597,
598,
596,
800,
801,
566,0
567,"="
588,"."
589,","
568,""""
570,
571,
569,3
592,0
599,1000
560,0
561,0
590,0
637,0
577,1
vFile
578,1
2
579,1
2
580,1
0
581,1
0
582,2
IgnoredInputVarName=v1VarType=32ColType=1165
VarType=32ColType=827
603,0
572,10

#Region ############################################# HEADER #############################################
# Process: Cube_PriceCube_Load_From_File_Wrapper
# Purpose: Parse blob file to determine name of uploaded data file and execute process to load
# Date Created: ACGI
# Last Update: 2024-01-23
# Notes: 
#     2024-01-23 (ACGI) - Initial Process Creation
#EndRegion
 
573,1

574,7

#* Parse file name and location from blob file
nFileNameStart = SCAN('\',vFile) ;
IF(nFileNameStart > 0);
    sFile = '.' | TRIM(SUBST(vFile, nFileNameStart , LONG(vFile)));
ENDIF;

575,11

IF (sFile @<> ''); 
    IF (FileExists(sFile) = 0); 
        LogOutput('ERROR',sFile | ' does not exist!');
        ProcessError; 
    ENDIF; 
    #* Execute process to load data to cube
    ExecuteProcess('Cube_PriceCube_Load_From_File', 'pFile', sFile); 
ENDIF;


576,_ParameterConstraints=e30=
930,0
638,1
804,0
1217,0
900,
901,
902,
938,0
937,
936,
935,
934,
932,0
933,0
903,
906,
929,
907,
908,
904,0
905,0
909,0
911,
912,
913,
914,
915,
916,
917,0
918,1
919,0
920,50000
921,""
922,""
923,0
924,""
925,""
926,""
927,""
