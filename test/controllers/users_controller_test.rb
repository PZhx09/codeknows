require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
<<<<<<< HEAD
  # test "the truth" do
  #   assert true
  # end
=======
  test "should get new" do
    get users_new_url
    assert_response :success
  end

>>>>>>> production/master
end
