require 'test_helper'

class JapanesesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get japaneses_index_url
    assert_response :success
  end

end
