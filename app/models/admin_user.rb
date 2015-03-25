class AdminUser < ActiveRecord::Base
  validates_presence_of :name
  validates :password, presence: true, length: {minimum: 6}
  has_secure_password
end