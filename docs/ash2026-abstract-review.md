# JALSG-GML219 ASH 2026 抄録 修正提案

随時更新（2026-08-02 時点）

対象：Box「02.03.01 総括報告書 / Publication / 2026 ASH」内 `20260801180703 JALSG-GML219 ASH abstract dract.pdf`（Abstract Number: abs26-7274）

照合に用いた一次データ：`output/20260705 PIへ提出/gml219.csv`（FAS 121例）、`JALSG-GML219_Inquiry01_RFS.rtf`／`Inquiry02_EFS_OS.rtf`／`Inquiry04_CGA_CCI.rtf`（2026-07-05 出力）、`Table1〜Table8_20260505.rtf`、`TMF/JALSG-GML219 PRTver2.4.pdf`、`TMF/JALSG-GML219 SAP v1wTF.docx`、jRCT（jRCTs041190088）。

---

## 最優先の修正

### 地固め療法の Grade 3 以上有害事象の分母

- **該当箇所**：Results、"Grade ≥3 AE occurred in 86.8% of patients during the first induction course, 25.6%, 22.3%, and 23.1% during the first, the second, and the third consolidation course, respectively."
- **問題**：この 4 つの数値は当方提出の `Inquiry04 (4-3)` の値と完全一致しており（105/121＝86.78%、31/121＝25.62%、27/121＝22.31%、28/121＝23.14%）、**4 つとも分母が FAS 121 例**です。地固め療法を実際に受けたのは 1 コース 51 例・2 コース 44 例・3 コース 40 例なので、地固めを受けていない患者を「有害事象なし」として数えた割合になっています。現在の文面では「地固めを受けた患者の 25.6%」と読まれ、**地固め療法の安全性を大幅に過小評価**します（実際はどのコースも約 6〜7 割）。
- **修正案（主要 10 項目ベース／現行の集計対象を維持する場合）**：
  > Grade ≥3 predefined treatment-related complications occurred in 105/121 (86.8%) patients during the first induction course, and in 31/51 (60.8%), 27/44 (61.4%), and 28/40 (70.0%) of the patients who actually received the first, second, and third consolidation course, respectively.
- **修正案（全 33 項目ベースに揃える場合）**：
  > Grade ≥3 adverse events occurred in 107/121 (88.4%) patients during the first induction course, and in 33/51 (64.7%), 27/44 (61.4%), and 28/40 (70.0%) of the patients who received the first, second, and third consolidation course, respectively.
- **あわせて確認をお願いしたい点**：現在の数値は CRF 収集 33 項目のうち **主要 10 項目**（発熱性好中球減少症・敗血症・肺感染・カテーテル関連感染・気管支肺出血・頭蓋内出血・肝不全・腫瘍崩壊症候群・DIC・肛門直腸感染）に限定した集計です。"Grade ≥3 AE" と書くと全有害事象と読まれるため、限定を明示するか、全 33 項目の集計に差し替えるかをご判断ください。

### 30日死亡率

- **該当箇所**：Results、"The 30-day mortality rate during induction therapy was 1.65%."
- **問題**：当方データでは、寛解導入 1 開始日から 30 日以内の死亡は **1 例（0.8%、1/121）** です（登録日起算でも 1 例）。1.65%（2/121）に一致するのは「35 日以内」で、32 日目の死亡 1 例が加わった場合です。参考として 42 日以内は 3 例（2.5%）。
- **修正案**：
  > The 30-day mortality rate after the start of induction therapy was 0.8% (1/121).
- **確認をお願いしたい点**：起算日（登録日／治療開始日）と期間の定義をご教示ください。定義が確定すれば当方で再集計します。

---

## プロトコル記載との齟齬

### 寛解導入療法のダウノルビシン用量

- **該当箇所**：Methods、"Induction chemotherapy consisted of daunorubicin (45 mg/m2/day for 3 days) plus cytarabine (100 mg/m2/day for 7 days)."
- **問題**：PRT ver2.4 の規定は **65〜69 歳 45 mg/m²、70〜74 歳 35 mg/m²** の年齢層別用量です。本試験の FAS は 70〜74 歳が 73 例（60.3%）と過半数で、実測の DNR 総投与量も中央値 105 mg/m²（＝35×3）、平均 116.8 mg/m²（年齢構成からの理論値 116.9 と一致）です。45 mg/m² のみの記載は**過半数の患者の実際の用量と異なり**、再現性の記載としても不正確です。年齢層別用量は本試験の設計思想そのものであり、タイトルの "fitness-adapted" とも直結します。
- **修正案**：
  > Induction chemotherapy consisted of daunorubicin (45 mg/m2/day for patients aged 65-69 years and 35 mg/m2/day for those aged 70-74 years, days 1-3) plus cytarabine (100 mg/m2/day, days 1-7).
