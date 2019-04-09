require 'test_helper'

class CosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cos_index_url
    assert_response :success
  end

  test "should get new" do
    get cos_new_url
    assert_response :success
  end

  test "should get show" do
    get cos_show_url
    assert_response :success
  end

  test "should get edit" do
    get cos_edit_url
    assert_response :success
  end

end
