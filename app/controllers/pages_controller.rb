class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @user_bookings = current_user.bookings
    @user_robots = current_user.robots
  end
end
