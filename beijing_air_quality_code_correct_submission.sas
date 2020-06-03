TITLE1 "Cleaning 'Beijing Air Quality' Data Sets in SAS"; 


 
TITLE2 "Importing the CSV files."; 


FILENAME aot '/folders/myfolders/stat440data/PRSA_Data_Aotizhongxin.csv'; 
PROC IMPORT DATAFILE=aot 
	DBMS=CSV 
	OUT=data_aot; 
	GETNAMES=YES;  
	GUESSINGROWS=MAX; 
RUN; 
 
FILENAME chp '/folders/myfolders/stat440data/PRSA_Data_Changping.csv'; 
PROC IMPORT DATAFILE=chp 
	DBMS=CSV 
	OUT=data_chp; 
	GETNAMES=YES;  
	GUESSINGROWS=MAX; 
RUN; 
 
FILENAME dgl '/folders/myfolders/stat440data/PRSA_Data_Dingling.csv'; 
PROC IMPORT DATAFILE=dgl 
	DBMS=CSV 
	OUT=data_dgl; 
	GETNAMES=YES;  
	GUESSINGROWS=MAX; 
RUN; 
 
FILENAME dsi '/folders/myfolders/stat440data/PRSA_Data_Dongsi.csv'; 
PROC IMPORT DATAFILE=dsi 
	DBMS=CSV 
	OUT=data_dsi; 
	GETNAMES=YES;  
	GUESSINGROWS=MAX; 
RUN; 
FILENAME gyn '/folders/myfolders/stat440data/PRSA_Data_Guanyuan.csv'; 
PROC IMPORT DATAFILE=gyn 
	DBMS=CSV 
	OUT=data_gyn; 
	GETNAMES=YES;  
	GUESSINGROWS=MAX; 
RUN; 
 
FILENAME gch '/folders/myfolders/stat440data/PRSA_Data_Gucheng.csv'; 
PROC IMPORT DATAFILE=gch 
	DBMS=CSV 
	OUT=data_gch; 
	GETNAMES=YES;  
	GUESSINGROWS=MAX; 
RUN; 
 
FILENAME hru '/folders/myfolders/stat440data/PRSA_Data_Huairou.csv'; 
PROC IMPORT DATAFILE=hru 
	DBMS=CSV 
	OUT=data_hru; 
	GETNAMES=YES;  
	GUESSINGROWS=MAX; 
RUN; 
 
FILENAME nzg '/folders/myfolders/stat440data/PRSA_Data_Nongzhanguan.csv'; 
PROC IMPORT DATAFILE=nzg 
	DBMS=CSV 
	OUT=data_nzg; 
	GETNAMES=YES;  
	GUESSINGROWS=MAX; 
RUN; 
 
FILENAME sny '/folders/myfolders/stat440data/PRSA_Data_Shunyi.csv'; 
PROC IMPORT DATAFILE=sny 
	DBMS=CSV 
	OUT=data_sny; 
	GETNAMES=YES; 
	GUESSINGROWS=MAX; 
RUN; 
 
FILENAME ttn '/folders/myfolders/stat440data/PRSA_Data_Tiantan.csv'; 
PROC IMPORT DATAFILE=ttn 
	DBMS=CSV 
	OUT=data_ttn; 
	GETNAMES=YES;  
	GUESSINGROWS=MAX; 
RUN; 
 
FILENAME wlu '/folders/myfolders/stat440data/PRSA_Data_Wanliu.csv'; 
PROC IMPORT DATAFILE=wlu 
	DBMS=CSV 
	OUT=data_wlu; 
	GETNAMES=YES;  
	GUESSINGROWS=MAX; 
RUN; 
 
FILENAME wxg '/folders/myfolders/stat440data/PRSA_Data_Wanshouxigong.csv'; 
PROC IMPORT DATAFILE=wxg 
	DBMS=CSV 
	OUT=data_wxg; 
	GETNAMES=YES;  
	GUESSINGROWS=MAX; 
RUN; 



TITLE2 "Creating a singular data set."; 


DATA data_aot; 
	SET data_aot(RENAME=(SO2=SO2_temp CO=CO_temp NO2=NO2_temp O3=O3_temp PM10=PM10_temp)); 
	SO2=input(SO2_temp,8.); 
	CO=input(CO_temp,8.); 
	NO2=input(NO2_temp,8.); 
	O3=input(O3_temp,8.); 
	PM10=input(PM10_temp,8.); 
	DROP SO2_temp CO_temp NO2_temp O3_temp PM10_temp; 
