class CreateCostumes < ActiveRecord::Migration[7.0]
  def change
    create_table :costumes do |t|
      t.string :product_name
      t.string :img
      t.text :details
      t.decimal :price
      t.string :pet_type
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
