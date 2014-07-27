class CentersController < ApplicationController

  def index
    @centers = Center.all
  end

  def show
    @center = Center.find_by(params[:id])
  end

  def search
  end

  def results
    @center = Center.search(params[:search])
    @center.each 
  end

end