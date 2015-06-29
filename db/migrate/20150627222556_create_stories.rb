class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.string :image
      t.string :string
      t.integer :zhihu_id
      t.boolean :multipic
      t.integer :type

      t.timestamps null: false
    end
  end
end
