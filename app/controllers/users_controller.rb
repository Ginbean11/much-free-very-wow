class UsersController < ApplicationController

  get '/signup' do
    if logged_in?
      direct to '/'
    else
      erb :'/users/signup'
    end
  end

  post '/signup' do
    if blank_params?
      redirect to '/signup'
    else
      @user = User.create(params[:user])
      session[:user_id] = @user.id
      redirect to '/'
    end
  end

  get '/login' do
    if logged_in?
      redirect to '/'
    else
      erb :'/users/login'
    end
  end

  post '/login' do
    @user = User.find_by_username(params[:user][:username])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect to '/'
    else
      redirect to '/login'
    end
  end

  get '/logout' do
    session.clear
    redirect to '/'
  end
end
