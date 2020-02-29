require 'test_helper'

class PropertyCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property_category = property_categories(:one)
  end

  test "should get index" do
    get property_categories_url, as: :json
    assert_response :success
  end

  test "should create property_category" do
    assert_difference('PropertyCategory.count') do
      post property_categories_url, params: { property_category: { created_at: @property_category.created_at, edited_at: @property_category.edited_at, name: @property_category.name, updated_at: @property_category.updated_at } }, as: :json
    end

    assert_response 201
  end

  test "should show property_category" do
    get property_category_url(@property_category), as: :json
    assert_response :success
  end

  test "should update property_category" do
    patch property_category_url(@property_category), params: { property_category: { created_at: @property_category.created_at, edited_at: @property_category.edited_at, name: @property_category.name, updated_at: @property_category.updated_at } }, as: :json
    assert_response 200
  end

  test "should destroy property_category" do
    assert_difference('PropertyCategory.count', -1) do
      delete property_category_url(@property_category), as: :json
    end

    assert_response 204
  end
end
