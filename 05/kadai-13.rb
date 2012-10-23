# -*- coding: utf-8 -*-

# 課題 13. 次のようなメソッドを持つ預金口座のクラスを定義せよ。ただし、残高より多い金額は引き出したり振り込んだりできないので、その場合はエラーメッセージを出力し、残高は変えないものとする。
# ・残高を調べる
# ・金額を指定して預ける
# ・金額を指定して引き出す
# ・相手の口座と金額を指定して振り込む
# なお、残高不足のメッセージを表示するところは、プログラム内で一箇所だけにすること。


# 一応、けっこう丁寧にreturnを書いてみた


class Account
  # 初期化 (最初の預金額は0円)
  def initialize
    @balance = 0
  end

  # 残高を調べる
  def balance
    return @balance
  end

  # 金額を指定して引き出す
  def withdraw money
    # 引き出したら@balanceが0より小さくなる場合、引き出しを中止
    if @balance - money < 0
      puts "預金額が#{money - @balance}円足りません。"
      return false
    end

    return @balance -= money
  end

  # 金額を指定して預ける
  def deposit money
    # 預金することは、負の金額を引き出すことと同じ
    # なので、↓こう書ける

    return self.withdraw(-money)

    # また、もし0より小さい値がmoneyとして指定された場合、何も対策をしないと、
    # depositの結果、預金額がマイナスになることもあり得る。
    # 実行後の預金額をチェックしているwithdrawに、預金額の操作を一括して任せてしまう
    # ことで、それも防げる。
  end

  # 相手の口座と金額を指定して振り込む
  def transfer (another, money)
    # selfからの引き出しが失敗した場合、anotherへの預金も中止しなくては行けないため、
    # こういう構造にする

    if self.withdraw(money)
      another.deposit(money)
      return true
    else
      return false
    end
  end
end
