class CartsController < ApplicationController

  def show
  end

  def index
  end

  def new
  end

  def create
    @item = Item.find(params[:item_id])
    @cart = Cart.find(session[:cart_id])

    @cart.items << @item
  end

  def edit
  end

  def update
    
  end

  def destroy
  end
end
