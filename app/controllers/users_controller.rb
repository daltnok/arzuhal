class UsersController < ApplicationController

  def index
    @users=User.all
  end


  def new


  end

    def edit
      @user = User.find(params[:id])
    end

  def show
    @user=User.find(params[:id])
    @tweets=@user.tweets


  end
  def update
    @user = User.find(params[:id])

    if @user.update(User_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  
  def destroy

  end

  def create
    @user = User.new(user_params)

    @user.save
    redirect_to @user
  end

  private
  def user_params
    params.require(:user).permit(:isim, :soyisim, :email, :biyografi)
  end
end
