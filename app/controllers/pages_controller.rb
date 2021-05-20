class PagesController < ApplicationController
  def home
    @tents = Tent.all
  end

  def dashboard

  end

end