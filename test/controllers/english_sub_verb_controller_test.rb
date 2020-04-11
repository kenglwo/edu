require 'test_helper'

class EnglishSubVerbControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get english_sub_verb_index_url
    assert_response :success
  end

end
