class TodosController < ApplicationController
  before_action :authenticate_user!
  respond_to :html, :js

  def index
    @user = current_user
    @todos = Todo.where(user: @user)

    respond_to do |format|
      format.html
      format.json
    end
  end

  def show
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(sleeplog_params)
    @todo.user = current_user
    if @todo.save
      flash[:notice] = "Todo added successfully"
    else
      flash.now[:errors] = @todo.errors.full_messages.join(". ")
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
    params.require(:todo).permit(:title, :due, :completed, :starred)
  end
end
