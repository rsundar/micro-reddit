class Post < ApplicationRecord

    validates :body, length: { maximum: 255 }, presence: true
    VALID_URL_REGEX = /\A((http:\/{2})|(https:\/{2}))([a-zA-Z\d]{3}\.)(([a-zA-Z\d\-]+\.)+|(\.[a-zA-Z\d\-]+\.))(com|org|edu|gov|in|au|us)(\/[\w\d\-\?\=\+\&\.]+)*(\.[a-zA-Z]+)*\z/ix
    validates :post, length: { maximum: 255 }, presence: true, format: { with: VALID_URL_REGEX }
end
