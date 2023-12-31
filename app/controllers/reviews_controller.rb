class ReviewsController < ApplicationController
  before_action :define_booking, only: [ :new, :create ]

  def new
    @review = Review.new
    @robot = @booking.robot
  end

  def create
    @review = Review.new(review_params)
    @review.booking_id = @booking.id
    @robot = @booking.robot
    if @review.save
      redirect_to robot_path(@robot)
    else
      render :new
    end
  end

  private

  def define_booking
    @booking = Booking.find(params[:booking_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
