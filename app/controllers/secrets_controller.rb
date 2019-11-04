class SecretsController < ApplicationController
  def new
  end

  def show
    if !current_user
        redirect_to '/login'
    else
        session[:name]
    end
  end
  
end
