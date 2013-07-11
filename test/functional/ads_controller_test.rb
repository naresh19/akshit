require 'test_helper'

class AdsControllerTest < ActionController::TestCase
  test "should get company:string" do
    get :company:string
    assert_response :success
  end

  test "should get text:text" do
    get :text:text
    assert_response :success
  end

end
