# coding: utf-8
class LoginController < ApplicationController
  def index
    if request.post? then
      if params['check'] then
        redirect_to controller: :student_infos, action: :add
      else
        @msg = 'チェックボックスをクリックし，個人データの取り扱いに同意してください。'
      end
    else
    end
  end
end
