require 'test_helper'

class EndControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get end_index_url
    assert_response :success
  end

end
