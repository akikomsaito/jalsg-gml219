/* autoexec.sas — JALSG-GML219 パス自動判定（akiko-office/setup/sas/autoexec-template.sas 由来） */
%global box_root repo_root;
%macro _set_box_root;
  %if %length(%sysget(AKIKO_BOX_ROOT)) %then %let box_root=%sysget(AKIKO_BOX_ROOT);
  %else %if &sysscp.=WIN %then %let box_root=%sysfunc(translate(%sysget(USERPROFILE),/,\))/Box;
  %else %let box_root=%sysget(HOME)/Library/CloudStorage/Box-Box;
%mend; %_set_box_root;
filename _cwd '.'; %let repo_root=%sysfunc(pathname(_cwd)); filename _cwd clear;

%let grp=JALSG; %let trial=JALSG-GML219;
%let base=&box_root/Stat/Trials/&grp/&trial;

libname raw  "&base/input/rawdata";
libname sdtm "&base/input/sdtm";
libname ads  "&base/input/ads";
libname ext  "&base/input/ext";
libname save "&base/save";

%let boxpgm=&base/program;
%let out=&base/output;

/* 既存の program/*.sas は各プログラム内の %working_dir で _wk_path を自算出し、
   プログラム自身の2階層上（＝Box の作業フォルダ）配下の input/output/log を参照する旧方式。
   この autoexec の libname・&base はまだそれらに接続していないため、リポジトリを Box 外に
   clone して実行すると _wk_path が repo ルートを指し input/ が見つからない。移行方針は
   akiko-office の action-items.md「SAS 実行環境の安定化」を参照。 */

%put NOTE: [autoexec] box_root=&box_root repo_root=&repo_root;
%put NOTE: [autoexec] base=&base;
