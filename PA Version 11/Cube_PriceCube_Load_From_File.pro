601,100
602,"Cube_PriceCube_Load_From_File"
562,"CHARACTERDELIMITED"
586,"}externals\SalesPrice_Upload_20250113180435.csv"
585,"}externals\SalesPrice_Upload_20250113180435.csv"
564,
565,"eAT;4aE@9lfI4Crj@YpVgrGrZ1D7]Z93K^^Xe]YfeUrIUa7qtQJ2^H6B;E0csyClIc834wK60t2W1rj5j`u>:1g0i<zNnw<YIt0K<d`=oJWeXwcqlEk>X<IP]N2KmcKc0=nIev@27U@qa8fxEO:ZT`8KOAOa0`;m8U]KtCk^O]nki4G2`Qa;YA]BEaIjEg<8xDa`cKUi"
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
567,","
588,"."
589,","
568,""""
570,
571,
569,1
592,0
599,1000
560,1
pFile
561,1
2
590,1
pFile,"}externals\SalesPrice_Upload_20250113180435.csv"
637,1
pFile,"Enter file name:"
577,4
vModel
vRegion
vMonth
vValue
578,4
2
2
2
1
579,4
1
2
3
4
580,4
0
0
0
0
581,4
0
0
0
0
582,4
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=33ColType=827
603,0
572,67
sFile = ''; 
DataSourceNameForServer = pFile; 
#Region ############################################# HEADER #############################################
# Process: Cube_PriceCube_Load_From_File
# Purpose: Load data into PriceCube from flat file
# Date Created: ACGI
# Last Update: 2024-01-23
# Notes: 
#     2024-01-23 (ACGI) - Initial Process Creation
#EndRegion
 
#Region --------------- Constants ---------------
cProc = GetProcessName;
cUser = NumberToString(DIMIX('}Clients', TM1USER));
cTimestamp = TIMST(now, '\Y\m\d\h\i\s');
cRandomInt = NumberToString(INT(RAND() * 1005));
cView = '%cProc%.%cUser%.%cTimestamp%.%cRandomInt%';
cTemp = 1;

cCube = 'PriceCube'; 
cView = GetProcessName | TIMST(now,  '\Y\m\d\h\i\s'); 
#EndRegion


 
#Region --------------- Variables ---------------
sView = EXPAND(cView);
nMetaHdr = 0;
nMeta = 0;
nDataHdr = 0;
nData = 0;
#EndRegion
 

#Region --------------- null ---------------
IF(ViewExists(cCube, cView) = 1);
	ViewDestroy(cCube, cView);
ENDIF;
ViewCreate(cCube, cView, cTemp);
ViewExtractSkipZeroesSet(cCube, cView, 1);
ViewExtractSkipCalcsSet(cCube, cView, 1);
ViewExtractSkipRuleValuesSet(cCube, cView, 1);
 
nLoop = 1;
nMax = CubeDimensionCountGet(cCube);
 
WHILE(nLoop <= nMax);
	sDim = TABDIM(cCube, nLoop);
 
	IF(SubsetExists(sDim, cView) = 1);
		SubsetDeleteAllElements(sDim, cView);
	ELSE;
		SubsetCreate(sDim, cView, cTemp);
    ENDIF;
 
	IF (sDim @= 'actvsbud'); 
        SubsetElementInsert(sDim, cView, 'Budget', 0); 
    	ViewSubsetAssign(cCube, cView, sDim, cView);
    ENDIF; 
 
	nLoop = nLoop + 1;
END;

ViewZeroOut(cCube, cView); 

#EndRegion

573,1

574,3

CellIncrementN(vValue, 'PriceCube', 'Budget', vRegion, vModel, vMonth ); 

575,2


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
