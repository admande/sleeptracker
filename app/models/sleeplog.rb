class Sleeplog < ActiveRecord::Base
  belongs_to :user
  validate :date_cannot_be_in_future

  validates :user_id, presence: true, numericality: { only_integer: true }
  validates :date, presence: true
  validates :date, uniqueness: { scope: :user_id }
  validates :hours, presence: true, numericality: { greater_than: 0, less_than: 16 }

  private

  def date_cannot_be_in_future
    if date.present? && date > Date.today
      errors.add(:date, "can't be in the future")
    end
  end
end
