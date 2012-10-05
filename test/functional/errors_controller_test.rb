require 'test_helper'

class ErrorsControllerTest < ActionController::TestCase
  test "should get invalid_code" do
    get :invalid_code
    assert_response :success
  end

end
