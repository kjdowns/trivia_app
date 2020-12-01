class SessionsController < ApplicationController

    def create
        @user = User.find_by(username: params[:username])
        
        ##authenticate user credentials
        if !!@user && @user.authenticate(params[:password])
            #set session and redirect on success
            session[:user_id] = @user.id
            #change this when user index is working
            redirect_to root_path
        else
            #error message on fail
            message = "Something went wrong! Make sure your username and password are correct and try again."
            redirect_to login_path, notice: message
        end
    end
    
end