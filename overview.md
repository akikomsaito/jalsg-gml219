# JALSG-GML219 — 概要

随時更新（2026-08-02 時点）

## 一文要約

高齢者急性骨髄性白血病(AML)の層別化により化学療法が可能な症例に対して若年成人標準化学療法の近似用量を用いる第II相臨床試験

## 現在の状況

解析フェーズを終え、成果公表フェーズに入った。2026年5月31日にPIからの照会4件（RFS/EFS-OS/中止理由/CGA7・CCI）への回答を送付済み、6月26日の追加照会（データ略号対応表・死亡イベント数不一致の解明）にも対応済み。7月5日、「CR後死亡(再発前)」ラベル訂正をプログラム3本・アウトプット・回答文書に反映し、ELN2022（Döhner et al. Blood 2022）リスク分類を`eln2022`変数として追加した（`eln2017`はSAP記載のプライマリ分類として維持し並列表示）。

8月2日、伊藤先生作成のASH 2026応募抄録案（Abstract Number: abs26-7274）を既提出データ・一次データ・PRT/SAPと全数値照合し、修正提案を[`docs/ash2026-abstract-review.md`](docs/ash2026-abstract-review.md)にまとめた。重大な齟齬は3件——地固め療法のGrade 3以上有害事象の分母がFAS 121例固定になっている点、寛解導入DNRの年齢層別用量（65-69歳45 mg/m²・70-74歳35 mg/m²）のうち片方しか記載がない点、30日死亡率1.65%が当方データでは0.8%（1例）である点。詳細な経緯は[`docs/JALSG-GML219_対応履歴.md`](docs/JALSG-GML219_対応履歴.md)、当日の作業は[`docs/work-logs/20260802-work-log.md`](docs/work-logs/20260802-work-log.md)を参照。

## GitHub / Box

- GitHubリポジトリ：https://github.com/nnh/jalsg-gml219
- Boxフォルダ：https://nmccrc.app.box.com/folder/336449975048

対応関係の一覧はstat-hubリポジトリの [overview.md](https://github.com/saito-la/stat-hub/blob/main/overview.md) の「対象試験一覧」にも記録する。

## 関連

- 既知の問題：[issues.md](issues.md)
- 次アクション：[next-action.md](next-action.md)
