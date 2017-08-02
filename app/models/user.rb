class User < ApplicationRecord
  validates :email, uniqueness: true
  has_many :questions
  has_many :answers
end
