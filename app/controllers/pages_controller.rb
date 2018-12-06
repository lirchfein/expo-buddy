class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home about]

  def about
  end

  def home
  end
end
