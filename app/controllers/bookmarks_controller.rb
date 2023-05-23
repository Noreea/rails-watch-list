class BookmarksController < ApplicationController

  def new
    @bookmark = Bookmark.new
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to @bookmark.list, notice: 'bookmark delete.'
  end


  def create
    @bookmark = Bookmark.new(bookmark_params)
    respond_to do |format|
      if @bookmark.save
        format.html { redirect_to @bookmark.list, notice: 'newly created bookmark.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:film_id, :movie_id)
  end
end
