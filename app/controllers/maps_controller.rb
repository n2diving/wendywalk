class MapsController < ApplicationController

  def index
  end

  def home
  end

  def results
    @center = Center.search(params[:search])
    @centers = Center.all
    @centers.each do |center|
      @lat = (center.lat).to_f
      @longit = (center.longit).to_f
    end
  end

end
