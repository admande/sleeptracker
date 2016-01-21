class Todo < ActiveRecord::Base
  belongs_to :user
  before_validation

  validates :user_id, presence: true, numericality: { only_integer: true }
  validates :title, presence: true
end
