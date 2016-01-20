class UserRemindersController < ApplicationController
  before_action :authenticate_user!
  respond_to :html, :js

  def new
    @reminder = Reminder.find(params[:reminder_id])
    @user_reminder = UserReminder.new
  end

  def create
    @reminder = Reminder.find(params[:reminder_id])
    @user_reminder = UserReminder.new(user_reminder_params)
    @user_reminder.user = current_user
    if @user_reminder.save
    else
      flash.now[:errors] = @user_reminder.errors.full_messages.join(". ")
      render :new
    end
  end

  def edit
    @reminder = Reminder.find(params[:reminder_id])
    @user_reminder = UserReminder.find_by(reminder: @reminder, user: current_user)
  end

  def update
    @user_reminder = UserReminder.find(params[:id])
    @reminder = @user_reminder.reminder
    if @user_reminder.update_attributes(user_reminder_params)
    else
      render :edit
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

  def user_reminder_params
    params.require(:user_reminder).permit(:time, :weekend_disable, :reminder_id)
  end
end
