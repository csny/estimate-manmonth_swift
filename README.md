1.プログラムの目的

https://paiza.jp/poh/kirishima paizaのコンテストの課題を解決するためのプログラムです。未応募。 課題については、以下に記載。

2.動作条件

Swiftで書かれています。 xcode7.2.1で動作確認済み。 ただ、このプログラムだと、30社を超えるとやたら時間がかかります。
メモ化再帰、漸化式もおいおい追加予定。

3.使い方

xcodeでbuild(それは省略していいな？)して、例題の入力例のようなフォーマットでデータを入れてください。 回答を出力します。

4.課題の内容

---引用--- あなた(霧島京子) は20万人月の巨大なプロジェクトを一ヶ月で終わらせるために無数の下請け会社から人員をかき集める仕事をすることになりました。 プロジェクトを終わらせるのに必要な人員数 m 名 と、発注可能な下請け会社の数 n 社、各下請け会社のアサイン可能なエンジニア人員数 q_i 名 と、発注に必要な費用 r_i 万円が与えられます。

各下請け会社の人員は、一部を使うなどは出来ず全員を使わなくてはいけません。 プロジェクトに必要な人員数 m 以上を満たせる組み合わせで、最も安くすむ合計金額(単位：万円)を出力してください。 各下請け会社の人員数の合計はプロジェクトの規模 m 人月以上になるものとします ---引用--- だそうです。

入力される値 入力は以下のフォーマットで与えられます。

m　（プロジェクトに必要な人員数） n　（下請け会社の数） q_1 r_1　（1番目の下請け会社の人員数 発注に必要な費用[単位：万円]） q_2 r_2　（２番目の下請け会社の人員数 発注に必要な費用[単位：万円]） ・・・ q_i r_i　（n 番目の下請け会社の人員数 発注に必要な費用[単位：万円]）

条件 1 ≦ m ≦ 200000（プロジェクトに必要な人数：最大20万人） 1 ≦ n ≦ 50（下請け会社数：最大50社） 1 ≦ q_i ≦ 10000（各下請け会社の人員数：最大1万人） 1 ≦ r_i ≦ 5000000（各下請け会社のへの発注費用[単位：万円]：１万円〜最大500億円） m ≦ q_1 + q_2 + q_3 ... + q_i（各下請け会社の人員数の合計はプロジェクトに必要な人数 m 人以上になる）

期待する出力 最もコストが安くなる組み合わせの総コストを出力して下さい。 最後は改行し、余計な文字、空行を含んではいけません。

5.例題

入力例1

60 3 40 4300 30 2300 20 2400

出力例1

6600

入力例2

250 5 35 3640 33 2706 98 9810 57 5472 95 7790

出力例2

23072

6.その他の例題 https://github.com/y-uti/pohlite-data-generator からサンプルデータを勝手に一部拝借。答えが合ってるかどうか、保証できません。

Q.10社 A.9526

90 10 8 768 11 1028 7 593 9 1027 7 806 11 954 9 811 9 960 11 1244 14 1335

Q.20社 A.14499

150 20 10 1059 7 644 13 1305 11 1069 9 927 15 1615 16 1646 9 1074 11 1075 11 1031 12 1257 14 1226 10 925 8 927 9 817 9 835 10 927 10 1013 10 1127 18 1991

Q.30社 A.24482

250 30 10 1059 7 644 13 1305 11 1069 9 927 15 1615 16 1646 9 1074 11 1075 11 1031 12 1257 14 1226 10 925 8 927 9 817 9 835 10 927 10 1013 10 1127 18 1991 8 792 9 890 17 1606 11 1110 7 652 14 1408 14 1630 8 847 14 1421 6 699

Q.40社 A.23999

250 40 10 1059 7 644 13 1305 11 1069 9 927 15 1615 16 1646 9 1074 11 1075 11 1031 12 1257 14 1226 10 925 8 927 9 817 9 835 10 927 10 1013 10 1127 18 1991 8 792 9 890 17 1606 11 1110 7 652 14 1408 14 1630 8 847 14 1421 6 699 10 1133 11 1148 12 1394 12 1206 8 752 13 1078 13 1290 10 1126 7 765 9 1118

Q.50 A.22516

250 50 8 768 11 1028 7 593 9 1027 7 806 11 954 9 811 9 960 11 1244 14 1335 18 1563 9 925 10 1003 9 852 7 699 11 1180 13 1194 9 956 8 934 7 664 11 1225 11 1099 8 791 11 932 8 821 9 878 11 1259 11 1172 8 792 7 653 12 1262 12 1094 10 838 10 1075 7 691 19 2039 10 959 9 919 15 1712 10 995 12 1349 11 750 9 748 19 2028 10 863 11 885 5 562 14 1327 17 1681 9 829

7.著作権

公開しているプログラムについて、一切の著作権を放棄します。 改変、公開等はご自由に。NDAや事件・事故・故障等については、ご自分の責任で。