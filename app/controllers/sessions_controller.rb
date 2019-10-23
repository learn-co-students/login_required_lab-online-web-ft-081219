class SessionsController < ApplicationController 
    def create 
      
    
        if login_param[:name].empty? 
            redirect_to "/login"
        else
            session[:name] = login_param[:name]
        end
    
    end

    def new 
    end

    def destroy 
     session[:name] ? session.clear : nil
    end
    
    private 
    def login_param 
        params.permit(:name)
    end
end