RUN; 
DATA data_chp; 
	SET data_chp(RENAME=(SO2=SO2_temp CO=CO_temp NO2=NO2_temp O3=O3_temp PM10=PM10_temp)); 
	SO2=input(SO2_temp,8.); 
	CO=input(CO_temp,8.); 
	NO2=input(NO2_temp,8.); 
	O3=input(O3_temp,8.); 
	PM10=input(PM10_temp,8.); 
	DROP SO2_temp CO_temp NO2_temp O3_temp PM10_temp; 
RUN; 
DATA data_dgl; 
	SET data_dgl(RENAME=(SO2=SO2_temp CO=CO_temp NO2=NO2_temp O3=O3_temp PM10=PM10_temp)); 
	SO2=input(SO2_temp,8.); 
	CO=input(CO_temp,8.); 
	NO2=input(NO2_temp,8.); 
	O3=input(O3_temp,8.); 
	PM10=input(PM10_temp,8.); 
	DROP SO2_temp CO_temp NO2_temp O3_temp PM10_temp;RUN; 
DATA data_dsi; 
	SET data_dsi(RENAME=(SO2=SO2_temp CO=CO_temp NO2=NO2_temp O3=O3_temp PM10=PM10_temp)); 
	SO2=input(SO2_temp,8.); 
	CO=input(CO_temp,8.); 
	NO2=input(NO2_temp,8.); 
	O3=input(O3_temp,8.); 
	PM10=input(PM10_temp,8.); 
	DROP SO2_temp CO_temp NO2_temp O3_temp PM10_temp; 
RUN; 
DATA data_gch; 
	SET data_gch(RENAME=(SO2=SO2_temp CO=CO_temp NO2=NO2_temp O3=O3_temp PM10=PM10_temp)); 
	SO2=input(SO2_temp,8.); 
	CO=input(CO_temp,8.); 
	NO2=input(NO2_temp,8.); 
	O3=input(O3_temp,8.); 
	PM10=input(PM10_temp,8.); 
	DROP SO2_temp CO_temp NO2_temp O3_temp PM10_temp; 
RUN; 
DATA data_gyn; 
	SET data_gyn(RENAME=(SO2=SO2_temp CO=CO_temp NO2=NO2_temp O3=O3_temp PM10=PM10_temp)); 
	SO2=input(SO2_temp,8.); 
	CO=input(CO_temp,8.); 
	NO2=input(NO2_temp,8.); 
	O3=input(O3_temp,8.); 
	PM10=input(PM10_temp,8.); 
	DROP SO2_temp CO_temp NO2_temp O3_temp PM10_temp; 
RUN; 
DATA data_hru; 
	SET data_hru(RENAME=(SO2=SO2_temp CO=CO_temp NO2=NO2_temp O3=O3_temp PM10=PM10_temp)); 
	SO2=input(SO2_temp,8.); 
	CO=input(CO_temp,8.); 
	NO2=input(NO2_temp,8.); 
	O3=input(O3_temp,8.); 
	PM10=input(PM10_temp,8.); 
	DROP SO2_temp CO_temp NO2_temp O3_temp PM10_temp; 
RUN; 
DATA data_nzg; 
	SET data_nzg(RENAME=(SO2=SO2_temp CO=CO_temp NO2=NO2_temp O3=O3_temp PM10=PM10_temp)); 
	SO2=input(SO2_temp,8.); 
	CO=input(CO_temp,8.); 
	NO2=input(NO2_temp,8.); 
	O3=input(O3_temp,8.); 
	PM10=input(PM10_temp,8.); 
	DROP SO2_temp CO_temp NO2_temp O3_temp PM10_temp; 
RUN; 
DATA data_sny; 
	SET data_sny(RENAME=(SO2=SO2_temp CO=CO_temp NO2=NO2_temp O3=O3_temp PM10=PM10_temp)); 
	SO2=input(SO2_temp,8.); 
	CO=input(CO_temp,8.); 
	NO2=input(NO2_temp,8.); 
	O3=input(O3_temp,8.); 
	PM10=input(PM10_temp,8.); 
	DROP SO2_temp CO_temp NO2_temp O3_temp PM10_temp; 
