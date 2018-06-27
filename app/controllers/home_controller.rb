class HomeController < ApplicationController
  def page

  @products = Product.all

  @users = User.all

  end
end
