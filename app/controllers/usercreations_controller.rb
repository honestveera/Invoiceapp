class UsercreationsController < ApplicationController
  before_action :set_usercreation, only: [:show, :edit, :update, :destroy]

  # GET /usercreations
  # GET /usercreations.json
  def index
    @usercreations = Usercreation.all
  end

  # GET /usercreations/1
  # GET /usercreations/1.json
  def show
  end

  # GET /usercreations/new
  def new
    @usercreation = Usercreation.new
  end

  # GET /usercreations/1/edit
  def edit
    @usercreations = Usercreation.all
  end

  # POST /usercreations
  # POST /usercreations.json
  def create
    @usercreation = Usercreation.new(usercreation_params)

    respond_to do |format|
      if @usercreation.save
        format.html { redirect_to usercreations_url, notice: 'Usercreation was successfully created.' }
        format.json { render :show, status: :created, location: @usercreation }
      else
         format.html { redirect_to usercreations_url, notice: 'Usercreation was Not successfully created.' }
        format.json { render json: @usercreation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usercreations/1
  # PATCH/PUT /usercreations/1.json
  def update
    respond_to do |format|
      if @usercreation.update(usercreation_params)
        format.html { redirect_to usercreations_url, notice: 'Usercreation was successfully updated.' }
        format.json { render :show, status: :ok, location: @usercreation }
      else
        format.html { render :edit }
        format.json { render json: @usercreation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usercreations/1
  # DELETE /usercreations/1.json
  def destroy
    @usercreation.destroy
    respond_to do |format|
      format.html { redirect_to usercreations_url, notice: 'Usercreation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usercreation
      @usercreation = Usercreation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usercreation_params
      params.require(:usercreation).permit(:usertype)
    end
end
