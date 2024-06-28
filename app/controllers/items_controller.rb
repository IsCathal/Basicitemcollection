class ItemsController < ApplicationController

  def show
    @item = Item.all

  end

  def index
    @item = Item.all

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
      flash[:notice] = "There was an error"
      render 'new'
    end
  end


  def items_params
    params.require(:item).permit(:name, :description)
  end
end