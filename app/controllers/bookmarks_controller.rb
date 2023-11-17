class BookmarksController < ApplicationController
  before_action :set_list, only: %i[new create]

  def new
    # @restaurant = Restaurant.find()
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = bookmark.new(bookmark_params)
    @bookmark.restaurant = @list
    @bookmark.save
    redirect_to list_path(@list)
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end
