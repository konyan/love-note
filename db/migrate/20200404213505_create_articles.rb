class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.string :image_id
      t.integer :user_id
      t.integer :category_id
      t.integer :font_id
      t.boolean :is_private
      t.integer :vote_count,  default: 0

      t.timestamps
    end

    add_foreign_key :articles, :fonts, column: :font_id
    add_foreign_key :articles, :categories, column: :category_id

    add_index :articles, :user_id

  end
end
