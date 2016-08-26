class AuthorizedusersController < ApplicationController
  before_action :set_authorizeduser, only: [:show,:edit, :update, :destroy]
  # GET /authorizedusers
  # GET /authorizedusers.json
  def index
    @authorizedusers = Authorizeduser.all
  end


  # GET /authorizedusers/1
  # GET /authorizedusers/1.json
  def show
  end

  # GET /authorizedusers/new
  def new
    @authorizeduser = Authorizeduser.new
  end

  # GET /authorizedusers/1/edit
  def edit
      @authorizedusers= Authorizeduser.all

  end

  # POST /authorizedusers
  # POST /authorizedusers.json
  def create
    @authorizeduser = Authorizeduser.new(authorizeduser_params)

    respond_to do |format|
      if @authorizeduser.save
        format.html { redirect_to authorizedusers_url, notice: 'Authorizeduser was successfully created.' }
        format.json { render :show, status: :created, location: @authorizeduser }
      else
        format.html { render :new }
        format.json { render json: @authorizeduser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authorizedusers/1
  # PATCH/PUT /authorizedusers/1.json
  def update
    respond_to do |format|
      if @authorizeduser.update(authorizeduser_params)
        format.html { redirect_to authorizedusers_url, notice: 'Authorizeduser was successfully updated.' }
        format.json { render :show, status: :ok, location: @authorizeduser }
      else
        format.html { render :edit }
        format.json { render json: @authorizeduser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authorizedusers/1
  # DELETE /authorizedusers/1.json
  def destroy
    @authorizeduser.destroy
    respond_to do |format|
      format.html { redirect_to authorizedusers_url, notice: 'Authorizeduser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authorizeduser
      @authorizeduser = Authorizeduser.find(params[:id])
    end
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def authorizeduser_params
      params.require(:authorizeduser).permit(:companyname,:usertype,:username,:year)
    end

end
