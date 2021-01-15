class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user.id)
    else
      render :new
    end
  end
  def show
    @user = User.find(params[:id])
  end
  def edit
    @user = User.find(current_user.id)
  end
  def update
    @user = User.find(current_user.id)
    if @user.update(user_params)
      redirect_to @user, notice: 'Feed was successfully updated.'
      #format.json { render :show, status: :ok, location: @user }
    else
      render :edit
      #format.html { render :edit }
      #format.json { render json: @user.errors, status: :unprocessable_entity }
    end
  end
end

private
def user_params
  params.require(:user).permit(:name, :email, :password, :password_confirmation, :image, :image_cache)
end