RUN; 
DATA data_ttn; 
	SET data_ttn(RENAME=(SO2=SO2_temp CO=CO_temp NO2=NO2_temp O3=O3_temp PM10=PM10_temp)); 
	SO2=input(SO2_temp,8.); 
	CO=input(CO_temp,8.); 
	NO2=input(NO2_temp,8.); 
	O3=input(O3_temp,8.); 
	PM10=input(PM10_temp,8.); 
	DROP SO2_temp CO_temp NO2_temp O3_temp PM10_temp; 
RUN; 
DATA data_wlu; 
	SET data_wlu(RENAME=(SO2=SO2_temp CO=CO_temp NO2=NO2_temp O3=O3_temp PM10=PM10_temp)); 
	SO2=input(SO2_temp,8.); 
	CO=input(CO_temp,8.); 
	NO2=input(NO2_temp,8.); 
	O3=input(O3_temp,8.); 
	PM10=input(PM10_temp,8.); 
	DROP SO2_temp CO_temp NO2_temp O3_temp PM10_temp; 
RUN; 
DATA data_wxg; 
	SET data_wxg(RENAME=(SO2=SO2_temp CO=CO_temp NO2=NO2_temp O3=O3_temp PM10=PM10_temp)); 
	SO2=input(SO2_temp,8.); 
	CO=input(CO_temp,8.); 
	NO2=input(NO2_temp,8.); 
	O3=input(O3_temp,8.); 
	PM10=input(PM10_temp,8.); 
	DROP SO2_temp CO_temp NO2_temp O3_temp PM10_temp; 
RUN; 

DATA beijing; 
	SET	data_aot 
		data_chp 
		data_dgl 
		data_dsi 
		data_gch 
		data_gyn 
		data_hru 
		data_nzg 
		data_sny 
		data_ttn 
		data_wlu 
		data_wxg; 
RUN; 



TITLE2 "Sanity check."; 


PROC CONTENTS DATA=beijing; 
RUN; 
 
PROC SQL; 
	SELECT count(*) FROM beijing; 
RUN; 
 
PROC SQL; 
	SELECT DISTINCT Station FROM beijing; 
RUN; 

data beijing;
	set beijing;
	label 	NO="row number"
			year="year of data in this row"
			month="month of data in this row"
			day="day of data in this row"
			hour="hour of data in this row"
			PM2_5="PM2.5 concentration (ug/m^3)"
			PM10="PM10 concentration (ug/m^3)"
			SO2="SO2 concentration (ug/m^3)"
			NO2="NO2 concentration (ug/m^3)"
			CO="CO concentration (ug/m^3)"
			O3="O3 concentration (ug/m^3)"
			TEMP="temperature(degree Celsius)"
			PRES="pressure (hPa)"
			RAIN="precipitation (mm)"
			DEWP="dew point temperature (degree Celsius)"
			WD="wind direction"
			WSPM="wind speed (m/s)"
			station="name of the air-quality monitoring site";
run;



title2 "Checking Variables Are Numeric and Logical";


proc means data=beijing max min mean;
	class station;
	var PM10 SO2 NO2 CO O3;
run;



title2 "Checking That Wind Direction is Logical";


proc freq data=beijing;
	table station*WD;
run;



title2 "Healthy/Unhealthy Determined by PM2_5 Level";


data beijing_PM25CHANGED;
	set beijing;
	if PM2_5<35.4 then PM2_5="healthy";
	else PM2_5="unhealthy";
	format PM2_5 $10.;
run;

PROC SQL;
	create table PM2_5_HEALTH as
	select PM2_5 format=$10., count(*) as TOTAL
		from beijing_PM25CHANGED;
quit;

proc sql;
	select DISTINCT PM2_5, count(PM2_5)/TOTAL as percentage format=percent7.
		from PM2_5_HEALTH
	group by PM2_5;
quit;

title2 "Wind Direction Percentage";
proc sql;
	create table WDcount as
	select WD, count(*) as TOTAL
		from beijing;
quit;

proc sql;
	select distinct WD, count(WD)/TOTAL as percentage format=percent7.
		from WDcount
	group by WD;
quit;



title2 "Cross Tabulation between Wind Direction and PM2_5";


proc freq data=beijing_PM25changed;
	tables PM2_5*wd;
run;

