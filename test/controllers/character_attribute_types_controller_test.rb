require 'test_helper'

class CharacterAttributeTypesControllerTest < ActionController::TestCase
  setup do
    @character_attribute_type = character_attribute_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_attribute_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create character_attribute_type" do
    assert_difference('CharacterAttributeType.count') do
      post :create, character_attribute_type: {  }
    end

    assert_redirected_to character_attribute_type_path(assigns(:character_attribute_type))
  end

  test "should show character_attribute_type" do
    get :show, id: @character_attribute_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @character_attribute_type
    assert_response :success
  end

  test "should update character_attribute_type" do
    patch :update, id: @character_attribute_type, character_attribute_type: {  }
    assert_redirected_to character_attribute_type_path(assigns(:character_attribute_type))
  end

  test "should destroy character_attribute_type" do
    assert_difference('CharacterAttributeType.count', -1) do
      delete :destroy, id: @character_attribute_type
    end

    assert_redirected_to character_attribute_types_path
  end
end
