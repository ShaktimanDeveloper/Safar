require 'test_helper'

class RespondersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @responder = responders(:one)
  end

  test "should get index" do
    get responders_url
    assert_response :success
  end

  test "should get new" do
    get new_responder_url
    assert_response :success
  end

  test "should create responder" do
    assert_difference('Responder.count') do
      post responders_url, params: { responder: { address: @responder.address, name: @responder.name } }
    end

    assert_redirected_to responder_url(Responder.last)
  end

  test "should show responder" do
    get responder_url(@responder)
    assert_response :success
  end

  test "should get edit" do
    get edit_responder_url(@responder)
    assert_response :success
  end

  test "should update responder" do
    patch responder_url(@responder), params: { responder: { address: @responder.address, name: @responder.name } }
    assert_redirected_to responder_url(@responder)
  end

  test "should destroy responder" do
    assert_difference('Responder.count', -1) do
      delete responder_url(@responder)
    end

    assert_redirected_to responders_url
  end
end
