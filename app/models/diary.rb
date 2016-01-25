class Diary < ActiveRecord::Base
  before_validation :sentiment_analysis
  validate :date_cannot_be_in_future

  belongs_to :user

  validates :user_id, presence: true
  validates :date, presence: true
  validates :body, presence: true

  private

  def date_cannot_be_in_future
    if date.present? && date > Date.today
      errors.add(:date, "can't be in the future")
    end
  end

  def sentiment_analysis
    text = body
    Indico.api_key = ENV["INDICO_API_KEY"]
    self.sentiment = Indico.sentiment(text)
  end
end
