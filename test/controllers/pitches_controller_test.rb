require "test_helper"

class PitchesControllerTest < ActionDispatch::IntegrationTest
  test "should get users" do
    get pitches_users_url
    assert_response :success
  end

  test "should get index" do
    get pitches_index_url
    assert_response :success
  end

  test "should get create" do
    get pitches_create_url
    assert_response :success
  end

  test "should get new" do
    get pitches_new_url
    assert_response :success
  end

  test "should get show" do
    get pitches_show_url
    assert_response :success
  end

  test "should get edit" do
    get pitches_edit_url
    assert_response :success
  end

  test "should get update" do
    get pitches_update_url
    assert_response :success
  end

  test "should get destroy" do
    get pitches_destroy_url
    assert_response :success
  end
end
