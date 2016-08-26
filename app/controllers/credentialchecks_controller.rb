class CredentialchecksController < ApplicationController
  layout false
  
  def credential
    @check=Authorizeduser.allwhere(params[:authorizeduser][:companyname],params[:authorizeduser][:username],params[:authorizeduser][:year]).count
    respond_to do |format|
      if @check>=1
        session[:companyname]=params[:authorizeduser][:companyname]
        session[:username]=params[:authorizeduser][:username]
        session[:year]=params[:authorizeduser][:year]
        format.html { redirect_to customermasters_url, notice: 'Login Successful.' }
      else
        format.html { redirect_to checklogin_url, notice: 'LoginFailed'  }
        flash[:error] = "Invalid Username,companyname,year"
      end
    end
  end

    def login
       render 'credential'
    end
end
