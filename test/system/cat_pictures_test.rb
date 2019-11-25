require "application_system_test_case"

class CatPicturesTest < ApplicationSystemTestCase
  setup do
    @cat_picture = cat_pictures(:one)
  end

  test "visiting the index" do
    visit cat_pictures_url
    assert_selector "h1", text: "Cat Pictures"
  end

  test "creating a Cat picture" do
    visit cat_pictures_url
    click_on "New Cat Picture"

    click_on "Create Cat picture"

    assert_text "Cat picture was successfully created"
    click_on "Back"
  end

  test "updating a Cat picture" do
    visit cat_pictures_url
    click_on "Edit", match: :first

    click_on "Update Cat picture"

    assert_text "Cat picture was successfully updated"
    click_on "Back"
  end

  test "destroying a Cat picture" do
    visit cat_pictures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cat picture was successfully destroyed"
  end
end
