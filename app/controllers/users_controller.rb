class UsersController < ApplicationController
  
  def show
    @users= User.find(params[:id])
  end

  def index
    @users= User.all
  end

  def new
    @users= User.new
  end

  def create
    @users= User.new(user_params)
    if @users.save
      flash[:notice] = "Item was successfully created"
      redirect_to root_path
    else
      flash[:notice] = "There was an error"
      render 'new'
    end
  end


  def user_params
    params.require(:user).permit(:name)
  end
end