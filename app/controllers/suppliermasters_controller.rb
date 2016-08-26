
class SuppliermastersController < ApplicationController
  before_action :set_suppliermaster, only: [:show, :edit, :update, :destroy]
  before_action :authenticate
  respond_to :html

  def authenticate
    if ((session[:companyname]||session[:username]||session[:year])=="")||((session[:companyname]||session[:username]||session[:year])==nil)
       redirect_to checklogin_url
    end
  end
  # GET /suppliermasters
  # GET /suppliermasters.json
  def index
    @suppliermasters = Suppliermaster.allwhere(session[:companyname],session[:username],session[:year])
    #ransack gem code
    @search = @suppliermasters.search(params[:q])
    @suppliermasters= params[:distinct].to_i.zero? ?
       @search.result :
       @search.result(distinct: true)
    respond_with  @suppliermasters
  end

  def supplierrecords
    @suppliermasters = Suppliermaster.allwhere(session[:companyname],session[:username],session[:year])
    #ransack gem code
    @search = @suppliermasters.search(params[:q])
    @suppliermasters= params[:distinct].to_i.zero? ?
       @search.result :
       @search.result(distinct: true)
    respond_with  @suppliermasters
  end


  # GET /suppliermasters/1
  # GET /suppliermasters/1.json
  def show
      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @suppliermaster }
        format.pdf do
          pdf = SuppliermasterPdf.new(@suppliermaster)
          send_data pdf.render,filename:"supplier#{@suppliermaster.id}.pdf",type:"application/pdf",disposition:"inline"
        end
      end
  end

  # GET /suppliermasters/new
  def new
    @suppliermaster = Suppliermaster.new
  end

  # GET /suppliermasters/1/edit
  def edit
      @suppliermasters = Suppliermaster.allwhere(session[:companyname],session[:username],session[:year])
  end

  # POST /suppliermasters
  # POST /suppliermasters.json
  def create
    @suppliermaster = Suppliermaster.new(suppliermaster_params)

    respond_to do |format|
      if @suppliermaster.save
        format.html { redirect_to suppliermasters_url, notice: 'Suppliermaster was successfully created.' }
        format.json { render :show, status: :created, location: @suppliermaster }
      else
        format.html { redirect_to suppliermasters_url, notice: 'Suppliermaster was Not successfully created.' }
        format.json { render json: @suppliermaster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suppliermasters/1
  # PATCH/PUT /suppliermasters/1.json
  def update
    respond_to do |format|
      if @suppliermaster.update(suppliermaster_params)
        format.html { redirect_to suppliermasters_url, notice: 'Suppliermaster was successfully updated.' }
        format.json { render :show, status: :ok, location: @suppliermaster }
      else
        format.html { render :edit }
        format.json { render json: @suppliermaster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suppliermasters/1
  # DELETE /suppliermasters/1.json
  def destroy
    @suppliermaster.destroy
    respond_to do |format|
      format.html { redirect_to suppliermasters_url, notice: 'Suppliermaster was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suppliermaster
      @suppliermaster = Suppliermaster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def suppliermaster_params
      params.require(:suppliermaster).permit(:suppliername, :supplieraddress, :supplierfax, :supplierphone, :supplieremail, :suppliertin, :suppliercst,:companyname,:username,:year)
    end
end
