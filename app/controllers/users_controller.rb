class UsersController < ApplicationController
    
    def show 
        @user = User.find(params[:id])
        @courses = Course.all
    end

    def new 
        @user = User.new 
    end

    def create 

    end

    def edit 
        @user = User.find(params[:id])
    end

    def update 
    end

    def destroy
        @user.destroy
        redirect_to courses_path
    end
end