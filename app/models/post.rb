class Post < ApplicationRecord

    validates :body, length: { maximum: 255 }, presence: true
    VALID_URL_REGEX = /\A((http|https):\/{2})([a-zA-Z\d]{3})(\.[a-zA-Z\d\-]+)+\.(com|org|edu|gov)\z/
    validates :post, length: { maximum: 255 }, presence: true, format: { with: VALID_URL_REGEX }
end
