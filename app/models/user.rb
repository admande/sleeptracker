class User < ActiveRecord::Base
  has_many :sleeplogs
  has_many :todos
  has_many :user_reminders
  has_many :reminders, through: :user_reminders
  has_many :diaries
  before_save :convert_phone


  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone, presence: true, uniqueness: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  private

  def convert_phone
    self.phone = self.phone.gsub(/\D/, '')
  end
end
