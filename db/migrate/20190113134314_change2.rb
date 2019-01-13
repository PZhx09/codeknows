class Change2 < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :avatar, :string
    add_column :users, :location, :string
    add_column :users, :country, :string
    add_column :users, :city, :string
    add_column :users, :about, :text
    add_column :users, :receive_newsletter, :boolean
    add_column :users, :bad_user, :boolean
  end
end
