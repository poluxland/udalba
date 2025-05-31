require "test_helper"

class Block2SurveyResponsesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get block2_survey_responses_index_url
    assert_response :success
  end

  test "should get show" do
    get block2_survey_responses_show_url
    assert_response :success
  end

  test "should get new" do
    get block2_survey_responses_new_url
    assert_response :success
  end

  test "should get create" do
    get block2_survey_responses_create_url
    assert_response :success
  end

  test "should get edit" do
    get block2_survey_responses_edit_url
    assert_response :success
  end

  test "should get update" do
    get block2_survey_responses_update_url
    assert_response :success
  end
end
