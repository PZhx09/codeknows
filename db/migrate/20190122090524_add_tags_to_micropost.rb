class AddTagsToMicropost < ActiveRecord::Migration[5.1]
  def change
    add_column :microposts, :tags, :string
  end
end
