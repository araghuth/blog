class Article < ApplicationRecord
    validates :title, presence: true
    validates :text, presence: true, length: { minimum: 10 }
    has_many :comments
end
