class SessionsController < ApplicationController
    before_action :logged_in_redirect,only:[:new,:create]
    def new
    end

    def create
        entered_params=get_user_params
        user=User.find_by(username:entered_params[:username])
        if user && user.authenticate(entered_params[:password])
            session[:user_id]=user.id
            flash.now[:success]="logged in"
            redirect_to root_path
        else
            flash.now[:error]="Incorrect password"
            render 'new'
        end
    end

    def destroy
        session[:user_id]=nil
        flash[:success]="Logged Out"
        redirect_to login_path
    end

    def signup
    end
    
    private
    def get_user_params
        params.require("session").permit(:password,:username)
    end

    def logged_in_redirect
        if logged_in?
            flash[:error]="Already logged in"
            redirect_to root_path
        end
    end
end
