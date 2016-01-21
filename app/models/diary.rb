class Diary < ActiveRecord::Base
  belongs_to :user

  validates :user_id, presence: true
  validates :date, presence: true
  validates :body, presence: true
end
