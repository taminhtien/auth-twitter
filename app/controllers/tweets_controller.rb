class TweetsController < ApplicationController
  before_action :find_tweet, only: [:show, :edit, :update, :destroy]

  def index
    @tweets = Tweet.all
  end

  def show
  end

  def new
    @tweet = Tweet.new
  end

  def edit
  end

  def create
    @tweet = current_user.tweets.build(tweet_params)
    if @tweet.save
      redirect_to @tweet, notice: "Successfully create new tweet"
    else
      render 'new'
    end
  end

  def update
    if @tweet.update(tweet_params)
      redirect_to @tweet, noctice: "Successfully update this tweet"
    else
      render 'edit'
    end
  end

  def destroy
    @tweet.destroy
    redirect_to root_path, notice: "Successfully delete this tweet"
  end

  private

    def find_tweet
      @tweet = Tweet.find(params[:id])
    end

    def tweet_params
      params.require(:tweet).permit(:title, :body, :user_id)
    end
end