- **参考（地固め療法も同様に年齢層別）**：地固め 1 = MIT 7 / 5 mg/m² + Ara-C 200 mg/m²、地固め 2 = DNR 40 / 30 mg/m² + Ara-C 200 mg/m²、地固め 3 = ACR 16 / 14 mg/m² + Ara-C 200 mg/m²（いずれも 65-69 歳 / 70-74 歳）。字数に余裕があれば併記をご検討ください。

---

## 統計記載の精度

### 2年EFS の信頼区間

- **該当箇所**：Results、"was 22.52% (95% confidence interval [CI], 15-30%)"
- **問題**：当方の Kaplan-Meier 推定値は 22.52%、95%CI は **15.43〜30.46%** です。「15-30%」は丸めが粗く、事前規定閾値 19% との距離が実際より小さく見えます。
- **修正案**：
  > The primary endpoint, 2-year event-free survival (EFS), was 22.5% (95% confidence interval [CI], 15.4-30.5%).

### OS・RFS の有効数字と RFS の解析対象

- **該当箇所**：Results、"the 2-year overall survival (OS) and relapse-free survival (RFS) were 54.57% and 36.25%, respectively."
- **問題**：CR 率は 57.0%（小数 1 桁）、EFS/OS/RFS は小数 2 桁と桁数が不統一です。あわせて、**RFS は CR 達成 69 例を対象とした解析**であり、抄録では対象集団が明示されていないため 121 例の値と誤読されます。
- **修正案**：
  > However, the 2-year overall survival (OS) was 54.6% (95% CI, 44.9-63.3%), and the 2-year relapse-free survival (RFS) among the 69 patients who achieved CR was 36.3% (95% CI, 24.8-47.8%).

### CCI に関する記述

- **該当箇所**：Results、"Similarly, CCI did not adequately discriminate treatment outcomes. Patients with CCI ≥3 had a treatment discontinuation rate of 82.6%, whereas other patients had a rate of 63.3%."
- **問題**：割合（82.6% 対 63.3%）は当方データと一致します（19/23 対 62/98）。ただし数値だけを見ると差があるように読めるため、「弁別しない」という主張と矛盾して見えます。**p 値の併記が必要**です（Fisher 正確検定 両側 P=0.089）。加えて、本試験では AML 自体が CCI 2 点に算入されるため全例が 2 点以上であり、**「CCI ≥3」は「白血病以外の併存疾患を有する」ことを意味**します。この説明がないと読者は一般的な CCI ≥3 と誤解します。
- **修正案**：
  > Similarly, CCI did not significantly discriminate treatment outcomes: patients with CCI ≥3, i.e., those with comorbidities other than leukemia, had a treatment discontinuation rate of 82.6% (19/23) compared with 63.3% (62/98) in patients with CCI =2 (P=0.089).

### 年齢群比較の検定結果

- **該当箇所**：Results、"No significant differences were observed in CR rate, treatment discontinuation, or grade ≥3 AE according to age group (65-69 years vs. 70-74 years)."
- **問題**：内容は当方データと整合します（CR 率 60.4% 対 54.8%、P=0.578／中止率 64.6% 対 68.5%、P=0.696、いずれも Fisher 正確検定）。p 値の併記を推奨します。
- **修正案**：
  > No significant differences were observed in CR rate (60.4% vs. 54.8%, P=0.58) or treatment discontinuation (64.6% vs. 68.5%, P=0.70) between age groups (65-69 vs. 70-74 years), nor in grade ≥3 complications.

### Frailty と CR 率の検定名

- **該当箇所**：Results、"showing a significant decline in CR rate according to frailty status (P=0.018)."
- **問題**：数値は当方データと完全に一致します（50/78、13/25、6/18）。P=0.018 は Cochran-Armitage 傾向検定（正確検定、両側 P=0.0182）であり、検定名の明示を推奨します。
- **修正案**：
  > ..., showing a significant decline in CR rate across frailty categories (P=0.018, Cochran-Armitage trend test).

### 解析対象集団の用語

- **該当箇所**：Results、"121 patients who fulfilled the predefined criteria for the Full Set Analysis were included in the analyses."
- **問題**：SAP の正式名称は **Full Analysis Set (FAS)** です。
- **修正案**：
  > ..., and 121 patients who fulfilled the predefined criteria for the full analysis set (FAS) were included in the analyses.

### 過去試験との比較

- **該当箇所**：Results、"Compared with the previous Japanese prospective JALSG GML200 study, these outcomes represented approximately 20% improvement in OS and 10% improvement in RFS."
- **問題**：GML200 の成績は当方の解析範囲外で、照合できていません。歴史的対照との単純比較であるため、**GML200 側の実数値・対象年齢・出典**の明示が必要です。また "improvement" は因果を示唆するため、記述的な表現が安全です。
- **修正案**：
  > These outcomes appear more favorable than those reported in the previous JALSG GML200 study (2-year OS, XX%; 2-year RFS, XX%), although the comparison is historical and not adjusted for differences in patient background.

---

## 著者名と所属

### 齋藤の氏名・所属

