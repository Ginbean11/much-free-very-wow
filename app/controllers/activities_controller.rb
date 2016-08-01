class ActivitiesController < ApplicationController

  # Create
  get '/activities/new' do
    erb :'/activities/new'
  end

  post '/activities' do
    @activity = Activity.create(params)
    redirect to "/activities/#{@activity.id}"
  end

  # Read
  get '/activities' do
    @activities = Activity.all
    erb :'/activities/index'  # home page may list all activities too
  end

  get '/activities/:id' do
    @activity = Activity.find(params[:id])
    erb :'/activities/show'
  end

  # Update

  # Delete

end
