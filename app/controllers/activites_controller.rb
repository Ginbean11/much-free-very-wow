class ActivitesController < ApplicationController

  # Create
  get '/activities/new' do
    erb :'/activities/new'
  end

  post '/activities' do
    @activity = Activity.create(params)
    redirect to "/activities/#{@activity.id}"
  end

  # Read

  # Update

  # Delete

end
