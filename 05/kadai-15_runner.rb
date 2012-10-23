# -*- coding: utf-8 -*-

require './kadai-15'

taro = PStudent.new('太郎')
puts "#{taro.name}は#{taro.affiliation}の学生です。"
taro.transfer('環境情報学部')
puts "#{taro.name}は#{taro.affiliation}の学生です。"
