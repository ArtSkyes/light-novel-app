require "test_helper"

class LightNovelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @light_novel = light_novels(:one)
  end

  test "should get index" do
    get light_novels_url
    assert_response :success
  end

  test "should get new" do
    get new_light_novel_url
    assert_response :success
  end

  test "should create light_novel" do
    assert_difference("LightNovel.count") do
      post light_novels_url, params: { light_novel: { author: @light_novel.author, description: @light_novel.description, price: @light_novel.price, release_date: @light_novel.release_date, title: @light_novel.title } }
    end

    assert_redirected_to light_novel_url(LightNovel.last)
  end

  test "should show light_novel" do
    get light_novel_url(@light_novel)
    assert_response :success
  end

  test "should get edit" do
    get edit_light_novel_url(@light_novel)
    assert_response :success
  end

  test "should update light_novel" do
    patch light_novel_url(@light_novel), params: { light_novel: { author: @light_novel.author, description: @light_novel.description, price: @light_novel.price, release_date: @light_novel.release_date, title: @light_novel.title } }
    assert_redirected_to light_novel_url(@light_novel)
  end

  test "should destroy light_novel" do
    assert_difference("LightNovel.count", -1) do
      delete light_novel_url(@light_novel)
    end

    assert_redirected_to light_novels_url
  end
end
