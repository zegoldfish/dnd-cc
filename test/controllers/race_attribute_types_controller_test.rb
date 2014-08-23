require 'test_helper'

class RaceAttributeTypesControllerTest < ActionController::TestCase
  setup do
    @race_attribute_type = race_attribute_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:race_attribute_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create race_attribute_type" do
    assert_difference('RaceAttributeType.count') do
      post :create, race_attribute_type: {  }
    end

    assert_redirected_to race_attribute_type_path(assigns(:race_attribute_type))
  end

  test "should show race_attribute_type" do
    get :show, id: @race_attribute_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @race_attribute_type
    assert_response :success
  end

  test "should update race_attribute_type" do
    patch :update, id: @race_attribute_type, race_attribute_type: {  }
    assert_redirected_to race_attribute_type_path(assigns(:race_attribute_type))
  end

  test "should destroy race_attribute_type" do
    assert_difference('RaceAttributeType.count', -1) do
      delete :destroy, id: @race_attribute_type
    end

    assert_redirected_to race_attribute_types_path
  end
end
