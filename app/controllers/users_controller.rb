class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @upcoming_events = @user.attended_events.upcoming
    @past_events = @user.attended_events.past
  end
end
