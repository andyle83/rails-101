class Article < ApplicationRecord
  has_many :comments

  validates :title, present: true
  validates :body, present: true, length: { minimum: 10 }
end
