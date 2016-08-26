class SamplecreationsController < ApplicationController
  before_action :set_samplecreation, only: [:show, :edit, :update, :destroy]

  # GET /samplecreations
  # GET /samplecreations.json
  def index
    @samplecreations = Samplecreation.all
  end

  # GET /samplecreations/1
  # GET /samplecreations/1.json
  def show
  end

  # GET /samplecreations/new
  def new
    @samplecreation = Samplecreation.new
  end

  # GET /samplecreations/1/edit
  def edit
  end

  # POST /samplecreations
  # POST /samplecreations.json
  def create
    @samplecreation = Samplecreation.new(samplecreation_params)

    respond_to do |format|
      if @samplecreation.save
        format.html { redirect_to @samplecreation, notice: 'Samplecreation was successfully created.' }
        format.json { render :show, status: :created, location: @samplecreation }
      else
        format.html { redirect_to @samplecreation, notice: 'Samplecreation was Not successfully created.' }
        format.json { render json: @samplecreation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /samplecreations/1
  # PATCH/PUT /samplecreations/1.json
  def update
    respond_to do |format|
      if @samplecreation.update(samplecreation_params)
        format.html { redirect_to @samplecreation, notice: 'Samplecreation was successfully updated.' }
        format.json { render :show, status: :ok, location: @samplecreation }
      else
        format.html { render :edit }
        format.json { render json: @samplecreation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /samplecreations/1
  # DELETE /samplecreations/1.json
  def destroy
    @samplecreation.destroy
    respond_to do |format|
      format.html { redirect_to samplecreations_url, notice: 'Samplecreation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_samplecreation
      @samplecreation = Samplecreation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def samplecreation_params
      params.require(:samplecreation).permit(:sample)
    end
end
