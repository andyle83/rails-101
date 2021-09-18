class Article < ApplicationRecord
  has_many :comments

  validate :title, present: true
  validate :body, present: true, length: { minimum: 10 }
end
