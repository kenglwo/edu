# coding: utf-8
class JapanesesController < ApplicationController
  def index
    @data = Japanese.all
  end

  def add
    @student_id = params[:id]
    # @japanese = Japanese.new
    render 'add'
  end

  def create
    if request.post? then
      @student_id = params['student_id'] 
      @theme = params['theme']
      student_info = StudentInfo.where(student_id: @student_id).take
      student_info.update_attributes(theme: @theme)

      @sentences = params['japanese_sentences']
      @sentences.gsub!(/(\r\n?|\n|)/,"")
      @sentences.gsub!(/ /,"")
      @sentences.gsub!(/　/,"")
      
      if @sentences.length > 300 and @sentences.length <= 400 then
        sentences_arrray = @sentences.split('。')
        
        sentences_arrray.each_with_index do |sentence, i|
          sentence += '。'
          sentence_num = i + 1
          subject = ''
          verb = ''
          j_sentence = Japanese.create(student_id: @student_id, sentence_num: sentence_num, sentence: sentence, subject: subject, verb: verb)
          j_sentence.save!
        end

        redirect_to controller: 'englishes', action: 'add', id: @student_id
        
      else
        @msg = '文章は300字以上400字以下で書いてください。'
        render 'add'
      end
    end
  end

end
