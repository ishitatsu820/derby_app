require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  
  test "should get home" do
    get root_path
    assert_response :success
  end
  
  test "should get new" do
    get new_user_path
    assert_response :success
  end
  
end
