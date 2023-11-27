class RobotsController < ApplicationController
  def index
    @robots = Robot.all
  end

  def show
    @robot = Robot.find(params[:id])
    @booking = Booking.find_by(robot: @robot)
  end

  def new
    @robot = Robot.new
  end

  def create
    @robot = Robot.new(robot_params)
    @user = current_user
    @robot.user_id = @user.id
    if @robot.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def robot_params
    params.require(:robot).permit(:model, :overview, :price)
  end
end
