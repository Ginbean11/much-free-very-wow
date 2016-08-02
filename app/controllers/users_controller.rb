class UsersController < ApplicationController

  get '/signup' do
    erb :'/users/signup'
  end

  post '/signup' do
    @user = User.create(params[:user])
    session[:user_id] = @user.id
    redirect to '/'
  end

  get '/login' do
    erb :'/users/login'
  end

  post '/login' do
    @user = User.find(username: params[:username])
    session[:user_id] = @user.id
    redirect to '/'
  end

  helpers do
    def logged_in?
      !!session[:user_id]
    end

    def current_user
      User.find(session[:user_id])
    end
  end
end
