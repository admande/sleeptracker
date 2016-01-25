class SleeplogsController < ApplicationController
  before_action :authenticate_user!
  respond_to :js
  respond_to :html

  def index
    @user = current_user
    @sleeplogs = Sleeplog.where(user: @user).order(date: :desc)

    respond_to do |format|
      format.js
      format.html
    end
  end

  def show
  end

  def new
    @sleeplog = Sleeplog.new
  end

  def create
    @sleeplog = Sleeplog.new(sleeplog_params)
    @sleeplog.user = current_user
    if @sleeplog.save
      binding.pry
      flash[:notice] = "Sleeplog added successfully"
    else
      flash.now[:errors] = @sleeplog.errors.full_messages.join(". ")
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def sleeplog_params
    params.require(:sleeplog).permit(:date, :hours, :quality, :notes, :in_bed_time, :fall_asleep_time, :wake_up_time, :sleeping_pill)
  end
end
