require "application_system_test_case"

class LightNovelsTest < ApplicationSystemTestCase
  setup do
    @light_novel = light_novels(:one)
  end

  test "visiting the index" do
    visit light_novels_url
    assert_selector "h1", text: "Light novels"
  end

  test "should create light novel" do
    visit light_novels_url
    click_on "New light novel"

    fill_in "Author", with: @light_novel.author
    fill_in "Description", with: @light_novel.description
    fill_in "Price", with: @light_novel.price
    fill_in "Release date", with: @light_novel.release_date
    fill_in "Title", with: @light_novel.title
    click_on "Create Light novel"

    assert_text "Light novel was successfully created"
    click_on "Back"
  end

  test "should update Light novel" do
    visit light_novel_url(@light_novel)
    click_on "Edit this light novel", match: :first

    fill_in "Author", with: @light_novel.author
    fill_in "Description", with: @light_novel.description
    fill_in "Price", with: @light_novel.price
    fill_in "Release date", with: @light_novel.release_date
    fill_in "Title", with: @light_novel.title
    click_on "Update Light novel"

    assert_text "Light novel was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novel" do
    visit light_novel_url(@light_novel)
    click_on "Destroy this light novel", match: :first

    assert_text "Light novel was successfully destroyed"
  end
end
