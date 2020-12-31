# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :author, optional: true
  has_many :comments, dependent: :destroy

  validates :name, presence: true
  validates :title, presence: true, length: { maximum: 10 }
  validates :content, presence: true

end
