require 'test_helper'

class CharacterBackgroundsControllerTest < ActionController::TestCase
  setup do
    @character_background = character_backgrounds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_backgrounds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create character_background" do
    assert_difference('CharacterBackground.count') do
      post :create, character_background: {  }
    end

    assert_redirected_to character_background_path(assigns(:character_background))
  end

  test "should show character_background" do
    get :show, id: @character_background
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @character_background
    assert_response :success
  end

  test "should update character_background" do
    patch :update, id: @character_background, character_background: {  }
    assert_redirected_to character_background_path(assigns(:character_background))
  end

  test "should destroy character_background" do
    assert_difference('CharacterBackground.count', -1) do
      delete :destroy, id: @character_background
    end

    assert_redirected_to character_backgrounds_path
  end
end
