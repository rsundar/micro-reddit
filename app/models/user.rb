class User < ApplicationRecord
    has_many :post
    has_many :comment
    before_save { self.email = email.downcase }
    validates :name, presence: true
    VALID_EMAIL = /\A[\w\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL }
end
