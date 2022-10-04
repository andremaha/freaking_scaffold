class User < ApplicationRecord
  has_many :randomthoughts
  validates :name, presence: true
  validates :email, presence: true
end
