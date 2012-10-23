# -*- coding: utf-8 -*-

require './kadai-13'

a = Account.new
a.deposit(3000)

b = Account.new #bの口座
b.deposit(1000) #bの口座に1000円預ける

puts "aの預金額: #{a.balance}"
puts "bの預金額: #{b.balance}"

puts 'bの口座から500円引き出す'
b.withdraw(500)

puts 'aの口座からbの口座に2000円振り込む'
a.transfer(b, 2000)

puts "aの預金額: #{a.balance}"
puts "bの預金額: #{b.balance}"

puts 'bの口座からaの口座に5000円振り込む'
b.transfer(a, 5000)

puts "aの預金額: #{a.balance}"
puts "bの預金額: #{b.balance}"