- **該当箇所**：Authors、"Akiko Saito4" および所属 "4 National Hospital Organization Nagoya Medical Center, Nagoya, Japan"
- **修正内容**：氏名を **Akiko M. Saito**、所属を **Clinical Research Center, National Hospital Organization Nagoya Medical Center, Nagoya, Japan** としてください。
- **注意**：所属番号 4 は Daiki Hirano 先生と共有されています。所属を「Clinical Research Center」付きに変更すると平野先生の所属表記まで変わってしまうため、**齋藤には新しい所属番号を割り当て**（投稿システム上で別所属として登録）、平野先生は現行の 4 のままとしてください。
- **修正後の記載イメージ**：
  > Akiko M. Saito<sup>32</sup>
  > <sup>32</sup> Clinical Research Center, National Hospital Organization Nagoya Medical Center, Nagoya, Japan

### 上付き番号の重複

- **該当箇所**：Authors、"Akira Katsumi26, 26"
- **修正内容**：上付き番号が重複しています。**"Akira Katsumi26"** に修正してください。

### 所属の重複登録

- **該当箇所**：Affiliations、"8 Toyohashi municipal hospital, Toyohashi, Japan" と "23 Toyohashi Municipal Hospital, Toyohashi, Japan"
- **問題**：同一施設が 2 つの番号で重複登録され、表記も不統一（municipal / Municipal）です。
- **修正内容**：1 つの番号に統合し、**"Toyohashi Municipal Hospital, Toyohashi, Japan"** に表記を統一してください（Shingo Kurahashi 先生と Naoto Imoto 先生が同番号を共有）。

### 所在地の誤記

- **該当箇所**：Affiliations、"1 Dokkyo Medical University Hospital, Toshigi, Japan"
- **修正内容**：**"Tochigi"** が正しい表記です。

---

## 試験登録と倫理審査の追記

現行の抄録には試験登録番号・倫理審査に関する記載がありません。Methods の末尾に以下を追記してください。

- **jRCT 番号**：jRCTs041190088
- **認定臨床研究審査委員会**：独立行政法人国立病院機構名古屋医療センター臨床研究審査委員会（英文名 National Hospital Organization Review Board for Clinical Trials (Nagoya)、認定番号 CRB4180009）
- **追記案（Methods 末尾）**：
  > The study protocol was approved by the National Hospital Organization Review Board for Clinical Trials (Nagoya) (CRB4180009) and was conducted in accordance with the Declaration of Helsinki and the Japanese Clinical Trials Act. This study is registered with the Japan Registry of Clinical Trials (jRCTs041190088).
- **短縮版（字数が厳しい場合）**：
  > Approved by the NHO Review Board for Clinical Trials, Nagoya (CRB4180009); registered as jRCTs041190088.

---

## 確認をお願いしたい事項

- **著者リストと研究責任医師**：jRCT 上の研究責任医師は太田秀一先生（札幌北楡病院）ですが、現行の著者リストに含まれていません。意図的な取り扱いか、追加が必要かをご確認ください。
- **タイトルと結果の整合**：主要評価項目（2 年 EFS）が未達である一方、タイトルは "A fitness-adapted intensive chemotherapy strategy may be suitable for elderly patients with AML" と有効性を示唆しています。査読で整合性を問われる可能性があります。また本試験は GA の結果で治療を変更する設計ではないため、"fitness-adapted" が **年齢層別用量とプロトコル規定の地固め移行基準**を指すことが本文から読み取れるようにしておくと誤解を避けられます。
- **患者背景の記載**：現行の抄録には患者背景の記載がありません。字数が許せば、年齢中央値 70 歳（範囲 65-74）、男性 51.2%、ECOG PS 0/1/2 = 38.0%/50.4%/11.6%、ELN2022 リスク分類 Favorable 19.0% / Intermediate 58.7% / Adverse 22.3% の追記をご検討ください。
- **字数**：現行の本文は約 4,500 文字（スペース込み）です。上記の追記を行う場合は、Methods の "to optimize treatment delivery" 以下の説明的表現を圧縮するなど、削減とセットでの調整が必要になる可能性があります。

---

## 照合して一致を確認した数値

以下は当方の提出データと完全に一致しており、修正は不要です。

- 登録期間 2019 年 12 月〜2023 年 7 月（実データ 2019-12-05〜2023-07-24）
- 登録 128 例、FAS 121 例
- CR 率 57.0%（69/121）
- 2 年 EFS 22.52%、事前規定閾値 19%（PRT 9.2 症例数設計：閾値 19%、期待値 30%、片側 α=0.025、検出力 0.80）
- 2 年 OS 54.57%、2 年 RFS 36.25%
- 地固め 3 コース完遂 40 例、同種造血幹細胞移植 23 例
- CCI ≥3 の治療中止率 82.6%、CCI =2 の 63.3%（分母 23 例 / 98 例）
- Frailty 分類 Robust 78 例 / Vulnerable 25 例 / Frail 18 例
- Frailty 別 CR 率 64.1% / 52.0% / 33.3%、P=0.018
- 年齢群間で CR 率・治療中止・Grade 3 以上事象に有意差なし
