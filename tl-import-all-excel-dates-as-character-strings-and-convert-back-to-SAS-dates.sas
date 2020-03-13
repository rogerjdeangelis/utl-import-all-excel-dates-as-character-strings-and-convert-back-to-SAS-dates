Import all excel dates as character strings and convert back to SAS dates

 Some options

      1. SAS dbasetype (only supported with 64bit programs and SAS access)
      2. Passthru and fix on the excel side isdate function?.
      1. R XLConnect/xlsx packages colclass=character
      2. Python xlwings or openxl


github
https://tinyurl.com/sctn68k
https://github.com/rogerjdeangelis/utl-import-all-excel-dates-as-character-strings-and-convert-back-to-SAS-dates

other related github repos (for more details)
https://github.com/rogerjdeangelis/utl-import-all-excel-columns-as-character
https://github.com/rogerjdeangelis?tab=repositories&q=type+length+excel+&type=&language=
https://github.com/rogerjdeangelis?tab=repositories&q=excel+in%3Aname&type=&language=

macros
https://tinyurl.com/y9nfugth
https://github.com/rogerjdeangelis/utl-macros-used-in-many-of-rogerjdeangelis-repositories

SAS Forum
https://communities.sas.com/t5/SAS-Programming/Excel-Convert-Character-to-Numeric/m-p/631990

Download excel fiel from SAS Forum

