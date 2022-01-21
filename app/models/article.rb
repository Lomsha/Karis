class Article < ApplicationRecord
    belongs_to :user
has_many :article_categories
has_many :categories, through: :article_categories

validates :title, presence: true, length: {minimum: 6, maximum: 100}
validates :description, presence: true, length: {minimum:2, maximum: 5000}
end 