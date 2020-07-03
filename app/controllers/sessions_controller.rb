class SessionsController < ApplicationController

    def create
        @user = User.find_by(username: params[:username])
        
        ##authenticate user credentials
        if !!@user && @user.authenticate(params[:password])
            
        else
        end
    end
    
end