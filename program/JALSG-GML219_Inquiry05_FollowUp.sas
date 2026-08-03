/******************************************************************************
* Project       : JALSG-GML219
* Program       : JALSG-GML219_Inquiry05_FollowUp.sas
* Author        : Akiko Saito
* Created       : 2026/08/03
*
* Purpose       : 研究代表医師照会 (5) 追跡期間中央値の算出
*
*   単純中央値法(全例のos_yをそのまま中央値化)は、死亡した患者ほど観察が
*   早く打ち切られるため下方バイアスを受ける。本試験は死亡イベントが
*   FAS121例中66例(約5割)と多く、単純法では中央値が実際の追跡期間より
*   大きく短く出る。このため、死亡を打切り・生存を「イベント」として
*   指標を反転する逆Kaplan-Meier法(Reverse KM, Schemper & Smith 1996)を
*   標準法として採用し、範囲(min-max)を併記する。
*
* 対象          : FAS (n=121)
* 入力          : input\ads\202512 data\gml219.sas7bdat
* 出力          : output\JALSG-GML219_Inquiry05_FollowUp.rtf
* ログ          : log\JALSG-GML219_Inquiry05_FollowUp.log
******************************************************************************/

options nofmterr ls=160 ps=80 nodate nonumber missing=" ";

%let root = C:\Users\AkikoSaito\Data\NMC\Stat\JALSG-GML219;
libname olda "&root.\input\ads\202512 data" access=readonly;

proc printto log="&root.\log\JALSG-GML219_Inquiry05_FollowUp.log"
             print="&root.\log\JALSG-GML219_Inquiry05_FollowUp.lst" new; run;

ods rtf file="&root.\output\JALSG-GML219_Inquiry05_FollowUp.rtf" style=listing bodytitle;
ods escapechar='^';
title  "JALSG-GML219 研究代表医師照会への回答資料 (5) 追跡期間中央値";
title2 "出力日: %sysfunc(today(),yymmddn8.)";

/*-----------------------------------------------------------------------------
  STEP 1: 解析対象データセットの構築 (FAS, 逆Kaplan-Meier用イベント指標)
    rev_c = 1 - OS_c : 死亡(OS_c=1)を打切り、生存(OS_c=0)を「イベント」として反転
-----------------------------------------------------------------------------*/
data ana;
    set olda.gml219;
    where FASFL = "Y";
    rev_c = 1 - OS_c;
    label rev_c = "逆Kaplan-Meier用イベント指標 (1=生存, 0=死亡[打切扱い])";
run;

title3 "(5-1) 対象集団の確認 (FAS, n=121)";
proc freq data=ana;
    tables OS_c*rev_c / list missing;
run;

/*-----------------------------------------------------------------------------
  STEP 2: 逆Kaplan-Meier法による追跡期間中央値 (年・月)
    Quartile Estimatesテーブルの50%点をODS OUTPUTで取得
-----------------------------------------------------------------------------*/
title3 "(5-2) 逆Kaplan-Meier法 KMカーブ (年)";
ods graphics on / width=18cm height=14cm imagename="Inquiry05_RevKM";
proc lifetest data=ana plots=survival(cl) notable;
    time os_y*rev_c(0);
run;
ods graphics off;

ods select none;
ods output Quartiles=_km_y;
proc lifetest data=ana;
    time os_y*rev_c(0);
run;
ods output close;

ods output Quartiles=_km_m;
proc lifetest data=ana;
    time os_m*rev_c(0);
run;
ods output close;
ods select all;

/*-----------------------------------------------------------------------------
  STEP 3: 観察期間の範囲、および単純中央値(参考値)
-----------------------------------------------------------------------------*/
title3 "(5-3) 参考: 単純中央値法(全例のos_yをそのまま中央値化)との比較";
proc means data=ana n median min max maxdec=4;
    var os_y os_m;
run;

proc means data=ana noprint;
    var os_y os_m;
    output out=_rng(drop=_type_ _freq_) n=n_y n_m min=min_y min_m max=max_y max_m;
run;

/*-----------------------------------------------------------------------------
  STEP 4: まとめ (Table形式) - 逆Kaplan-Meier法による中央値と範囲
-----------------------------------------------------------------------------*/
data _med_y(keep=Estimate rename=(Estimate=median_y));
    set _km_y;
    where Percent = 50;
run;

data _med_m(keep=Estimate rename=(Estimate=median_m));
    set _km_m;
    where Percent = 50;
run;

data followup_summary;
    if _n_ = 1 then set _med_y;
    if _n_ = 1 then set _med_m;
    if _n_ = 1 then set _rng;
    label
        n_y      = "対象例数(FAS)"
        median_y = "追跡期間中央値(年, 逆Kaplan-Meier法)"
        median_m = "追跡期間中央値(月, 逆Kaplan-Meier法)"
        min_y    = "観察期間 最小値(年)"
        max_y    = "観察期間 最大値(年)"
        min_m    = "観察期間 最小値(月)"
        max_m    = "観察期間 最大値(月)";
run;

title3 "(5-4) 追跡期間中央値と範囲 (FAS, 逆Kaplan-Meier法)";
title4;
proc print data=followup_summary label noobs;
    var n_y median_y min_y max_y median_m min_m max_m;
    format median_y min_y max_y 8.2 median_m min_m max_m 8.1;
run;

ods rtf close;
proc printto; run;

%put NOTE: 出力 - &root.\output\JALSG-GML219_Inquiry05_FollowUp.rtf;
