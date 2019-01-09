class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :account
      t.string :password
      t.string :name
      t.string :avatar
      t.string :title
      t.string :location
      t.string :country
      t.string :city
      t.text :about
      t.boolean :admin
      t.boolean :receive_newsletter
      t.text :email
      t.boolean :bad_user

      t.timestamps
    end
  end
end
