class SessionsController < ApplicationController
    skip_before_action :redirect_user
    def login
    end
    def verify
        @user = User.find_by(email: params[:auth][:email])
        if @user && @user.authenticate(params[:auth][:password])
            session[:user_id] = @user.id
            redirect_to '/welcome/index'
        else 
            flash[:message] = "Incorrect credentials please try again"
            render :login
        end
    end
    def logout
        session.clear
        redirect_to login_path
    end
    def current_user
        @user = User.find(session[:user_id])
    end
end
