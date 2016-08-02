class UsersController < ApplicationController

  get '/signup' do
    if logged_in?
      direct to '/'
    else
      erb :'/users/signup'
    end
  end

  post '/signup' do
    @user = User.create(params[:user])
    session[:user_id] = @user.id
    redirect to '/'
  end

  get '/login' do
    if logged_in?
      redirect to '/'
    else
      erb :'/users/login'
    end
  end

  post '/login' do
    @user = User.find_by(username: params[:user][:username])
    session[:user_id] = @user.id
    redirect to '/'
  end
end
