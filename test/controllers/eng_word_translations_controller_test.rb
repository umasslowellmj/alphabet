require 'test_helper'

class EngWordTranslationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eng_word_translation = eng_word_translations(:one)
  end

  test "should get index" do
    get eng_word_translations_url
    assert_response :success
  end

  test "should get new" do
    get new_eng_word_translation_url
    assert_response :success
  end

  test "should create eng_word_translation" do
    assert_difference('EngWordTranslation.count') do
      post eng_word_translations_url, params: { eng_word_translation: {  } }
    end

    assert_redirected_to eng_word_translation_url(EngWordTranslation.last)
  end

  test "should show eng_word_translation" do
    get eng_word_translation_url(@eng_word_translation)
    assert_response :success
  end

  test "should get edit" do
    get edit_eng_word_translation_url(@eng_word_translation)
    assert_response :success
  end

  test "should update eng_word_translation" do
    patch eng_word_translation_url(@eng_word_translation), params: { eng_word_translation: {  } }
    assert_redirected_to eng_word_translation_url(@eng_word_translation)
  end

  test "should destroy eng_word_translation" do
    assert_difference('EngWordTranslation.count', -1) do
      delete eng_word_translation_url(@eng_word_translation)
    end

    assert_redirected_to eng_word_translations_url
  end
end
