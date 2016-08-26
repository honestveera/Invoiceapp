class ProductmastersController < ApplicationController

  before_action :set_productmaster,only:[:show, :edit, :update, :destroy]
  before_action :authenticate
  respond_to :html
  def authenticate
    if ((session[:companyname]||session[:username]||session[:year])=="")||((session[:companyname]||session[:username]||session[:year])==nil)
       redirect_to checklogin_url
    end
  end

  # GET /customermasters
  # GET /customermasters.json
  def index
    @productmasters=Productmaster.allwhere(session[:companyname],session[:username],session[:year])
    #ransack gem code
    @search = @productmasters.search(params[:q])
    @productmasters= params[:distinct].to_i.zero? ?
       @search.result :
       @search.result(distinct: true)
    respond_with  @productmasters
  end


  def productrecords
    @productmasters=Productmaster.allwhere(session[:companyname],session[:username],session[:year])
    #ransack gem code
    @search = @productmasters.search(params[:q])
    @productmasters= params[:distinct].to_i.zero? ?
       @search.result :
       @search.result(distinct: true)
    respond_with  @productmasters
  end

  def create
    @productmaster = Productmaster.new(productmaster_params)
    respond_to do |format|
      if @productmaster.save
        format.html { redirect_to productmasters_url, notice: 'Productmaster was successfully created.' }
        format.json { render :show, status: :created, location: @productmaster }
      else
        format.html { redirect_to productmasters_url, notice: 'Productmaster was Not successfully created.' }
        format.json { render json: @productmaster.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def edit
    @productmasters=Productmaster.allwhere(session[:companyname],session[:username],session[:year])
  end
  def update
    respond_to do |format|
      if @productmaster.update(productmaster_params)
        format.html { redirect_to productmasters_url, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @productmaster }
      else
        format.html { render :edit }
        format.json { render json: @productmaster.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @productmaster.destroy
    respond_to do |format|
      format.html { redirect_to productmasters_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

private
  def set_productmaster
    @productmaster = Productmaster.find(params[:id])
  end
  def productmaster_params
    params.require(:productmaster).permit(:productname, :productqty,:productamt,:companyname,:username,:year)
  end


end
