require 'test_helper'

class ImageControllerTest < ActionController::TestCase
  test "should get validate_credentials" do
    get :validate_credentials
    assert_response :success
  end

end
