class TentsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @tents = Tent.all
  end

  def show
    @tent = Tent.find(params[:id])
    @booking = Booking.new
    @tents = Tent.all
  end

  def new
    @tent = Tent.new
  end

  def create
    @tent = Tent.new(tent_params)
    if @tent.save
        redirect_to tent_path(@tent)
    else
        render :new
    end
  end


  private

  def tent_params
    params.require(:tent).permit(:name, :number_of_couch, :season, :weight, :photo)
  end
end
