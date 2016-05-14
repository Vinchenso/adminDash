require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get starter" do
    get :starter
    assert_response :success
  end

end
