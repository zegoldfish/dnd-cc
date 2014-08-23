class RaceAttributeTypesController < ApplicationController
  before_action :set_race_attribute_type, only: [:show, :edit, :update, :destroy]

  # GET /race_attribute_types
  # GET /race_attribute_types.json
  def index
    @race_attribute_types = RaceAttributeType.all
  end

  # GET /race_attribute_types/1
  # GET /race_attribute_types/1.json
  def show
  end

  # GET /race_attribute_types/new
  def new
    @race_attribute_type = RaceAttributeType.new
  end

  # GET /race_attribute_types/1/edit
  def edit
  end

  # POST /race_attribute_types
  # POST /race_attribute_types.json
  def create
    @race_attribute_type = RaceAttributeType.new(race_attribute_type_params)

    respond_to do |format|
      if @race_attribute_type.save
        format.html { redirect_to @race_attribute_type, notice: 'Race attribute type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @race_attribute_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @race_attribute_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /race_attribute_types/1
  # PATCH/PUT /race_attribute_types/1.json
  def update
    respond_to do |format|
      if @race_attribute_type.update(race_attribute_type_params)
        format.html { redirect_to @race_attribute_type, notice: 'Race attribute type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @race_attribute_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /race_attribute_types/1
  # DELETE /race_attribute_types/1.json
  def destroy
    @race_attribute_type.destroy
    respond_to do |format|
      format.html { redirect_to race_attribute_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_race_attribute_type
      @race_attribute_type = RaceAttributeType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def race_attribute_type_params
      params[:race_attribute_type]
    end
end
