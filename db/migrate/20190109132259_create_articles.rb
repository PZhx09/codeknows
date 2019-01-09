class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.integer :article_id
      t.string :title
      t.string :slug
      t.string :body
      t.integer :user_id
      t.float :score
      t.datetime :featured_at
      t.string :tags
      t.integer :likes_count
      t.integer :views_count
      t.integer :bad_count
      t.text :type
      t.datetime :published_at
      t.boolean :spam_detected

      t.timestamps
    end
  end
end
