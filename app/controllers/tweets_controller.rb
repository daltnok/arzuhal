class TweetsController < ApplicationController
def index
@tweets=Tweet.all
end


  def new


  end
  def edit

  end
  def show
    @tweet=Tweet.find(params[:id])


  end
  def update

  end
  def destroy

  end

def create
  @user=User.find(params[:user_id])
  @tweet=@user.tweets.create(tweet_params)
 redirect_to @user
end

private
def tweet_params
  params.require(:tweet).permit(:tarih, :tweet)
end
end