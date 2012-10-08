# -*- coding: utf-8 -*-

# 課題 9. 入力した文字列が、SFCの学部生のログイン名らしきものならyesそうでなければnoと答えるプログラムを書け。
#
# % ruby logname.rb
# 入力: s12345xx
# yes
# % ruby logname.rb
# 入力: x0000
# no

require 'date'

# マニアックにやるなら、いろいろパラメータも使って動的に
regexp = Regexp.new(
                    # 最初の文字は、tかsのどれか(看護とか分かったらここに追加)
                    '^[' + ['t', 's'].join('') + ']' +

                    # 次の2桁は、入学年度の下2桁 (年度は1990..今のどれか)
                    '(' + (1990..Date::today.year)
                      .to_a
                      .map!{|y| y.to_s[-2, 2] }
                      .join('|') +
                    ')' +

                    # 次の3桁はナゾの数字
                    '[0-9]{3}' +

                    # 最後の2桁はイニシャル(小文字アルファベット)
                    '[a-z]{2}'
                    )

# でもまぁこのくらいのどうでもいいプログラムなら、こんなもんじゃないかしら
regexp = /^[ts][\d]{5}[a-z]{2}$/


# ここからプログラム本体
# まずは入力待ち
print '入力: '

if regexp.match(gets.chomp)
  # regexpとマッチしたらyesを出力して終わり
  puts 'yes'
else
  # そうでなかったらnoを出力して終わり
  puts 'no'
end


