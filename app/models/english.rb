# coding: utf-8
class English < ApplicationRecord
  validates :student_id, presence: {message: "学籍番号を入力してください"}
  validates :sentence_num, presence: true  
end
