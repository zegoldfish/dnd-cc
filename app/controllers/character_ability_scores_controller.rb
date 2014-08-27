class CharacterAbilityScoresController < ApplicationController
  before_action :set_character_ability_score, only: [:show, :edit, :update, :destroy]

  # GET /character_ability_scores
  # GET /character_ability_scores.json
  def index
    @character_ability_scores = CharacterAbilityScore.all
  end

  # GET /character_ability_scores/1
  # GET /character_ability_scores/1.json
  def show
  end

  # GET /character_ability_scores/new
  def new
    @character_ability_score = CharacterAbilityScore.new
  end

  # GET /character_ability_scores/1/edit
  def edit
  end

  # POST /character_ability_scores
  # POST /character_ability_scores.json
  def create
    @character_ability_score = CharacterAbilityScore.new(character_ability_score_params)

    respond_to do |format|
      if @character_ability_score.save
        format.html { redirect_to @character_ability_score, notice: 'Character ability score was successfully created.' }
        format.json { render action: 'show', status: :created, location: @character_ability_score }
      else
        format.html { render action: 'new' }
        format.json { render json: @character_ability_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /character_ability_scores/1
  # PATCH/PUT /character_ability_scores/1.json
  def update
    respond_to do |format|
      if @character_ability_score.update(character_ability_score_params)
        format.html { redirect_to @character_ability_score, notice: 'Character ability score was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @character_ability_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /character_ability_scores/1
  # DELETE /character_ability_scores/1.json
  def destroy
    @character_ability_score.destroy
    respond_to do |format|
      format.html { redirect_to character_ability_scores_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_ability_score
      @character_ability_score = CharacterAbilityScore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_ability_score_params
      params[:character_ability_score]
    end
end
