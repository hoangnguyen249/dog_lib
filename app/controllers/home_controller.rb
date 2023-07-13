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
  def ownerInfo
    @owner = Owner.find_by(id: params[:id])
    render 'ownerInfo'
  end
  def search
    @query = params[:query]
    @size = params[:size]

    if @size.present? && @query.present?
      search_all
    elsif @size.present? && @query.blank?
      search_by_size
    else
      search_by_query
    end
  end

  private

  def search_all
    @breeds = Breed.where(size: @size).where("name LIKE ?", "%#{@query}%")
    render 'search'
  end
  def search_by_size
    @breeds = Breed.where(size: @size)
    render 'search'
  end

  def search_by_query
    @breeds = Breed.where("name LIKE ?", "%#{@query}%")
    render 'search'
  end
end
