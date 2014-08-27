require 'test_helper'

class CharacterAbilityScoresControllerTest < ActionController::TestCase
  setup do
    @character_ability_score = character_ability_scores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_ability_scores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create character_ability_score" do
    assert_difference('CharacterAbilityScore.count') do
      post :create, character_ability_score: {  }
    end

    assert_redirected_to character_ability_score_path(assigns(:character_ability_score))
  end

  test "should show character_ability_score" do
    get :show, id: @character_ability_score
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @character_ability_score
    assert_response :success
  end

  test "should update character_ability_score" do
    patch :update, id: @character_ability_score, character_ability_score: {  }
    assert_redirected_to character_ability_score_path(assigns(:character_ability_score))
  end

  test "should destroy character_ability_score" do
    assert_difference('CharacterAbilityScore.count', -1) do
      delete :destroy, id: @character_ability_score
    end

    assert_redirected_to character_ability_scores_path
  end
end
