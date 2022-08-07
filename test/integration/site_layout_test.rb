require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  
  test "layout links" do
    get signup_path
    assert_template 'users/new'
    assert_select "a[href=?]", root_path, count: 1
  end
end
