class ItemsController < ApplicationController
  before_action :require_user, only: [ :create, :index, :new ]



  def show
    @items = Item.find(params[:id])

  end

  def index
    @items = Item.all

  end

  def new
    @items = Item.new

  end


  def create
  
    @items = Item.new(items_params)
    
    if @items.save
      flash[:notice] = "Item was successfully created"
      redirect_to items_path

    else
      flash[:notice] = "There was an error"
      render 'new'
    end
  end


  def items_params
    params.require(:item).permit(:name, :description, :user_id)
  end

  def require_user
    @users= User.all
  end
end