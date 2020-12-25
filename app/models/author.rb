# frozen_string_literal: true

class Author < ApplicationRecord
  enum gender: %i[male female other]
end
