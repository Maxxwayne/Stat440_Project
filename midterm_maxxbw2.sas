libname midterm '/folders/myfolders/midterm';
ods rtf file='/folders/myfolders/midterm/midterm_maxxbw2.rtf';
title1 'Midterm Report';

proc format library=midterm;
	value river 0 = 'does not border'
				1 = 'borders';
Run;
data midterm.boston;
	infile "/folders/myfolders/midterm/Boston_damaged.dat" dlm="09"x missover;
	length town $30.;
	input obs town $ townnum tract lon lat medv cmedv crim zn indus chas nox rm age dis rad tax ptratio b lstat;
	format chas river.;
	if obs='OBS.' then delete;
	label obs="observation number"
			townnum="town number"
			tract="tract ID"
			lon="longitude"
			lat="latitude"
			medv="median value"
			cmedv="corrected median value"
			crim="crime per capita"
			zn="residential land zoned over 25000 sq. ft. per town"
			indus="non retail business acres"
			chas="Charles River border"
			nox="nitric oxides concentration"
			rm="rooms per dwelling"
			age="owner occupied units built prior to 1940"
			dis="weighted distances to five Boston employment centers"
			rad="radial highways"
			tax="property tax per $10,000"
			ptratio="pupil-teacher ratio"
			b="1000*(proportion of blacks-.63)^2"
			lstat="percentage of lower status population";
Run;

proc means data=midterm.boston n nmiss min max;
	var obs townnum tract lon lat medv cmedv crim zn indus chas nox rm age dis rad tax ptratio b lstat;
Run;
proc freq data=midterm.boston;
	tables chas;
Run;
proc freq data=midterm.boston;
	tables town * zn;
Run;
proc freq data=midterm.boston;
	tables town * indus;
Run;
proc freq data=midterm.boston;
	tables town * rad;
Run;
proc freq data=midterm.boston;
	tables town * tax;
Run;
proc freq data=midterm.boston;
	tables town * ptratio;
Run;
proc print data=midterm.boston;
	var crim medv obs town;
Run;

data midterm.bostonclean;
	set midterm.boston;
	if obs=136 then 
	do;
		indus=21.89;
		chas=0;
		nox=0.624;
		rm=6.335;
		age=98.2; 
		dis=2.1107;
		rad=4;
		tax=437;
		ptratio=21.2;
		b=394.67;
		lstat=16.96;
	end;
	if obs=315 then
	do;
		tax=304;
		ptratio=18.4;
		b=395.69;
		lstat=9.28;
	end;
	if obs=213 then
	do;
		tax=277;
		ptratio=18.6;
		b=390.94;
		lstat=16.03;
	end;
	if town='Boston Hyde Park' then ptratio=20.2;
Run;
proc means data=midterm.bostonclean n nmiss min max;
	var obs townnum tract lon lat medv cmedv crim zn indus chas nox rm age dis rad tax ptratio b lstat;
Run;
proc print data=midterm.bostonclean;
	var obs town indus rad tax ptratio;
	where town in ('Somervil','Quincy','Waltham','Boston Hyde Park');
Run;

title2 'Appendix';
proc freq data=midterm.bostonclean;
	tables town;
Run;
proc sort data=midterm.bostonclean out=midterm.bostoncleansort1;
	by town;
Run;
data sort1 (keep=town crim);
	set midterm.bostoncleansort1;
	by town;
	if First.town then a=0;
	a+crim;
	if Last.town;
Run;
proc sort data=sort1 out=sorthigh;
	by descending crim;
Run;
proc print data=sorthigh (obs=5);
Run;
proc sort data=sort1 out=sortlow;
	by crim;
Run;	
proc print data=sortlow (obs=5);
Run;	
proc univariate data=midterm.bostonclean;
	var medv;
Run;
	


title;
ods rtf close;