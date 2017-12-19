require 'test_helper'

class TalksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get talks_index_url
    assert_response :success
  end

  test "should get show" do
    get talks_show_url
    assert_response :success
  end

  test "should get new" do
    get talks_new_url
    assert_response :success
  end

  test "should get create" do
    get talks_create_url
    assert_response :success
  end

  test "should get destory" do
    get talks_destory_url
    assert_response :success
  end

end
