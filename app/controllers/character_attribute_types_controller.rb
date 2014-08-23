class CharacterAttributeTypesController < ApplicationController
  before_action :set_character_attribute_type, only: [:show, :edit, :update, :destroy]

  # GET /character_attribute_types
  # GET /character_attribute_types.json
  def index
    @character_attribute_types = CharacterAttributeType.all
  end

  # GET /character_attribute_types/1
  # GET /character_attribute_types/1.json
  def show
  end

  # GET /character_attribute_types/new
  def new
    @character_attribute_type = CharacterAttributeType.new
  end

  # GET /character_attribute_types/1/edit
  def edit
  end

  # POST /character_attribute_types
  # POST /character_attribute_types.json
  def create
    @character_attribute_type = CharacterAttributeType.new(character_attribute_type_params)

    respond_to do |format|
      if @character_attribute_type.save
        format.html { redirect_to @character_attribute_type, notice: 'Character attribute type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @character_attribute_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @character_attribute_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /character_attribute_types/1
  # PATCH/PUT /character_attribute_types/1.json
  def update
    respond_to do |format|
      if @character_attribute_type.update(character_attribute_type_params)
        format.html { redirect_to @character_attribute_type, notice: 'Character attribute type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @character_attribute_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /character_attribute_types/1
  # DELETE /character_attribute_types/1.json
  def destroy
    @character_attribute_type.destroy
    respond_to do |format|
      format.html { redirect_to character_attribute_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_attribute_type
      @character_attribute_type = CharacterAttributeType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_attribute_type_params
      params[:character_attribute_type].permit(:attribute_name, :description)
    end
end
