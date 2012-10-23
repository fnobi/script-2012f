# -*- coding: utf-8 -*-
# 課題 15. 上のプログラムを書いたところ、後になって転学部した人の処理が必要と分かった。例えば、 taro を PStudent のインスタンスとすると、 taro.transfer('環境情報学部') を実行した後は taro.faculty が環境情報学部を返すようにしたい。すでに書いた部分をなるべく変更せず、 KeioStudent クラスに transfer メソッドを追加するだけで taro.faculty の返す値を変更するにはどうすればよいか？


class Student
  def initialize(n)
    @name = n
  end
  def name
    @name
  end

  def affiliation
    "#{self.university || '大学不明'}#{self.faculty || '学部不明'}"
  end
end

class KeioStudent < Student
  def university
    '慶應義塾大学'
  end

  def transfer f
    @faculty = f
    def self.faculty ; @faculty end
  end

end

class PStudent < KeioStudent
  def faculty
    '総合政策学部'
  end
end

class EStudent < KeioStudent
  def faculty
    '環境情報学部'
  end
end
