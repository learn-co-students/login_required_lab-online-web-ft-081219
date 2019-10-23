class SecretsController < ApplicationController 
before_action :logged_in?
    def show 
    end

    private 
    def logged_in? 
        redirect_to "/login" unless  session[:name]
    end
end