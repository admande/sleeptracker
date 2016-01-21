class Diary < ActiveRecord::Base
  before_validation :sentiment_analysis

  belongs_to :user

  validates :user_id, presence: true
  validates :date, presence: true
  validates :body, presence: true

  private

  def sentiment_analysis
    text = body
    Indico.api_key = ENV["INDICO_API_KEY"]
    self.sentiment = Indico.sentiment(text)
  end
end
