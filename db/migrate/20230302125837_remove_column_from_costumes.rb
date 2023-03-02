class RemoveColumnFromCostumes < ActiveRecord::Migration[7.0]
  def change
    remove_column :costumes, :img
  end
end
