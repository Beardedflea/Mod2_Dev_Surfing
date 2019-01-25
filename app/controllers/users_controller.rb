class UsersController < ApplicationController
    
    def show 
        @user = User.find(params[:id])
        @courses = Course.all
    end

    def new 
    end

    def create 
        @user =User.new(user_params(:first_name, :last_name, :email, :password, :password_confirmation))
        if @user.valid?
            @user.save
            session[:user_id] = @user.id
            redirect_to '/welcome'
        else
            render 'signup'
        end
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

    private
    
    def user_params(*args)
        params.require(:user).permit(args)
    end
end