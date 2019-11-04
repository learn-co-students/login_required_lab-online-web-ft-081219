class SessionsController < ApplicationController
    def new
        if current_user
            redirect_to controller:'secrets',action:'show'
        end
    end

    def create
        if params[:name].nil? || params[:name].empty?
            redirect_to action:'new'
        else
            session[:name] = params[:name]
            redirect_to controller:'secrets', action:'show'
        end
    end

    def destroy
        session.delete :name
        redirect_to action:'new'
    end
end