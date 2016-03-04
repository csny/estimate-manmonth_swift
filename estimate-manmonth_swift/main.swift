//
//  main.swift
//  estimate-manmonth_swift
//
//  Created by macbook on 2016/03/03.
//  Copyright © 2016年 macbook. All rights reserved.
//

import Foundation

// 標準入力で条件受け取り
extension String: CollectionType {} // splitを使うためのおまじない
func readInts() -> [Int] {
    return readLine()!.split(" ").map { Int($0)! } // スペース区切りで受け取り
}
let ArraySTDIN: [Int] = readInts()

// 受け取った標準入力を変数に入れ直し
var company_id: Int = 0
let MAN_NEED: Int = ArraySTDIN[0]
let TOTALNUMBER_COMPANY: Int = ArraySTDIN[1]
// q=人数,r=費用
var q: [Int] = (0..<TOTALNUMBER_COMPANY).map { $0 }
var r: [Int] = (0..<TOTALNUMBER_COMPANY).map { $0 }

for (var i = 2, n = 2 * TOTALNUMBER_COMPANY + 2; i < n; i++){
    if(i % 2 == 0 ){
        q[company_id] = ArraySTDIN[i]
    } else {
        r[company_id] = ArraySTDIN[i]
        company_id++
    }
}

/*
// testprint
print("人月",MAN_NEED)
print("総会社数",TOTALNUMBER_COMPANY)
print("人数",q)
print("予算",r)
*/

// i番目以降の会社から人数の和がj以上になるように選んだときの、
// 取りうる費用の総和の最小値を返す関数
func dfsKnapsack(i :Int, j :Int) -> Int {
    var res :Int
    let INFINITE :Int = 999999;
    if (j <= 0) {
        // 人数が条件MAN_NEEDを超えたら費用を0に、再起呼び出しはここで終了、折り返して計算。
        // ここを起点に投入した会社に応じて足し算
        res = 0
    } else if (i == TOTALNUMBER_COMPANY) {
        // 会社がもう残っていない(且つj>0)ときは、最大値を入力、再起呼び出しはここで終了。
        // ここを起点に投入した会社に応じて足し算
        res = INFINITE
    } else {
        // 会社iを入れるか入れないか選べるので、両方試して予算の和が小さい方を選ぶ
        // 前述の２つの条件のどちらかを満たすまで、再帰呼び出しを繰り返す
        /*
        res = min(
        rec(i + 1, j),
        rec(i + 1, j - w[i]) + v[i]
        );
        */
        if (dfsKnapsack(i + 1, j: j) < dfsKnapsack(i + 1, j: j - q[i]) + r[i]){
            res = dfsKnapsack(i + 1, j: j)
        } else {
            res = dfsKnapsack(i + 1, j: j - q[i]) + r[i];
        }
    }
    return res;
}

// 0番目の会社以降で人数MAN_NEED以上の場合の結果を表示する
print("答え：", dfsKnapsack(0, j: MAN_NEED))