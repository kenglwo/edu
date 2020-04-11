# coding: utf-8
class EnglishSubVerbController < ApplicationController
  def index
  end

  def add
    @student_id = params['id']
    @english_array = English.where(student_id: @student_id).pluck('sentence')
  end

  def create
    @student_id = params['student_id']
    has_key = true
    key_index = 1
    
    while has_key do
      e_subject_key = "e_subject_#{key_index}"
      e_verb_key = "e_verb_#{key_index}"
      if params.has_key?(e_subject_key) then
        sentence_num = key_index
        e_subject = params[e_subject_key]
        e_verb = params[e_verb_key]
    
        english = English.where(student_id: @student_id, sentence_num: sentence_num)
        english.update_attributes(subject: e_subject, verb: e_verb)
        
        key_index += 1
        
      else
        has_key = false
      end
    end
    
    @msg = '英語の主語・述語 登録成功'
    redirect_to controller: 'end', action: 'index'
  end
  
end
