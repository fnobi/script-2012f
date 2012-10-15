# -*- coding: utf-8 -*-

# 課題 8. 上のプログラムを拡張し、わからない英語を入力されたら日本語訳を教えてもらって覚えるようにせよ。
#
# % ruby dict.rb
# 英語：sheep
# sheepの日本語訳を教えてください：羊
# 英語：sheep
# 日本語：羊
# 英語：

dictionary = { 'dog' => '犬', 'cat' => '猫' }

while true
  # 入力待ち
  print '英語：'
  x = gets.chomp

  # 辞書にない言葉だったら、日本語訳を聞いて終了
  if !dictionary[x]
    print "#{x}の日本語訳を教えてください："
    dictionary[x] = gets.chomp
    next
  end

  # 出力
  puts "日本語：#{dictionary[x]}"
end
