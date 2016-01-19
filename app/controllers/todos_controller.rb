class TodosController < ApplicationController
  before_action :authenticate_user!
  respond_to :html, :js

  def index
    @user = current_user
    @todos = Todo.where(user: @user).order(created_at: :desc)

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
    @todo = Todo.new(todo_params)
    @todo.user = current_user
    if @todo.save
    else
      flash.now[:errors] = @todo.errors.full_messages.join(". ")
      render :new
    end
  end

  def edit
  end

  def update
    @todo = Todo.find(params[:id])
    respond_to do |format|
      if @todo.update_attributes(todo_params)
        format.html { redirect_to(@todo, notice: 'User was successfully updated.') }
        format.json { respond_with_bip(@todo) }
      else
        format.html { render action: "edit" }
        format.json { respond_with_bip(@todo) }
      end
    end
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy

    respond_to do |format|
      format.html { redirect_to ponies_url }
      format.json { head :no_content }
      format.js   { render :layout => false }
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:title, :due, :completed, :starred)
  end
end
