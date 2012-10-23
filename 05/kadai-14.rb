# -*- coding: utf-8 -*-
# 課題 14. 上のプログラムで、 Student クラスのメソッドとして affiliation メソッドを定義し、その学生の大学名と学部名をつなげた文字列を返すようにせよ。( PStudent と EStudent に定義するのではないことに注意)

class Student
  def initialize(n)
    @name = n
  end
  def name
    @name
  end

  # 追加するのはここだけ
  # universityとfacultyは、サブクラスで指定してもらうのを期待する
  def affiliation
    "#{self.university}#{self.faculty}"

    # それぞれ指定されてない場合でもエラーを出さないために、こうするのもあり
    # "#{self.university || '大学不明'}#{self.faculty || '学部不明'}"
  end
end

class KeioStudent < Student
  def university
    '慶應義塾大学'
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
