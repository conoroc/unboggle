class User < ActiveRecord::Base
  attr_accessible :email, :name, :profile_name, :resource_count, :subscribe, :password, :password_confirmation

  has_secure_password

  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token

  has_many :resources
  has_many :comments, :through => :resources

  validates :name, presence: true, length: {maximum: 50}
  VALIDEMAILREGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VALIDEMAILREGEX}, uniqueness: {case_sensitive: false}
  validates :profile_name, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true



  private

  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
end
