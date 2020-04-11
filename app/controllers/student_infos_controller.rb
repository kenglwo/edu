# coding: utf-8
class StudentInfosController < ApplicationController
  def index
    @msg = "All studen info in database"
    @data = StudentInfo.all
  end

  def add
    @student_info = StudentInfo.new
  end

  def create
    if request.post? then
      @student_info = StudentInfo.create(student_info_params)
      if @student_info.save then
        redirect_to controller: 'japaneses', action: 'add', id: @student_info.student_id
      else
        @msg = "入力に問題があります"
        render 'add'
      end
    end
  end

  private
  def student_info_params
    params.require(:student_info).permit(:student_id, :student_name, :score_toeic, :score_toefl, :score_eiken, :theme)
  end
end
