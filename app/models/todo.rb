class Todo < ActiveRecord::Base
  belongs_to :user

  validates :user_id, presence: true, numericality: { only_integer: true }
  validates :title, presence: true
  validates_format_of :due, with: /\d{4}\-\d{2}\-\d{2}/, allow_blank: true
end
