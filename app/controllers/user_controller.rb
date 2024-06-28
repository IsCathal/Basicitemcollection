class UserController < ApplicationController



  def show
    @user = User.find(params[:id])

  end

  def index
    @user = User.all

  end

  def new
    @user = User.new

  end


  def create
  
    @user = User.new(user_params)
    
    if @user.save
      flash[:notice] = "Item was successfully created"
      redirect_to user_path

    else
      flash[:notice] = "There was an error"
      render 'new'
    end
  end


  def user_params
    params.require(:user).permit(:name)
  end
end