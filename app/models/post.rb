class Post < ApplicationRecord
  validates :name, presence: true
  validates :title, presence: true, length: {maximum: 10}
  validates :content, presence: true
end
