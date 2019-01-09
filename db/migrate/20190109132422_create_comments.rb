class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :article_id
      t.integer :user_id
      t.integer :likes_count
      t.integer :bad_content

      t.timestamps
    end
  end
end
