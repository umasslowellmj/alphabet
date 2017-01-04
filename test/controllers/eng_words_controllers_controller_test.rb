require 'test_helper'

class EngWordsControllersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eng_words_controller = eng_words_controllers(:one)
  end

  test "should get index" do
    get eng_words_controllers_url
    assert_response :success
  end

  test "should get new" do
    get new_eng_words_controller_url
    assert_response :success
  end

  test "should create eng_words_controller" do
    assert_difference('EngWordsController.count') do
      post eng_words_controllers_url, params: { eng_words_controller: {  } }
    end

    assert_redirected_to eng_words_controller_url(EngWordsController.last)
  end

  test "should show eng_words_controller" do
    get eng_words_controller_url(@eng_words_controller)
    assert_response :success
  end

  test "should get edit" do
    get edit_eng_words_controller_url(@eng_words_controller)
    assert_response :success
  end

  test "should update eng_words_controller" do
    patch eng_words_controller_url(@eng_words_controller), params: { eng_words_controller: {  } }
    assert_redirected_to eng_words_controller_url(@eng_words_controller)
  end

  test "should destroy eng_words_controller" do
    assert_difference('EngWordsController.count', -1) do
      delete eng_words_controller_url(@eng_words_controller)
    end

    assert_redirected_to eng_words_controllers_url
  end
end
