class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :review_text
      t.references :reviewer, null: :false
      t.references :restaurant, null: :false

      t.timestamps null: :false
    end
  end
end
