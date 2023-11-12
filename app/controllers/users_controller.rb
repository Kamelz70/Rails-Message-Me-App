class UsersController < ApplicationController

    def new
        @user=User.new
    end

    def create
        @user=User.new(get_user_params)
        if @user.save
            session[:user_id]=@user.id
            flash.now[:success]="Signed up!"
            redirect_to root_path
        else
            flash.now[:error] = 'User was not created!' # or :alert
            render "new"
        end
    end
    
    private
    def get_user_params
      params.require(:user).permit(:username, :password,:email)
    end
end