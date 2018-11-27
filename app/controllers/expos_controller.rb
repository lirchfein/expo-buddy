class ExposController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @expos = Expo.all
  end
end
