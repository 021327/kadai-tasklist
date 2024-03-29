class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'Welcome to the application!'
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  def show
    @user = User.find(params[:id])
    @pagy, @task = pagy(@user.tasklist.order(id: :desc))
    counts(@user)
  end


  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end