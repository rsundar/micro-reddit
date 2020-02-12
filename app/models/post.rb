class Post < ApplicationRecord

    validates :body, length: { maximum: 255 }, presence: true
    VALID_URL_REGEX = /\A((http|https):\/{2})([a-zA-Z\d]{3})(\.[a-zA-Z\d\-]+)+\.(com|org|edu)\z/
    validates :post, length: { maximum: 255 }, presence: true
end
