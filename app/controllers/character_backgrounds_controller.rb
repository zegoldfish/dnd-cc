class CharacterBackgroundsController < ApplicationController
  before_action :set_character_background, only: [:show, :edit, :update, :destroy]

  # GET /character_backgrounds
  # GET /character_backgrounds.json
  def index
    @character_backgrounds = CharacterBackground.all
  end

  # GET /character_backgrounds/1
  # GET /character_backgrounds/1.json
  def show
  end

  # GET /character_backgrounds/new
  def new
    @character_background = CharacterBackground.new
  end

  # GET /character_backgrounds/1/edit
  def edit
  end

  # POST /character_backgrounds
  # POST /character_backgrounds.json
  def create
    @character_background = CharacterBackground.new(character_background_params)

    respond_to do |format|
      if @character_background.save
        format.html { redirect_to @character_background, notice: 'Character background was successfully created.' }
        format.json { render action: 'show', status: :created, location: @character_background }
      else
        format.html { render action: 'new' }
        format.json { render json: @character_background.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /character_backgrounds/1
  # PATCH/PUT /character_backgrounds/1.json
  def update
    respond_to do |format|
      if @character_background.update(character_background_params)
        format.html { redirect_to @character_background, notice: 'Character background was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @character_background.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /character_backgrounds/1
  # DELETE /character_backgrounds/1.json
  def destroy
    @character_background.destroy
    respond_to do |format|
      format.html { redirect_to character_backgrounds_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_background
      @character_background = CharacterBackground.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_background_params
      params[:character_background]
    end
end
