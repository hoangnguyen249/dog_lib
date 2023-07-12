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
  class BreedsController < ApplicationController
    # Other actions...

  def info
    Breed.find_by(id: params[:id])
    render 'info'
  end
  end

end
