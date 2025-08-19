require "application_system_test_case"

class CtaTest < ApplicationSystemTestCase
  setup do
    @ctum = cta(:one)
  end

  test "visiting the index" do
    visit cta_url
    assert_selector "h1", text: "Cta"
  end

  test "should create ctum" do
    visit cta_url
    click_on "New ctum"

    fill_in "Background color", with: @ctum.background_color
    fill_in "Button text", with: @ctum.button_text
    fill_in "Button url", with: @ctum.button_url
    fill_in "Subtitle", with: @ctum.subtitle
    fill_in "Title", with: @ctum.title
    click_on "Create Ctum"

    assert_text "Ctum was successfully created"
    click_on "Back"
  end

  test "should update Ctum" do
    visit ctum_url(@ctum)
    click_on "Edit this ctum", match: :first

    fill_in "Background color", with: @ctum.background_color
    fill_in "Button text", with: @ctum.button_text
    fill_in "Button url", with: @ctum.button_url
    fill_in "Subtitle", with: @ctum.subtitle
    fill_in "Title", with: @ctum.title
    click_on "Update Ctum"

    assert_text "Ctum was successfully updated"
    click_on "Back"
  end

  test "should destroy Ctum" do
    visit ctum_url(@ctum)
    accept_confirm { click_on "Destroy this ctum", match: :first }

    assert_text "Ctum was successfully destroyed"
  end
end
