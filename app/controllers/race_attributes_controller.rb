class RaceAttributesController < ApplicationController
  before_action :set_race_attribute, only: [:show, :edit, :update, :destroy]

  # GET /race_attributes
  # GET /race_attributes.json
  def index
    @race_attributes = RaceAttribute.all
  end

  # GET /race_attributes/1
  # GET /race_attributes/1.json
  def show
  end

  # GET /race_attributes/new
  def new
    @race_attribute = RaceAttribute.new
  end

  # GET /race_attributes/1/edit
  def edit
  end

  # POST /race_attributes
  # POST /race_attributes.json
  def create
    @race_attribute = RaceAttribute.new(race_attribute_params)

    respond_to do |format|
      if @race_attribute.save
        format.html { redirect_to @race_attribute, notice: 'Race attribute was successfully created.' }
        format.json { render action: 'show', status: :created, location: @race_attribute }
      else
        format.html { render action: 'new' }
        format.json { render json: @race_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /race_attributes/1
  # PATCH/PUT /race_attributes/1.json
  def update
    respond_to do |format|
      if @race_attribute.update(race_attribute_params)
        format.html { redirect_to @race_attribute, notice: 'Race attribute was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @race_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /race_attributes/1
  # DELETE /race_attributes/1.json
  def destroy
    @race_attribute.destroy
    respond_to do |format|
      format.html { redirect_to race_attributes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_race_attribute
      @race_attribute = RaceAttribute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def race_attribute_params
      params[:race_attribute]
    end
end
