class CompanycreationsController < ApplicationController
  before_action :set_companycreation, only: [:show, :edit, :update, :destroy]

  # GET /companycreations
  # GET /companycreations.json
  def index
    @companycreations = Companycreation.all
  end

  def search
    @companycreations= Companycreation.search(params[:companyname])
  end


  # GET /companycreations/1
  # GET /companycreations/1.json
  def show
  end

  # GET /companycreations/new
  def new
    @companycreation = Companycreation.new
  end

  # GET /companycreations/1/edit
  def edit
      @companycreations = Companycreation.all
  end

  # POST /companycreations
  # POST /companycreations.json
  def create
    @companycreation = Companycreation.new(companycreation_params)
    respond_to do |format|
      if @companycreation.save
        format.html { redirect_to companycreations_url, notice: 'Companycreation was successfully created.' }
        format.json { render :show, status: :created, location: @companycreation }
      else
        format.html { redirect_to companycreations_url, notice: 'Companycreation was Not successfully created.'}
        format.json { render json: @companycreation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companycreations/1
  # PATCH/PUT /companycreations/1.json
  def update
    respond_to do |format|
      if @companycreation.update(companycreation_params)
        format.html { redirect_to companycreations_url, notice: 'Companycreation was successfully updated.' }
        format.json { render :show, status: :ok, location: @companycreation }
      else
        format.html { render :edit }
        format.json { render json: @companycreation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companycreations/1
  # DELETE /companycreations/1.json
  def destroy
    @companycreation.destroy
    respond_to do |format|
      format.html { redirect_to companycreations_url, notice: 'Companycreation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_companycreation
      @companycreation = Companycreation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def companycreation_params
      params.require(:companycreation).permit(:companyname)
    end
end
