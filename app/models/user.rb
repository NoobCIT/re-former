class User < ApplicationRecord
  validates(:username, presence: true, length: { maximum: 20 })
  VALID_EMAIL_REGEX = /\A(?!.*?\.\.)[\w+\-.]+@[a-z\d\-.]+\.(?!.*\.)[a-z]+\z/i
  validates(:email, presence: true,
            length: { maximum: 40 },
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false })
  validates(:password, presence: true, length: { minimum: 6 })
end