*_                   _                       _
(_)_ __  _ __  _   _| |_    _____  _____ ___| |
| | '_ \| '_ \| | | | __|  / _ \ \/ / __/ _ \ |
| | | | | |_) | |_| | |_  |  __/>  < (_|  __/ |
|_|_| |_| .__/ \__,_|\__|  \___/_/\_\___\___|_|
        |_|
;

READ AS CHARACTER

d:\xls\Excel_Example.xlsx

  SUBJECT      DATE OF
   NUMBER     ENROLLMENT    DAY 1       DAY 15      WEEK 4      WEEK 8   ...  WEEK 44     WEEK 48     WEEK 52     WEEK 56    WEEK 60    WEEK 64

 102-001-001  10/8/2018   10/8/2018   10/25/2018  11/5/2018   12/3/2018  ... 8/12/2019   9/9/2019    10/10/2019  FLC=ND      FLC=ND     FLC=ND
 102-001-002  10/8/2018   10/8/2018   10/24/2018  11/5/2018   12/5/2018  ... 8/20/2019   9/6/2019    10/4/2019   FLC=ND      FLC=ND     FLC=ND
 102-001-003  11/26/2018  11/26/2018  12/11/2018  12/27/2018  1/22/2019      10/12/2019  DO OVER     FLC=ND      FLC=ND      FLC=ND     FLC=ND
 102-001-004  10/26/2018  10/26/2018  11/12/2018  11/19/2018  12/18/2018     9/8/2019    9/27/2019   FLC=ND      FLC=ND      FLC=ND     FLC=ND
 102-001-005  10/25/2018  10/25/2018  11/8/2018   11/23/2018  12/20/2018     8/20/2019   9/27/2019   FLC=ND      FLC=ND      FLC=ND     FLC=ND
 102-001-006  10/12/2018  10/12/2018  10/26/2018  11/8/2018   12/3/2018      8/19/2019   9/13/2019   10/15/2019  FLC=ND      FLC=ND     FLC=ND
 102-001-007  10/26/2018  10/26/2018  11/12/2018  11/19/2018  12/20/2018     9/10/2019   9/26/2019   FLC=NO      FLC=ND      FLC=ND     FLC=ND
 103-001-001  8/23/2018   8/23/2018   9/7/2018    9/17/2018   10/23/2018     6/25/2019   7/29/2019   8/22/2019   9/20/2019   FLC=ND     FLC=ND
 102-002-001  9/21/2018   9/21/2018   10/5/2018   10/22/2018  11/20/2018     7/31/2019   8/28/2019   9/20/2019   10/17/2019  FLC=ND     FLC=ND
 102-002-002  9/19/2018   9/19/2018   10/4/2018   10/22/2018  11/14/2018     7/25/2019   8/21/2019   9/16/2019   10/14/2019  FLC=ND     FLC=ND
 102-002-003  9/27/2018   9/27/2018   10/11/2018  10/25/2018  11/19/2018


*            _               _
  ___  _   _| |_ _ __  _   _| |_   ___  __ _ ___
 / _ \| | | | __| '_ \| | | | __| / __|/ _` / __|
| (_) | |_| | |_| |_) | |_| | |_  \__ \ (_| \__ \
 \___/ \__,_|\__| .__/ \__,_|\__| |___/\__,_|___/
                |_|
;

SAS DATES

WORK.WANT


    SUBJECT_     DATE_OF_
     NUMBER     ENROLLMENT    DAY_1       DAY_15      WEEK_4      WEEK_8   ...  WEEK_44     WEEK_48     WEEK_52     WEEK_56    WEEK_60    WEEK_64

   102-001-001  10/8/2018   10/8/2018   10/25/2018  11/5/2018   12/3/2018  ... 8/12/2019   9/9/2019    10/10/2019       .           .          .
   102-001-002  10/8/2018   10/8/2018   10/24/2018  11/5/2018   12/5/2018  ... 8/20/2019   9/6/2019    10/4/2019        .           .          .
   102-001-003  11/26/2018  11/26/2018  12/11/2018  12/27/2018  1/22/2019      10/12/2019          .           .        .           .          .
   102-001-004  10/26/2018  10/26/2018  11/12/2018  11/19/2018  12/18/2018     9/8/2019    9/27/2019           .        .           .          .
   102-001-005  10/25/2018  10/25/2018  11/8/2018   11/23/2018  12/20/2018     8/20/2019   9/27/2019           .        .           .          .
   102-001-006  10/12/2018  10/12/2018  10/26/2018  11/8/2018   12/3/2018      8/19/2019   9/13/2019   10/15/2019       .           .          .
   102-001-007  10/26/2018  10/26/2018  11/12/2018  11/19/2018  12/20/2018     9/10/2019   9/26/2019           .        .           .          .
   103-001-001  8/23/2018   8/23/2018   9/7/2018    9/17/2018   10/23/2018     6/25/2019   7/29/2019   8/22/2019   9/20/2019        .          .
   102-002-001  9/21/2018   9/21/2018   10/5/2018   10/22/2018  11/20/2018     7/31/2019   8/28/2019   9/20/2019   10/17/2019       .          .
   102-002-002  9/19/2018   9/19/2018   10/4/2018   10/22/2018  11/14/2018     7/25/2019   8/21/2019   9/16/2019   10/14/2019       .          .


*          _       _   _
 ___  ___ | |_   _| |_(_) ___  _ __
/ __|/ _ \| | | | | __| |/ _ \| '_ \
\__ \ (_) | | |_| | |_| | (_) | | | |
|___/\___/|_|\__,_|\__|_|\___/|_| |_|

;

%arraydelete(wksn); * not needed. precation;

%array(wks,values=4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 96);

libname xl  'd:\xls\Excel_Example.xlsx' scan_text=no ; /* the key is to not let it scan? */

    data work.havXls;

    set xl.'sheet1$'n(
            dbsastype=(
                 %do_over(wks,phrase=%str(
                "Week ?"n             = 'char(12)' ))
                'subject number'n     = 'char(12)'
                'date of enrollment'n = 'char(12)'
                'day 1'n              = 'char(12)'
                'day 15'n             = 'char(12)'
     ));

run;quit;

libname xl  clear;

* convert to SAS dates;

data want;

  set havXls;
  array inp date_of_enrollment DAY_1 DAY_15  week_4 -- week_96;
  array out 8. date_of_enrollmentn DAY1 DAY15 %do_over(wks,phrase=week?);
  format date_of_enrollmentn DAY1 DAY15 %do_over(wks,phrase=week?) mmddyy10.;
  do over inp;
    out=input(inp,?? mmddyy10.);
  end;

  drop date_of_enrollment DAY_1 DAY_15  week_4 -- week_96;

run;quit;

