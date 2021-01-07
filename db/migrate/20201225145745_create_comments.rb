# frozen_string_literal: true

class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :status
      t.integer :author_id
      t.integer :post_id
      t.integer :user_id
      t.belongs_to :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
