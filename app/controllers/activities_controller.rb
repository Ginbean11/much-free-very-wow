class ActivitiesController < ApplicationController

  # Create
  get '/activities/new' do
    @user = User.find(session[:user_id])
    @activities = Activity.all
    erb :'/activities/new'
  end

  post '/activities' do
    if blank_params?("activity")
      flash[:new_error] = "One or more fields were left empty. Please fill in all fields."
      redirect to '/activities/new'
    else
      flash[:new_success] = "Your activity has been added to the activity list."
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
    if !logged_in?
      flash[:not_logged_in_edit] = "You need to login to edit activities"
      redirect to "/login"
    elsif @activity.user_id == current_user.id
      flash[:edit_success] = "Thanks for updating the activity"
      erb :'/activities/edit'
    else
      flash[:edit_error] = "You are only able to edit your own posts"
      redirect to "/activities/#{@activity.slug}"
    end
  end

  patch '/activities/:slug' do
    @activity = Activity.find_by_slug(params[:slug])
    if blank_params?("activity")
      flash[:update_error] = "One or more fields were left empty. Please fill in all fields."
      redirect to "/activities/#{@activity.slug}/edit"
    else
      @activity.update(params[:activity])
      flash[:update_success] = "This activity has been updated!"
      redirect to "/activities/#{@activity.slug}"
    end
  end

  # Delete
  delete '/activities/:slug' do
    @activity = Activity.find_by_slug(params[:slug])
    if !logged_in?
      flash[:not_logged_in_delete] = "You need to login to delete activities"
      redirect to "/login"
    elsif @activity.user_id == current_user.id
      flash[:delete_success] = "This activity has been deleted"
      @activity.destroy
      redirect to "/activities"
    else
      flash[:delete_error] = "You are only able to delete your own posts"
      redirect to "/activities/#{@activity.slug}"
    end
  end
end
