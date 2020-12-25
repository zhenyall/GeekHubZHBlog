class Comment < ApplicationRecord
  belongs_to :post, required: true, counter_cache: true
  belongs_to :author, required: true

  enum status: %i[unpablished published]
end
