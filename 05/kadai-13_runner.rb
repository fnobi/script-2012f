# -*- coding: utf-8 -*-

require './kadai-13'

# 動作テスト
taro = Student.new('太郎')
taro.set_score('数学', 65)
taro.set_score('国語', 91)

hanako = Student.new('花子')
hanako.set_score('数学',80)
hanako.set_score('国語',77)

puts hanako.compare(taro, '数学')  # 花子の側から見て太郎と比較する
puts taro.compare(hanako, '国語')  # 太郎の側から見て花子と比較する
