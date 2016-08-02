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
    @user = User.find_by(username: params[:user][:username])
    session[:user_id] = @user.id
    redirect to '/'
  end
end
