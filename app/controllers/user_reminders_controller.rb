class UserRemindersController < ApplicationController
  before_action :authenticate_user!
  respond_to :html, :js

  def new
    @reminder = Reminder.find(params[:reminder_id])
    @user_reminder = UserReminder.new
    flash[:alert] = nil
  end

  def create
    @reminder = Reminder.find(params[:reminder_id])
    @user_reminder = UserReminder.new(user_reminder_params)
    @user_reminder.user = current_user
    respond_to do |format|
      if @user_reminder.save
        format.html { redirect_to reminders_path, notice: "Reminder added successfully" }
        format.js { flash[:alert] = nil }
      else
        format.html { }
        format.js { flash.now[:alert] = @user_reminder.errors.full_messages.join(". ") }
      end
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
  end

  private

  def user_reminder_params
    params.require(:user_reminder).permit(:time, :weekend_disable, :reminder_id)
  end
end
