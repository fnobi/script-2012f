# -*- coding: utf-8 -*-

# 課題 10.
# /pub/sfc/ipl/words の中で最も長い単語を探して出力するプログラムを書け。ただし、文字列 line の長さは line.length でわかる。同じ長さの単語が複数ある場合は、どれか一個だけ出力すればよい。

# 読み込むファイルのパスを指定
path = '/pub/sfc/ipl/words'

# 結果として出力する単語の候補
# 初期値として長さゼロの文字列をセットしておく
# ※このあと必ず、もっと長い単語が現れて更新される
result = ''

# ファイルの内容を1行ずつ読んで、行の内容をlineに入れて繰り返す
open(path).each do |line|
  # 末尾の改行は落としてwordに代入
  word = line.chomp

  # resultと長さを比べる
  if result.length < word.length
    # wordの方がresultより長かったら、resultを更新
    result = word
  end
end

# 最終的に残ったresultを出力
puts result




# 一番長い単語全てを取得する場合は、
# result = '' ではなく results = [] にしておいて、
#
# if result.length < word.length
#   results = [word]
# elsif result.length == word.length
#   results.push word
# end
#
# ってかんじですかね。参考までに。
