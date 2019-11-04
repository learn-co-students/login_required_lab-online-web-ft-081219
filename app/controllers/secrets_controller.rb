class SecretsController < ApplicationController
    before_action :require_login

    def show
        @name = session[:name]
    end

    private

    def require_login
        if current_user.nil?
            redirect_to controller:'sessions', action:'new'
        end
    end
end