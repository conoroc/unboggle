class WelcomeController < ApplicationController

  def home
    @search = Resource.search(params[:q])
    @resources = @search.result
  end
end
