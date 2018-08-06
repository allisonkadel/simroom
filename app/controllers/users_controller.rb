class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = user.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path
        else
            render :new
        end
    end

end
