class DiariesController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @diaries = Diary.where(user: @user).order(date: :desc)
  end

  def show
    @diary = Diary.find(params[:id])
  end

  def new
    @diary = Diary.new
  end

  def create
    @diary = Diary.new(diary_params)
    @diary.user = current_user
    if @diary.save
      flash[:notice] = "Diary added successfully"
      redirect_to @diary
    else
      flash.now[:errors] = @diary.errors.full_messages.join(". ")
      render :new
    end
  end

  def edit
  end

  def update
    @diary = Diary.find(params[:id])
    respond_to do |format|
      if @diary.update_attributes(diary_params)
        format.html { redirect_to(@diary, notice: 'User was successfully updated.') }
        format.json { respond_with_bip(@diary) }
      else
        format.html { render action: "edit" }
        format.json { respond_with_bip(@diary) }
      end
    end
  end

  def destroy
  end

  private

  def diary_params
    params.require(:diary).permit(:date, :sentiment, :body)
  end
end
