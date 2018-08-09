class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create
        binding.pry
        if oauth_nickname = request.env["omniauth.auth"]["info"]["nickname"]
            @user = User.find_or_create_by_omniauth(auth_nickname)
            session[:user_id] = @user.id
            redirect_to user_path

            # if @user = User.find_by(:email => oauth_nickname)
            #     session[:user_id] = @user.id

            #     redirect_to user_path(@user)
            # else
            #     @user = User.new(:email => oauth_nickname, :password => SecureRandom.hex)
            #     if @user.save
            #         session[:user_id] = @user.id

            #         redirect_to user_path(@user)
            #     else
            #         raise @user.errors.inspect
            #     end
            # end
        else
            #normal login
            @user = User.find_by(:email => params[:user][:email])
            if @user && @user.authenticate(params[:user][:password])
                session[:user_id] = @user.id
                redirect_to user_path(@user)
            else
                redirect_to new_session_path
            end
        end
    end

    def destroy
        session.clear
        redirect_to root_path
    end

end