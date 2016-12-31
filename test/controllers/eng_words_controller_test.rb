require 'test_helper'

class EngWordsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get eng_words_new_url
    assert_response :success
  end

end
