class ItemsController < ApplicationController

  def show
    @item = Item.find(params[:id])

  end

  def index
  end

  def new
    @item = Item.new

  end

  def edit
  end

  def update
  end

  def create
    @item = Item.new(items_params)
    if @item.save
      flash[:notice] = "Item was successfully created"
      redirect_to @item
    else
      render 'new'
    end
  end


  def items_params
    params.require(:item).permit(:name, :description)
  end
end