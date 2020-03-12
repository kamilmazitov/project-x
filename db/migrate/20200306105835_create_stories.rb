class CreateStories < ActiveRecord::Migration[5.1]
  def change
    create_table :stories do |t|
      t.string :title
      t.text :content
      t.boolean :published

      t.timestamps


    end
  end
end
