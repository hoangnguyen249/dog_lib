class HomeController < ApplicationController
  def index
  end

  def library
  end
  def about
  end

  def owner
  end
  def breed
  end
  def info
    @breed = Breed.find_by(id: params[:id])
    render 'info'
  end

end
