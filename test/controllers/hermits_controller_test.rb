require "test_helper"

class HermitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hermit = hermits(:one)
  end

  test "should get index" do
    get hermits_url
    assert_response :success
  end

  test "should get new" do
    get new_hermit_url
    assert_response :success
  end

  test "should create hermit" do
    assert_difference("Hermit.count") do
      post hermits_url, params: { hermit: { alias: @hermit.alias, description: @hermit.description, face_alt: @hermit.face_alt, instagram: @hermit.instagram, patreon: @hermit.patreon, skin_alt: @hermit.skin_alt, start_year: @hermit.start_year, subs: @hermit.subs, twitch: @hermit.twitch, twitter: @hermit.twitter, youtube: @hermit.youtube } }
    end

    assert_redirected_to hermit_url(Hermit.last)
  end

  test "should show hermit" do
    get hermit_url(@hermit)
    assert_response :success
  end

  test "should get edit" do
    get edit_hermit_url(@hermit)
    assert_response :success
  end

  test "should update hermit" do
    patch hermit_url(@hermit), params: { hermit: { alias: @hermit.alias, description: @hermit.description, face_alt: @hermit.face_alt, instagram: @hermit.instagram, patreon: @hermit.patreon, skin_alt: @hermit.skin_alt, start_year: @hermit.start_year, subs: @hermit.subs, twitch: @hermit.twitch, twitter: @hermit.twitter, youtube: @hermit.youtube } }
    assert_redirected_to hermit_url(@hermit)
  end

  test "should destroy hermit" do
    assert_difference("Hermit.count", -1) do
      delete hermit_url(@hermit)
    end

    assert_redirected_to hermits_url
  end
end
