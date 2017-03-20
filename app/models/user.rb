class User < ApplicationRecord
  has_many :posts


  before_save { self.email = email.downcase }
  validates :first_name, :last_name, presence: true
  validates :username, presence: true, uniqueness: true, length: { in: 4..15 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: {case_sensitive: false}, format: { with: VALID_EMAIL_REGEX }
  has_secure_password
  validates :password, presence: true, length: { in: 6...20 }, allow_nil: true

end
