class BookmarksController < ApplicationController

  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(review_params)
    # we need `list_id` to associate review with corresponding restaurant
    @list = list.find(params[:list_id])
    @bookmark.list = @list
    @bookmark.save
    redirect_to list_path(@list)
  end

  def destroy
    @bookmark = bookmark.find(params[:id])
    @bookmark.destroy

    redirect_to list_path(@bookmark.list)

end

private

def review_params
  params.require(:bookmark).permit(:comment)
end
