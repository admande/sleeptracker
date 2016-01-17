class SleeplogsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @sleeplogs = Sleeplog.all.where(user: @user)
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
