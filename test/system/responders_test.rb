require "application_system_test_case"

class RespondersTest < ApplicationSystemTestCase
  setup do
    @responder = responders(:one)
  end

  test "visiting the index" do
    visit responders_url
    assert_selector "h1", text: "Responders"
  end

  test "creating a Responder" do
    visit responders_url
    click_on "New Responder"

    fill_in "Address", with: @responder.address
    fill_in "Name", with: @responder.name
    click_on "Create Responder"

    assert_text "Responder was successfully created"
    click_on "Back"
  end

  test "updating a Responder" do
    visit responders_url
    click_on "Edit", match: :first

    fill_in "Address", with: @responder.address
    fill_in "Name", with: @responder.name
    click_on "Update Responder"

    assert_text "Responder was successfully updated"
    click_on "Back"
  end

  test "destroying a Responder" do
    visit responders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Responder was successfully destroyed"
  end
end
