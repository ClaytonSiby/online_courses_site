class HomeController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @categories = Category.includes(:courses).all
  end
end
