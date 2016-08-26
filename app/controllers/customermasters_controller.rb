class CustomermastersController < ApplicationController
  before_action :set_customermaster, only: [:show, :edit, :update, :destroy]
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
    @customermasters = Customermaster.allwhere(session[:companyname],session[:username],session[:year])
    #ransack gem code
    @search = @customermasters.search(params[:q])
    @customermasters= params[:distinct].to_i.zero? ?
       @search.result :
       @search.result(distinct: true)
    respond_with  @customermasters
  end
  def customerrecords
    @customermasters = Customermaster.allwhere(session[:companyname],session[:username],session[:year])
    #ransack gem code
    @search = @customermasters.search(params[:q])
    @customermasters= params[:distinct].to_i.zero? ?
       @search.result :
       @search.result(distinct: true)
    respond_with  @customermasters
  end

  # GET /customermasters/1
  # GET /customermasters/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @customermaster }
      format.pdf do
        pdf = CustomermasterPdf.new(@customermaster)
        send_data pdf.render,filename:"customer#{@customermaster.id}.pdf",type:"application/pdf",disposition:"inline"
      end
    end
  end

  # GET /customermasters/new
  def new
    @customermaster = Customermaster.new
  end

  # GET /customermasters/1/edit
  def edit
      @customermasters = Customermaster.allwhere(session[:companyname],session[:username],session[:year])

  end

  # POST /customermasters
  # POST /customermasters.json
  def create
    @customermaster = Customermaster.new(customermaster_params)

    respond_to do |format|
      if @customermaster.save
        format.html { redirect_to customermasters_url, notice: 'Customermaster was successfully created.' }
        format.json { render :show, status: :created, location: @customermaster }
      else
        format.json { render json: @customermaster.errors, status: :unprocessable_entity }
        format.html { redirect_to customermasters_url, notice: 'Customermaster Not successfully created.' }

      end
    end
  end

  # PATCH/PUT /customermasters/1
  # PATCH/PUT /customermasters/1.json
  def update
    respond_to do |format|
      if @customermaster.update(customermaster_params)
        format.html { redirect_to customermasters_url, notice: 'Customermaster was successfully updated.' }
        format.json { render :show, status: :ok, location: @customermaster }
      else
        format.html { render :edit }
        format.json { render json: @customermaster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customermasters/1
  # DELETE /customermasters/1.json
  def destroy
    @customermaster.destroy
    respond_to do |format|
      format.html { redirect_to customermasters_url, notice: 'Customermaster was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customermaster
      @customermaster = Customermaster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customermaster_params
      params.require(:customermaster).permit(:customername, :customeraddress, :customerfax, :customerphone, :customeremail, :customertin, :customercst,:companyname,:username,:year)
    end

end
