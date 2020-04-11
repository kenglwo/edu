# coding: utf-8
class StudentInfo < ApplicationRecord
  validates :student_id, presence: {message: '学籍番号を入力してください'}, uniqueness: {message: '学籍番号は既に登録されています'}
  validates :student_name, presence: {message: '氏名を入力してください'}
  validates :score_toeic, numericality: {message: 'TOEICの点数は数値(半角)を入力してください'}, allow_blank: true
  validates :score_toefl, numericality: {message: 'TOEFLの点数は数値(半角)を入力してください'}, allow_blank: true
  validates :score_eiken, presence: false, numericality: {message: '英検の級は数値(半角)を入力してください'}, allow_blank: true
  validates :theme, presence: {message: 'send the value of theme'}
end
