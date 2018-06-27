class HomeController < ApplicationController
  def page

  @products = Product.all

  @attachment = Attachment.all

  end
end
