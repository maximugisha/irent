require 'test_helper'

class PropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property = properties(:one)
  end

  test "should get index" do
    get properties_url, as: :json
    assert_response :success
  end

  test "should create property" do
    assert_difference('Property.count') do
      post properties_url, params: { property: { created_at: @property.created_at, description: @property.description, edited_at: @property.edited_at, flag: @property.flag, location: @property.location, name: @property.name, price: @property.price, property_category_id: @property.property_category_id, property_type: @property.property_type, updated_at: @property.updated_at } }, as: :json
    end

    assert_response 201
  end

  test "should show property" do
    get property_url(@property), as: :json
    assert_response :success
  end

  test "should update property" do
    patch property_url(@property), params: { property: { created_at: @property.created_at, description: @property.description, edited_at: @property.edited_at, flag: @property.flag, location: @property.location, name: @property.name, price: @property.price, property_category_id: @property.property_category_id, property_type: @property.property_type, updated_at: @property.updated_at } }, as: :json
    assert_response 200
  end

  test "should destroy property" do
    assert_difference('Property.count', -1) do
      delete property_url(@property), as: :json
    end

    assert_response 204
  end
end
