class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @bookmark = Bookmark.new
    @movie = Movie.new
  end

  def new
    @list = List.new
  end

  def create
    @list = list.new(list_params)
    @list.save
    redirect_to list_path(@list)
  end

  private

  def review_params
    params.require(:list).permit(:name)
  end
end
