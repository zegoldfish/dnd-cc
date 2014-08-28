require 'test_helper'

class CharacterSkillsControllerTest < ActionController::TestCase
  setup do
    @character_skill = character_skills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_skills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create character_skill" do
    assert_difference('CharacterSkill.count') do
      post :create, character_skill: { character_id: @character_skill.character_id, skill_id: @character_skill.skill_id, trained: @character_skill.trained }
    end

    assert_redirected_to character_skill_path(assigns(:character_skill))
  end

  test "should show character_skill" do
    get :show, id: @character_skill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @character_skill
    assert_response :success
  end

  test "should update character_skill" do
    patch :update, id: @character_skill, character_skill: { character_id: @character_skill.character_id, skill_id: @character_skill.skill_id, trained: @character_skill.trained }
    assert_redirected_to character_skill_path(assigns(:character_skill))
  end

  test "should destroy character_skill" do
    assert_difference('CharacterSkill.count', -1) do
      delete :destroy, id: @character_skill
    end

    assert_redirected_to character_skills_path
  end
end
