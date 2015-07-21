class TwittersController < ApplicationController
  before_action :find_twitter, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

    def find_twitter
      @twitter = Twitter.find(params[:id])
    end
end
