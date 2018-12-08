require 'test_helper'

class PickupControllerTest < ActionDispatch::IntegrationTest
  test "should get confirmation" do
    get pickup_confirmation_url
    assert_response :success
  end

end
