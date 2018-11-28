class ExhibitorsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    @exhibitors = Exhibitor.all
    @expo = Expo.find(params[:expo_id])
  end

  def show
    @exhibitor = Exhibitor.find(params[:id])
    @expo = Expo.find(params[:expo_id])
  end
end
