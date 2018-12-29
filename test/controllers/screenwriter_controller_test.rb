require 'test_helper'

class ScreenwriterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get screenwriter_index_url
    assert_response :success
  end

  test "should get show" do
    get screenwriter_show_url
    assert_response :success
  end

  test "should get new" do
    get screenwriter_new_url
    assert_response :success
  end

  test "should get edit" do
    get screenwriter_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get screenwriter_destroy_url
    assert_response :success
  end

end
