require 'test_helper'

class SyncControllerTest < ActionController::TestCase
  test "should get goods" do
    get :goods
    assert_response :success
  end

end
