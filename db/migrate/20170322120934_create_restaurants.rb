class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name, null: :false
      t.string :cuisine, null: :false
      t.string :address, null: :false
      t.string :city, null: :false
      t.string :state, null: :false
      t.string :zip_code, null: :false
      t.references :user, null: :false

      t.timestamps null: :false
    end
  end
end
