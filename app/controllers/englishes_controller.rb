# coding: utf-8
class EnglishesController < ApplicationController
  def index
    @data = English.all
  end

  def add
    @student_id = params[:id]
    @japanese_array = Japanese.where(student_id: @student_id).pluck('sentence')
  end

  def create
    if request.post? then
      @student_id = params['student_id']
      @params = params

      has_key = true
      key_index = 1
      while has_key do
        sentence_key = "e_#{key_index}"
        if params.has_key?(sentence_key) then
          sentence_num = key_index
          english_sentence = params[sentence_key]
          subject = ''
          verb = ''

          english = English.create(student_id: @student_id, sentence_num: sentence_num, sentence: english_sentence, subject: subject, verb: verb)
          english.save!

          key_index += 1
          
        else
          has_key = false
        end
      end

      redirect_to controller: '/japanese_sub_verb', action: 'add', id: @student_id

    end
  end

  # private
  # def english_params
  #   params.require(:english).permit(:student_id, :sentence_num, :sentence, :subject, :verb)
  # end
  
end
