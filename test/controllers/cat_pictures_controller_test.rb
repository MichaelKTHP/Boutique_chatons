require 'test_helper'

class CatPicturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cat_picture = cat_pictures(:one)
  end

  test "should get index" do
    get cat_pictures_url
    assert_response :success
  end

  test "should get new" do
    get new_cat_picture_url
    assert_response :success
  end

  test "should create cat_picture" do
    assert_difference('CatPicture.count') do
      post cat_pictures_url, params: { cat_picture: {  } }
    end

    assert_redirected_to cat_picture_url(CatPicture.last)
  end

  test "should show cat_picture" do
    get cat_picture_url(@cat_picture)
    assert_response :success
  end

  test "should get edit" do
    get edit_cat_picture_url(@cat_picture)
    assert_response :success
  end

  test "should update cat_picture" do
    patch cat_picture_url(@cat_picture), params: { cat_picture: {  } }
    assert_redirected_to cat_picture_url(@cat_picture)
  end

  test "should destroy cat_picture" do
    assert_difference('CatPicture.count', -1) do
      delete cat_picture_url(@cat_picture)
    end

    assert_redirected_to cat_pictures_url
  end
end
