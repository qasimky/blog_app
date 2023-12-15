class User < ApplicationRecord
  validates :username, presence: true,uniqueness: { case_sensitive: false },length: { minimum: 3, maximum: 25 }
  validates :email, presence: true, uniqueness: { case_sensitive: false } length: {minimum: 8, maximum:30}
end
