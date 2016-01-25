class SleeplogsController < ApplicationController
  before_action :authenticate_user!
  respond_to :js
  respond_to :html

  def index
    @user = current_user
    @sleeplogs = Sleeplog.where(user: @user).order(date: :asc)

    respond_to do |format|
      format.html
      format.json do
        dates = @sleeplogs.map{ |sleeplog| sleeplog.date }
        hours = @sleeplogs.map{ |sleeplog| sleeplog.hours }
        render json: [dates, hours]
      end
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
