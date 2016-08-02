class ActivitiesController < ApplicationController

  # Create
  get '/activities/new' do
    @activities = Activity.all
    erb :'/activities/new'
  end

  post '/activities' do
    @activity = Activity.create(params)
    redirect to "/activities/#{@activity.slug}"
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
    erb :'/activities/edit'
  end

  patch '/activities/:slug' do
    @activity = Activity.find_by_slug(params[:slug])
    if params[:description] != ""
      @activity.update(params)
      redirect to "/activities/#{@activity.slug}"
    else
      redirect to "/activities/#{@activity.slug}/edit"
    end
  end

  # Delete
  delete '/activities/:slug' do
    @activity = Activity.find_by_slug(params[:slug])
    @activity.destroy
    redirect to "/activities"
  end
end
