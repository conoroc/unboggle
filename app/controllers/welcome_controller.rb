class WelcomeController < ApplicationController

  def home
    @search = Resource.search(params[:q])
    @resources = @search.result
    @feed = Resource.all(:order => 'created_at DESC', :limit => 5)
  end
end
