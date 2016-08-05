class ActivitiesController < ApplicationController

  # Create
  get '/activities/new' do
    @user = User.find(session[:user_id])
    @activities = Activity.all
    erb :'/activities/new'
  end

  post '/activities' do
    if blank_params?("activity")
      redirect to '/activities/new'
    else
      @activity = Activity.create(params[:activity])
      redirect to "/activities/#{@activity.slug}"
    end
  end

  # Read
  get '/activities' do
    @activities = Activity.all
    erb :'/activities/index'
  end

  get '/activities/:slug' do
    @activity = Activity.find_by_slug(params[:slug])
    erb :'/activities/show'
  end

  # Update
  get '/activities/:slug/edit' do
    @activity = Activity.find_by_slug(params[:slug])
    if @activity.user_id == current_user.id
      erb :'/activities/edit'
    else
      erb :'/activities/show'
    end
  end

  patch '/activities/:slug' do
    @activity = Activity.find_by_slug(params[:slug])
    if blank_params?("activity")
      redirect to "/activities/#{@activity.slug}/edit"
    else
      @activity.update(params[:activity])
      redirect to "/activities/#{@activity.slug}"
    end
  end

  # Delete
  delete '/activities/:slug' do
    @activity = Activity.find_by_slug(params[:slug])
    @activity.destroy
    redirect to "/activities"
  end
end
