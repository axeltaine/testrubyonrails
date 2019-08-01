class UsersController < ApplicationController
    def home
      if session[:user_id]
        @current_user = User.find(session[:user_id])
      end
    end
  
    def login
    end

    def logout
        session[:user_id] = nil
        flash[:success] = "Vous êtes maintenant déconnecté."
        redirect_to "/books/home"
    end
  
    def check
      @current_user = User.where(name: params[:name], password: params[:password]).first
      if @current_user
        session[:user_id] = @current_user.id
        flash[:success] = "Vous êtes maintenant connecté"
        redirect_to "/books/index"
      else
        session[:user_id] = nil
        flash[:success] = "Échec de la connexion"
        redirect_to "/books/home"
      end
    end
  end