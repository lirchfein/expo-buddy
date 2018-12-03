class ExhibitorsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    @expo = Expo.find(params[:expo_id])
    if params[:query].present?
      @exhibitors = @expo.exhibitors.order_by_name.search_by_name_and_description(params[:query]).page(params[:page])
    else
      @exhibitors = @expo.exhibitors.order_by_name.page(params[:page])
    end
    respond_to do |format|
      format.html # index.html.erb
      format.js # <-- will render `app/views/exhibitors/index.js.erb`
    end
  end

  def show
    @exhibitor = Exhibitor.find(params[:id])
    @expo = Expo.find(params[:expo_id])
    @picture = Picture.new
    @pictures = user_pictures.reverse!
    @note = Note.new
    @favorite = current_user.favorites.find_by(exhibitor_id: @exhibitor.id) if !current_user.nil?
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "show",
        :layout => 'pdf' # Excluding ".pdf" extension.
      end
    end
  end

  def favorite
    @exhibitor = Exhibitor.find(params[:id])
    @favorite = current_user.favorites.find_by(exhibitor_id: @exhibitor.id)

    if @favorite
      @favorite.destroy
    else
      Favorite.create(exhibitor_id: params[:id], user_id: current_user.id)
    end
    respond_to do |format|
      format.html { redirect_to expo_exhibitors_path(@exhibitor.expo) }
      format.js # <-- will render `app/views/exhibitors/favorite.js.erb`
    end
  end

  def update
    @exhibitor = Exhibitor.find(params[:id])
    @favorite = current_user.favorites.find_by(exhibitor_id: @exhibitor.id)
    if @favorite.visited == true
      @favorite.visited = false
    else
      @favorite.visited = true
    end
    if @favorite.save
      respond_to do |format|
        format.html { redirect_to expo_exhibitors_path(@exhibitor.expo) }
        format.js # <-- will render `app/views/exhibitors/update.js.erb`
      end
    else
      render 'index'
    end
  end

  def favorites_tab
    respond_to do |format|
      format.html { redirect_to expo_exhibitors_path(@exhibitor.expo) }
      format.js # <-- will render `app/views/exhibitors/favorites_tab.js.erb`
    end
  end

  # def create_pdf
  #   @exhibitor = Exhibitor.find(params[:id])
  #   # respond_to do |format|
  #   #   format.html
  #   #   format.pdf do
  #       render pdf: "create_pdf" # Excluding ".pdf" extension.
  #     # end
  #   # end
  # end

  private

  def user_pictures
    all_pictures = Picture.all
    user = current_user.id if current_user != nil
    pictures_array = []

    all_pictures.each do |picture|
      if picture.user_id == user && picture.exhibitor_id == @exhibitor.id
        pictures_array << picture
      end
    end
    pictures_array.sort_by {:id}
    return pictures_array
  end
end
