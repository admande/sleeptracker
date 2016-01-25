class DiariesController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    if params[:diary_body_search]
      @diaries = Diary.search_by_diary_body(params[:diary_body_search]).order(:date)
    else
      @diaries = Diary.where(user: @user).order(date: :desc)
    end
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
  end

  def destroy
  end

  private

  def diary_params
    params.require(:diary).permit(:date, :body)
  end
end
