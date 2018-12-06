class ExhibitorsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    @expo = Expo.find(params[:expo_id])
    if current_user
      @current_favorites = Favorite.get_expo(current_user, @expo)
      @visited_favorites = Favorite.visited_exhibitors(current_user, @current_favorites)
    else
      @current_favorites = []
    end
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
    @notes = user_notes.reverse!
    @favorite = current_user.favorites.find_by(exhibitor_id: @exhibitor.id) if !current_user.nil?

    # email sending
    # respond_to do |format|
    #   format.html
    #   format.pdf do
    #     render pdf: "show",
    #     :layout => 'pdf' # Excluding ".pdf" extension.
    #   end
    # end
  end

  def send_data
    @user = current_user
    @exhibitor = Exhibitor.find(params[:id])
    @expo = @exhibitor.expo
    @notes = user_notes.reverse!
    # @pictures = user_pictures.reverse!
    # pdf = render_to_string('show.pdf.erb', layout: 'pdf', template: 'exhibitors/show')
    UserMailer.export(@user.id, @exhibitor.id, @notes).deliver
    redirect_to expo_exhibitor_path(@expo, @exhibitor)
    #flash[:notice] = 'Email has been sent!'
  end

  def favorite
    @exhibitor = Exhibitor.find(params[:id])
    @favorite = current_user.favorites.find_by(exhibitor_id: @exhibitor.id)

    if @favorite
      @favorite.destroy
      @flash_message = false
    else
      Favorite.create(exhibitor_id: params[:id], user_id: current_user.id)
      @flash_message = "#{@exhibitor.name} has been added to your Favorites!"
    end
    respond_to do |format|
      format.html { redirect_to expo_exhibitors_path(@exhibitor.expo) }
      format.js # <-- will render `app/views/exhibitors/favorite.js.erb`
    end
  end

  def update
    @exhibitor = Exhibitor.find(params[:id])
    @expo = @exhibitor.expo
    @favorite = current_user.favorites.find_by(exhibitor_id: @exhibitor.id)
    if @favorite.visited == true
      @favorite.visited = false
      @flash_message = false
    else
      @favorite.visited = true
      @flash_message = "Marked #{@exhibitor.name} as visited!"
    end
    if @favorite.save
    @current_favorites = Favorite.get_expo(current_user, @expo)
    @visited_favorites = Favorite.visited_exhibitors(current_user, @current_favorites)
      respond_to do |format|
        format.html { redirect_to expo_exhibitors_path(@exhibitor.expo) }
        format.js # <-- will render `app/views/exhibitors/update.js.erb`
      end
    else
      render 'index'
    end
  end

  def favorites_tab
    @expo = Expo.find(params[:expo])
    @current_favorites = Favorite.get_expo(current_user, @expo)
    @current_favorites = Favorite.get_expo(current_user, @expo)
    @visited_favorites = Favorite.visited_exhibitors(current_user, @current_favorites)
    respond_to do |format|
      format.html { redirect_to expo_exhibitors_path(@expo) }
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

  def user_notes
    all_notes = Note.all
    user = current_user.id if current_user != nil
    notes_array = []

    all_notes.each do |note|
      if note.user_id == user && note.exhibitor_id == @exhibitor.id
        notes_array << note
      end
    end
    notes_array.sort_by {:id}
    return notes_array
  end
end
