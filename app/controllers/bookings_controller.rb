class BookingsController < ApplicationController
  before_action :find_chef, only: %i[new create]
  before_action :find_booking, only: %i[edit update show destroy]

  def index
    @bookings = Booking.all
  end

  def show
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

  def edit
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to booking_path(@booking.id)
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:starting_date, :finishing_date, :chef_id)
  end

  def find_chef
    @chef = Chef.find(params[:chef_id])
  end
end
