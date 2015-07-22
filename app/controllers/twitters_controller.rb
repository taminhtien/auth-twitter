class TwittersController < ApplicationController
  before_action :find_twitter, only: [:show, :edit, :update, :destroy]

  def index
    @twitters = Twitter.all
  end

  def show
  end

  def new
    @twitter = Twitter.new
  end

  def edit
  end

  def create
    @twitter = Twitter.new(twitter_params)
    if @twitter.save
      redirect_to @twitter, notice: "Successfully create new twitter"
    else
      render 'new'
    end
  end

  def update
    if @twitter.update(twitter_params)
      redirect_to @twitter, noctice: "Successfully update this twitter"
    else
      render 'edit'
    end
  end

  def destroy
    @twitter.destroy
    redirect_to root_path, notice: "Successfully delete this twitter"
  end

  private

    def find_twitter
      @twitter = Twitter.find(params[:id])
    end

    def twitter_params
      params.require(:twitter).permit(:title, :body)
    end
end
