class ItemsController < ApplicationController
  before_action :require_user, only: [ :create, :index ]



  def show
    @item = Item.find(params[:id])

  end

  def index
    @item = Item.all

  end

  def new
    @item = Item.new

  end


  def create
  
    @item = Item.new(items_params)
    
    if @item.save
      flash[:notice] = "Item was successfully created"
      redirect_to items_path

    else
      flash[:notice] = "There was an error"
      render 'new'
    end
  end


  def items_params
    params.require(:item).permit(:name, :description)
  end

  def require_user
    @user = User.all
  end
end