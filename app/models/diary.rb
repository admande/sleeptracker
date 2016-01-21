class Diary < ActiveRecord::Base
  before_validation :sentiment_analysis

  belongs_to :user

  validates :user_id, presence: true
  validates :date, presence: true
  validates :body, presence: true

  private

  def sentiment_analysis
    self.sentiment = Indico.sentiment(self.body, ENV["INDICO_API_KEY"])
  end
end
