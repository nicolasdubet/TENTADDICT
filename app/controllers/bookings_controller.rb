class BookingsController < ApplicationController
  before_action :set_booking, only: [:show]
  before_action :set_tent, only: [:new, :create]

    def index
      @bookings = current_user.bookings
    end

    def show
      @tent = booking.tent
    end

    def new
      @booking = Booking.new
    end

    def create
      @booking = Booking.new(booking_params)
      @booking.user = current_user
      @booking.tent = @tent
      if @booking.save
        redirect_to bookings_path
      else
        render :new
      end
    end

    private

    def set_booking
        @booking = Booking.find(params[:id])
    end

    def booking_params
        params.require(:booking).permit(:start_date_book, :end_date_book)
    end

    def set_tent
        @tent = Tent.find(params[:tent_id])
    end
end
