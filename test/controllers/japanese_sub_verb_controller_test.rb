require 'test_helper'

class JapaneseSubVerbControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get japanese_sub_verb_index_url
    assert_response :success
  end

end
