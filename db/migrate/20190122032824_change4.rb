class Change4 < ActiveRecord::Migration[5.0]
  def change
    remove_column :likes,:likable_id,:integer
    add_column :likes,:contentid,:integer
  end
end
