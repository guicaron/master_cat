class BookingsController < ApplicationController
  before_action :find_chef, only: %i[new create]

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.chef = Chef.find(params[:chef_id])
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starting_date, :finishing_date, :chef_id)
  end

  def find_chef
    @chef = Chef.find(params[:chef_id])
  end
end
