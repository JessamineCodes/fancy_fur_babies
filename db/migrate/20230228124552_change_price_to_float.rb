class ChangePriceToFloat < ActiveRecord::Migration[7.0]
  def change
    change_column :costumes, :price, :float
  end
end
