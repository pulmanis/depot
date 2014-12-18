class StoreController < ApplicationController
  skip_before_action :authorize
  
  def index
    @products=Product.all
    @cart=current_cart
    @counter = session[:counter]
    @counter.nil? ? @counter = 1 : @counter+=1
    session[:counter] = @counter
  end
end
