require 'test_helper'

class GoalsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "should get new" do
   get goals_new_url
   assert_response :success
  end
  
  test "should get edit" do
   get goals_edit_url
   assert_response :success
  end
   
end
