class User < ActiveRecord::Base
  attr_accessible :account, :email, :name, :profile_name, :resource_count, :subscribe, :password, :password_confirmation

  has_secure_password

  before_save { |user| user.email = email.downcase }

  has_many :resources

  validates :name, presence: true, length: {maximum: 50}
  VALIDEMAILREGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VALIDEMAILREGEX}, uniqueness: {case_sensitive: false}
  validates :profile_name, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
end
