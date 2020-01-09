require 'test_helper'

class RecruitsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get recruits_index_url
    assert_response :success
  end

  test "should get confirm" do
    get recruits_confirm_url
    assert_response :success
  end

  test "should get thanks" do
    get recruits_thanks_url
    assert_response :success
  end

end
