# -*- coding: utf-8 -*-
# open(path).eachが、ファイルを開き切ってから(勝手に.readを付けて)eachしてるのか確かめる

path = './jikken.rb'

# こうやって、オーバーライドでStringのeachを封印する
class String
  def each
    puts 'String.each is being blocked now.'
  end
end

# これは通らない!! (String.eachを使ってる)
open(path).read.each do |l|
  puts " - #{l}"
end

# しかし、これは通る
open(path).each do |l|
  puts " - #{l}"
end

# そういうわけでopen(path).eachは、少なくとも勝手に.read付けてはいない。
# たぶん1行ずつ読んでブロックに渡してくれてるんじゃないかなぁ
