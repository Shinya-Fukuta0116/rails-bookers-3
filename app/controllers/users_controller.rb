class UsersController < ApplicationController
    def new
    @users = User.all
    end
    
    def top
    @user = User.new
    end
    def index
    @book = Book.new
    @book = Book.new
    @user = current_user
    end
    
    def show
      # recieve the(@user.id) here
    @user = User.find(params[:id])
    @book = Book.new
    end
    
    def edit
           # model
    @user = User.find(params[:id])
    end
    
    def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
    end    
    
    def destroy
    end

    private

    def user_params
      params.require(:user).permit(:name, :image, :introduction)
    end
end

