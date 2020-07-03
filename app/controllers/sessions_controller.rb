class SessionsController < ApplicationController

    def create
        @user = User.find_by(username: params[:username])
        
        ##authenticate user credentials
        if !!@user && @user.authenticate(params[:password])
            message = "It worked!"
            redirect_to login_path, notice: message
        else
            message = "Something went wrong! Make sure your username and password are correct and try again."
            redirect_to login_path, notice: message
        end
    end
    
end