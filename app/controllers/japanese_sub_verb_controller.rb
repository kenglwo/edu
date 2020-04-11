# coding: utf-8
class JapaneseSubVerbController < ApplicationController
  def index
  end

  def add
    @student_id = params['id']
    @japanese_array = Japanese.where(student_id: @student_id).pluck('sentence')
  end

  def create
    @student_id = params['student_id']
    has_key = true
    key_index = 1
    
    while has_key do
      j_subject_key = "j_subject_#{key_index}"
      j_verb_key = "j_verb_#{key_index}"
      if params.has_key?(j_subject_key) then
        sentence_num = key_index
        j_subject = params[j_subject_key]
        j_verb = params[j_verb_key]
    
        # japanese = Japanese.where(student_id: @student_id, sentence_num: @sentence_num)
        japanese = Japanese.where("student_id = ? AND sentence_num = ?", @student_id, sentence_num).take
        # @data = japanese.sentence

        # render 'index'
        # return
        
        japanese.update_attributes(subject: j_subject, verb: j_verb)
        
        key_index += 1
        
      else
        has_key = false
      end
    end
    
    @msg = '日本語の主語・述語 登録成功'
    redirect_to controller: 'english_sub_verb', action: 'add', id: @student_id
    
  end
end
