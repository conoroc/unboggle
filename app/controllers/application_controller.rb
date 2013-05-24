class ApplicationController < ActionController::Base
  before_filter :search_object
  protect_from_forgery
  include SessionsHelper

def search_object
  @search = Resource.search(params[:q])
end





end
