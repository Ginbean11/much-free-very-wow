class ActivitiesController < ApplicationController

  # Create
  get '/activities/new' do
    @activities = Activity.all
    erb :'/activities/new'
  end

  post '/activities' do
    @activity = Activity.create(params)
    redirect to "/activities/#{@activity.id}"
  end

  # Read
  get '/activities' do
    @activities = Activity.all
    erb :'/activities/index'
  end

  get '/activities/:id' do
    @activity = Activity.find(params[:id])
    erb :'/activities/show'
  end

  # Update
  get '/activities/:id/edit' do
    @activity = Activity.find(params[:id])
    erb :'/activities/edit'
  end

  patch '/activities/:id' do
    @activity = Activity.find(params[:id])
    if params[:description] != ""
      @activity.update(params)
      redirect "/activities/#{@activity.id}"
    else
      redirect to "/activities/#{@activity.id}/edit"
    end
  end

  # Delete

end
