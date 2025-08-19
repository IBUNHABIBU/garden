require "test_helper"

class CtaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ctum = cta(:one)
  end

  test "should get index" do
    get cta_url
    assert_response :success
  end

  test "should get new" do
    get new_ctum_url
    assert_response :success
  end

  test "should create ctum" do
    assert_difference("Ctum.count") do
      post cta_url, params: { ctum: { background_color: @ctum.background_color, button_text: @ctum.button_text, button_url: @ctum.button_url, subtitle: @ctum.subtitle, title: @ctum.title } }
    end

    assert_redirected_to ctum_url(Ctum.last)
  end

  test "should show ctum" do
    get ctum_url(@ctum)
    assert_response :success
  end

  test "should get edit" do
    get edit_ctum_url(@ctum)
    assert_response :success
  end

  test "should update ctum" do
    patch ctum_url(@ctum), params: { ctum: { background_color: @ctum.background_color, button_text: @ctum.button_text, button_url: @ctum.button_url, subtitle: @ctum.subtitle, title: @ctum.title } }
    assert_redirected_to ctum_url(@ctum)
  end

  test "should destroy ctum" do
    assert_difference("Ctum.count", -1) do
      delete ctum_url(@ctum)
    end

    assert_redirected_to cta_url
  end
end
