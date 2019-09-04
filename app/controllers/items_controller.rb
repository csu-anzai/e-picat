class ItemsController < ApplicationController
  include CartsHelper
  before_action :current_cart, only: [:show]

  def show
    @item = Item.find(params[:id])
  end

  def index
    @items = Item.all
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
