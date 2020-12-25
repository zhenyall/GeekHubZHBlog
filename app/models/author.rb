# frozen_string_literal: true

class Author < ApplicationRecord
  has_many :posts
  has_many :comments

  enum gender: %i[male female other]
end
