# -*- coding: utf-8 -*-

# 課題 13. 上の Student クラスは点数を1個しか記録できない。次のようにして複数科目の点数を記録できるようにせよ。

# initialize メソッドで @score の値を空のハッシュにしておく。
# set_score メソッドは、科目名と点数を指定して、ハッシュに追加する。
# score メソッドは科目名を指定し、その科目の点数を返すようにする。
# compare メソッドは比べる相手と科目名を指定し、その科目の点数で比較する。


class Student
  def initialize(n)
    @name = n

    # initialize メソッドで @score の値を空のハッシュにしておく。
    @score = Hash.new
  end
  def name
    @name
  end

  # set_score メソッドは、科目名と点数を指定して、ハッシュに追加する。
  def set_score(subject, score)
    @score[subject] = score
  end

  # score メソッドは科目名を指定し、その科目の点数を返すようにする。
  def score(subject)
    @score[subject]
  end

  # compare メソッドは比べる相手と科目名を指定し、その科目の点数で比較する。
  def compare(x, subject)
    case
    when @score[subject] > x.score(subject)
      "私は#{subject}において#{x.name}より賢い!"
    when @score[subject] < x.score(subject)
      "私は#{subject}において#{x.name}よりアホです…"
    else
      "私は#{subject}において#{x.name}と引き分け"
    end
  end
end


# 動作テスト
# taro = Student.new('太郎')
# taro.set_score('数学', 65)
# taro.set_score('国語', 91)

# hanako = Student.new('花子')
# hanako.set_score('数学',80)
# hanako.set_score('国語',77)

# puts hanako.compare(taro, '数学')  # 花子の側から見て太郎と比較する
# puts taro.compare(hanako, '国語')  # 太郎の側から見て花子と比較する
