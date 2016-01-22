class Sleeplog < ActiveRecord::Base
  belongs_to :user

  validates :user_id, presence: true, numericality: { only_integer: true }
  validates :date, presence: true, uniqueness: true
  validates :hours, presence: true
end
