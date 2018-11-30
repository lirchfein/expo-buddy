class PicturesController < ApplicationController
  def create
    @exhibitor = Exhibitor.find(params[:exhibitor_id])
    @expo = @exhibitor.expo
    @picture = Picture.new(params_picture)
    @picture.save
    respond_to do |format|
      format.html { redirect_to expo_exhibitor_path(@expo, @exhibitor) }
      format.js # <-- will render `app/views/pictures/create.js.erb`
    end
  end

  def params_picture
    params.require(:picture).permit(:pic, :user_id, :exhibitor_id)
  end
end
