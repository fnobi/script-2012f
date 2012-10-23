# -*- coding: utf-8 -*-

# 課題 12.
# 2個の配列とブロックを受け取り、配列の各要素ごとにブロックで指定された演算を行うメソッド arraycalc を作れ。例えば、 arraycalc([1,2,3], [4,5,6]){|x,y| x*y} は [4,10,18] を返す。ただし、引数が配列でない場合や、要素の個数が一致しない場合は考えなくてよい。

# ともかく関数を定義
def arraycalc (arr1, arr2)
  # 計算結果も配列にして返すらしいので、先に定義
  results = []

  # 各配列の、共通した場所にある要素がとりたいので、each_indexを使ってみる
  arr1.each_index do |index|
    # 渡されたブロックで計算して、resultsに追加
    results.push yield(arr1[index], arr2[index])
  end

  # resultsを返す
  return results
end

# 実際に、動作テスト
# p arraycalc([1,2,3], [4,5,6]){|x,y| x*y}
