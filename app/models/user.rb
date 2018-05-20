class User < ApplicationRecord
  validates :email, :password, presence: true
  validates :name, length: { maximum: 50 }
end
