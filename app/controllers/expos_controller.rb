class ExposController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @expos = Expo.all
  end

  def bookmark
    @expo = Expo.find(params[:id])
    @bookmark = current_user.bookmarks.find_by(expo_id: @expo.id)

    if @bookmark
      @bookmark.destroy
    else
      Bookmark.create(expo_id: @expo.id, user_id: current_user.id)
    end
    respond_to do |format|
      format.html { redirect_to expos_path }
      format.js # <-- will render `app/views/expos/bookmark.js.erb`
    end
  end
end
