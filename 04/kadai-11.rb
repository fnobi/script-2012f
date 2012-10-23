# -*- coding: utf-8 -*-

# 課題 11.
# 天秤と 1g, 2g, 3g, 10g, 20g の5個の分銅がある。この分銅を組み合わせて(片側の皿だけに載せるものとする)量れる重さをすべて表示せよ。
# ヒント：配列(マニュアル)の combination, push, uniq を使う。

# 分銅を定義
weights = [1, 2, 3, 10, 20]

# 結果(量れる全ての重さ)
results = []

# 分銅の全ての組み合わせを探す
# Array.combinationは、作成する組み合わせの長さを渡して実行しなくてはいけないので、
# 1-5のループを使って、それぞれの場合を試す
(1..weights.length).each do |l|
  weights.combination(l) do |c|
    # この組み合わせの和を計算する
    sum = 0
    c.each do |g|
      sum += g
    end

    # 和を、resultsに量れる重さとして追加
    results.push sum
  end
end

# 重複したものを除いて、ついでにソートして、出力
p results.uniq.sort
