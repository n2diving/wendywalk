class MapsController < ApplicationController

  def home
  end

  def results
    @centers = Center.all
    @centers.each do |center|
      @lat = (center.lat).to_f
      @longit = (center.longit).to_f
    end
  end

end
