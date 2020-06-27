class UsersController < ActionController::Base

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to root_path
        else
            render :new
        end
    end

    def edit
        
    end

    def update
        
    end

    def destroy
        
    end
    
    private

    def user_params
        params.require(:user).permit(:username, :password)
    end

end