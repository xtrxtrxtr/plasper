# frozen_string_literal: true

# Create table for Trigram model
class CreateTrigrams < ActiveRecord::Migration[7.1]
  def change
    create_table :trigrams, comment: 'Trigrams' do |t|
      t.uuid :user_uuid, comment: 'Owner'
      t.string :body, limit: 3, null: false, comment: 'Chunk'
      t.integer :weight, null: false, default: 1, comment: 'Number of occurrences'
      t.timestamps
    end

    add_index :trigrams, %i[user_uuid body], unique: true
    add_index :trigrams, %i[user_uuid weight]
  end
end
