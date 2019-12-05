class UsersController < ApplicationController
    def show
        find_user
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            redirect_to @user
        else
            render :new
        end
    end

    def edit
        find_user
    end

    def update
        find_user
        if @user.update(user_params)
            redirect_to @user
        else
            render :edit
        end
    end

    def destroy
        @user = find_user
        @user.destroy
        redirect_to '/welcome/index'
    end

    private

    def user_params
        params.require(:user).permit(:name, :age, :bio)
    end

    def find_user
        @user = User.find(params[:id])
    end
    
end
