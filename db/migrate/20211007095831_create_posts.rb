class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.text :content
      t.string :title
      t.date :date
      t.integer :views
      t.timestamps
    end
  end
end
