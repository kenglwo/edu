class StudentInfoDbController < ApplicationController
  def index
    @msg = "Student info all"
    @data = StudentInfo.all
    
  end
end
