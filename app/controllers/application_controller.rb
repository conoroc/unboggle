class ApplicationController < ActionController::Base
  before_filter :search_object
  protect_from_forgery
  include SessionsHelper

def search_object
  @search = Resource.search(params[:q])
end


  def signed_in_user
    unless signed_in?
      store_location
      redirect_to signin_url, notice: "Please sign in."
    end
  end


end
