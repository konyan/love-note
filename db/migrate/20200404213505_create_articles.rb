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

      t.timestamps
    end
  end
end
