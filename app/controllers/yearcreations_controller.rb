class YearcreationsController < ApplicationController
  before_action :set_yearcreation, only: [:show, :edit, :update, :destroy]

  # GET /yearcreations
  # GET /yearcreations.json
  def index
    @yearcreations = Yearcreation.all
  end

  # GET /yearcreations/1
  # GET /yearcreations/1.json
  def show
  end

  # GET /yearcreations/new
  def new
    @yearcreation = Yearcreation.new
  end

  # GET /yearcreations/1/edit
  def edit
    @yearcreations = Yearcreation.all
  end

  # POST /yearcreations
  # POST /yearcreations.json
  def create
    @yearcreation = Yearcreation.new(yearcreation_params)

    respond_to do |format|
      if @yearcreation.save
        format.html { redirect_to yearcreations_url, notice: 'Yearcreation was successfully created.' }
        format.json { render :show, status: :created, location: @yearcreation }
      else
        format.html { redirect_to yearcreations_url, notice: 'Yearcreation was Not successfully created.' }
        format.json { render json: @yearcreation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yearcreations/1
  # PATCH/PUT /yearcreations/1.json
  def update
    respond_to do |format|
      if @yearcreation.update(yearcreation_params)
        format.html { redirect_to yearcreations_url, notice: 'Yearcreation was successfully updated.' }
        format.json { render :show, status: :ok, location: @yearcreation }
      else
        format.html { render :edit }
        format.json { render json: @yearcreation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yearcreations/1
  # DELETE /yearcreations/1.json
  def destroy
    @yearcreation.destroy
    respond_to do |format|
      format.html { redirect_to yearcreations_url, notice: 'Yearcreation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yearcreation
      @yearcreation = Yearcreation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yearcreation_params
      params.require(:yearcreation).permit(:year)
    end
end
