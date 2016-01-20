class UserReminder < ActiveRecord::Base
  belongs_to :user
  belongs_to :reminder

  validates :user_id, presence: true, uniqueness: { scope: :reminder_id }
  validates :reminder_id, presence: true
  validates :time, presence: true
end
