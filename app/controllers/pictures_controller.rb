class PicturesController < ApplicationController
  # def test_pic_upload
  #   @pictures = Picture.all
  #   @picture = Picture.new
  #   @exhibitor = Exhibitor.first
  # end

  def create
    @exhibitor = Exhibitor.find(params[:exhibitor_id])
    @expo = @exhibitor.expo
    @picture = Picture.new(params_picture)
    @picture.save
    respond_to do |format|
      format.html { redirect_to expo_exhibitor_path(@expo, @exhibitor) }
      format.js # <-- will render `app/views/expos/bookmark.js.erb`
    end
  end

  def params_picture
    params.require(:picture).permit(:pic, :user_id, :exhibitor_id)
  end
end
