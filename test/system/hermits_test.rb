require "application_system_test_case"

class HermitsTest < ApplicationSystemTestCase
  setup do
    @hermit = hermits(:one)
  end

  test "visiting the index" do
    visit hermits_url
    assert_selector "h1", text: "Hermits"
  end

  test "should create hermit" do
    visit hermits_url
    click_on "New hermit"

    fill_in "Alias", with: @hermit.alias
    fill_in "Description", with: @hermit.description
    fill_in "Face alt", with: @hermit.face_alt
    fill_in "Instagram", with: @hermit.instagram
    fill_in "Patreon", with: @hermit.patreon
    fill_in "Skin alt", with: @hermit.skin_alt
    fill_in "Start year", with: @hermit.start_year
    fill_in "Subs", with: @hermit.subs
    fill_in "Twitch", with: @hermit.twitch
    fill_in "Twitter", with: @hermit.twitter
    fill_in "Youtube", with: @hermit.youtube
    click_on "Create Hermit"

    assert_text "Hermit was successfully created"
    click_on "Back"
  end

  test "should update Hermit" do
    visit hermit_url(@hermit)
    click_on "Edit this hermit", match: :first

    fill_in "Alias", with: @hermit.alias
    fill_in "Description", with: @hermit.description
    fill_in "Face alt", with: @hermit.face_alt
    fill_in "Instagram", with: @hermit.instagram
    fill_in "Patreon", with: @hermit.patreon
    fill_in "Skin alt", with: @hermit.skin_alt
    fill_in "Start year", with: @hermit.start_year
    fill_in "Subs", with: @hermit.subs
    fill_in "Twitch", with: @hermit.twitch
    fill_in "Twitter", with: @hermit.twitter
    fill_in "Youtube", with: @hermit.youtube
    click_on "Update Hermit"

    assert_text "Hermit was successfully updated"
    click_on "Back"
  end

  test "should destroy Hermit" do
    visit hermit_url(@hermit)
    click_on "Destroy this hermit", match: :first

    assert_text "Hermit was successfully destroyed"
  end
end
