# -*- coding: utf-8 -*-
# 課題 7. 配列の最初の値を [0, 100] とし、キーボードで1〜99の数値を入力すると、それを小さい順に並ぶように配列に挿入するプログラムを作れ。

# % ruby insert.rb
# 1〜99の数値? 30
# [0, 30, 100]
# 1〜99の数値? 50
# [0, 30, 50, 100]
# 1〜99の数値? 10
# [0, 10, 30, 50, 100]
# 1〜99の数値?

array = [0, 100]
while true
  print "#{array[0] + 1}〜#{array[-1] - 1}の数値? "
  g = gets.chomp

  if !g.match(/^\d+$/)
    #puts "#{g}は数字ではありません"
    raise(IOError, "#{g}は数字ではありません")
    next
  end

  i = g.to_i

  if i <= array[0] || array[-1] <= i
    puts "#{i}は使えない数字です"
    next
  end

  array.push(i)
  p array.sort!
end
