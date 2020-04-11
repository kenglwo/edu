require 'test_helper'

class StudentInfosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get student_infos_index_url
    assert_response :success
  end

end
