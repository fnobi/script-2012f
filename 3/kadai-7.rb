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

# 0, 100を決めうちにしないで、配列の初期状態で決めるようにしてみる
array = [0, 100]

while true
  # 入力待ち
  print "#{array[0] + 1}〜#{array[-1] - 1}の数値? "
  g = gets.chomp

  # 数字以外のものを入力されたら中止
  if !g.match(/^-?\d+$/)
    puts "#{g}は数字ではありません"
    next

    # エラー扱いにするならこう
    # raise(RuntimeError, "#{g}は数字ではありません")
  end

  # 挿入する数字は確定
  number = g.to_i

  # 挿入位置を決める
  # arrayの中で、numberより大きい最初の数を、insert_toに入れる
  insert_to = nil
  array.each_index do |index|
    if insert_to.nil? && array[index] > number
      insert_to = index
    end
  end

  # insert_toが0だった場合 (arrayの最初の数よりnumberが小さい) 場合と、
  # insert_toが決まらなかった (numberより大きい数がarrayにはなかった) 場合は挿入中止
  if insert_to == 0 || insert_to.nil?
    puts "#{number}は使えない数字です"
    next
  end

  # 挿入
  array[insert_to, 0] = number

  p array
end
