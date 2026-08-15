# JALSG-GML219 Action Items

> このファイルはフォルダを開くと自動で表示されます。完了したら `[x]` に変更し、不要になったら削除してください。

最終更新: 2026-08-08

---

## 直近

- [ ] 逆Kaplan-Meier法による追跡期間中央値・範囲（3.64年／43.7か月、範囲0.02〜5.49年）を研究代表医師への回答に反映する
- [ ] `docs/ash2026-abstract-review.md` をGoogleドライブ「JALSG-GML219」フォルダへアップロード（Claude経由は権限不足で失敗。オーナー cutie.akiko@gmail.com 側で編集者権限を付与するか、手動アップロードが必要。[issues.md](issues.md)参照）
- [ ] ASH抄録の修正提案メールを伊藤先生へ送付する（`TMF/20260802 ASH抄録レビュー/`に本文・別紙あり。同ファイルの「送信前の未確定事項」5点——著者所属のClinical Research Center有無、誤字1件、記号の不統一、GML200のpercentage points指摘の要否、主要10AE版数値の扱い——を解消してから送る）
- [ ] 抄録の著者情報修正（Akiko M. Saito ／ Clinical Research Center, NHO Nagoya Medical Center、所属番号の新規割り当て）が投稿システム上で反映されたか確認
- [ ] 伊藤先生への回答メール送付を確認（Gmail下書きの実送信はユーザー側操作のため未確認）
- [ ] CGA7の別視点解析（先生に関心の視点を確認）
- [ ] `runx1`変数がRUNX1点変異かRUNX1-RUNX1T1融合確認検査かをDM等に確認（[issues.md](issues.md)参照）
- [ ] `cr1yn`変数を追加したデータセット版の再送要否を確認（7/5回答では見送り）
- [ ] Claude連携のBoxアップロード制限（共同作業者設定フォルダへの書き込み拒否）の回避方法を調査（ユーザー確認中）

## 2026-08-08 完了

- [x] `program/` 直下の絶対パス直書き6本（Inquiry01〜05・CSVtoSASDS）を `%working_dir` 方式へ書き換え、残りと揃えた。これで場所非依存になりフォルダ移動でパスが壊れない。`libname olda` は変更していない（旧データとの比較に関わるため）
- [x] `Inquiry05_FollowUp.sas` を cp932 へ変換した（他24本と同じ）。往復検証で無損失を確認し、実行して日本語が正しく出ることも確かめた
- [x] `NMC-RINKEN15` で書き換え6本の SAS 実行検証を完了。Inquiry01〜04 の `.lst` は出力日を正規化すると基準と完全一致、`.rtf` も `\creatim` と出力日を除くと完全一致、ERROR/WARNING 0件。CSVtoSASDS は `input/ads/gml219.csv` が SHA256 一致、`gml219`・`gml219_sae` の PROC COMPARE が `SYSINFO=0`、WARNING 3件は基準と同内容。経緯の正本は `akikomsaito/akiko-office` の `docs/gml219-relocation.md`
- [x] Inquiry05 を初実行し、追跡期間中央値が Python 検証値（3.64年／43.7か月、範囲0.02〜5.49年）と一致することを確認した

## 2026-08-03 完了

- [x] GitHubリポジトリをこのマシンへ新規クローン
- [x] 観察期間中央値の算出方法（単純中央値法 vs 逆Kaplan-Meier法）を整理し、Box 2025年12月時点データで実データ検証（中央値3.64年/43.7か月、範囲0.02〜5.49年）
- [x] 正式なSASプログラム`program/JALSG-GML219_Inquiry05_FollowUp.sas`を新規作成（未実行）
- [x] 作業ログ`docs/work-logs/20260803-work-log.md`を作成

## 2026-08-02 完了

- [x] ASH 2026応募抄録案（abs26-7274）をBoxから取得し、既提出データ・一次データ・PRT/SAP・jRCT公開情報と全数値照合
- [x] 修正提案を`docs/ash2026-abstract-review.md`にまとめた（重大な齟齬3件、統計記載の精度6件、著者・所属4件、jRCT/CRB追記）
- [x] jRCT（jRCTs041190088）とNHO名古屋医療センターCRB（CRB4180009、英文名 National Hospital Organization Review Board for Clinical Trials (Nagoya)）の情報を確認し、抄録への追記案を作成
- [x] 作業ログ`docs/work-logs/20260802-work-log.md`を作成、llm-wikiに知見2件を追加

## 初回セットアップ

- [x] CLAUDE.md・overview.md・issues.md・action-items.md を作成する
- [x] 齋藤（`tosh13`）の権限を確認する（nnh組織経由で既にadmin権限を保持していたため追加不要）
- [x] Boxフォルダの場所を overview.md に記入する

## 2026-07-05 完了

- [x] 6月26日回答Q2-4の「CR後死亡(再発前)」ラベル訂正をプログラム3本（Inquiry02_EFS_OS/Inquiry03_Discontinuation/Inquiry04_CGA_CCI）に反映し、SAS再実行でoutput/logを更新
- [x] Googleドキュメント「伊藤先生からの追加のご質問への対応」内の該当5箇所も同ラベルに訂正（確認済み）
- [x] ELN2022リスク分類（`eln2022`）を`CSVtoSASDS.sas`に追加（`eln2017`は不変）。Table1・新規Fig10（OS/EFS/RFS KM曲線＋層別検定、eln2017→eln2022）に反映
- [x] `USUBJID`/`SUBJID`/`AESEQ`のSASラベル欠落を補完、`output\Contents.xlsx`をODS EXCELで自動生成するよう`CSVtoSASDS.sas`を修正
- [x] データセット項目（略号）対応表を更新（`eln2022`行追加、ラベル補完）し`_20260705.xlsx`として保存、旧`20260626`版は削除
- [x] プログラム3本の変更をGitHubへcommit・push（`cfa4ddf`）
- [x] TMFフォルダ整理：`20260626　回答`を`20260705 PIへ回答`へ統合、不要な内部下書きを削除
- [x] 伊藤先生への回答メールを最終化（内容2回レビュー、#55/#98の予後不良因子記載を修正）し`.md`に反映
- [x] PI提出用ファイル一式（gml219データ・Table1・Fig10・対応表）を`output\20260705 PIへ提出\20260705_PIへ提出資料.zip`にまとめ済み
- [x] 更新したプログラム3本（CSVtoSASDS/Table1/Fig10）をBox `program`フォルダへ反映（Claude連携のBox書き込みツールは共同作業者設定フォルダのため拒否されたため、ユーザーが手動アップロード。詳細は[issues.md](issues.md)参照）

## 2026-07-04 完了

- [x] 疑義事項（Inquiry01〜04）への回答作業（5月31日送付済み）・6月26日の追加照会対応
- [x] データベースの変数名整理（対応表作成で対応）
- [x] 新旧ローカルフォルダ・Box・GitHubの構成整理、旧フォルダの削除
- [x] SASプログラムの文字化け（AE24ラベル）修正
