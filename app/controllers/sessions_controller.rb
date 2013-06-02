class SessionsController < ApplicationController


  def new
    @search = Resource.search(params[:q])
    respond_to do |wants|
      wants.html
      wants.js
    end
  end

  def create
    @search = Resource.search(params[:q])
    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user

      respond_to do |wants|
        wants.html { redirect_to current_user, notice: 'Logged in successfully' }
        wants.js
      end
    else


      respond_to do |wants|
        wants.html { redirect_to root_url, notice: 'Invalid email/password combination' }
        wants.js # defaults to create.js.erb
      end
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end