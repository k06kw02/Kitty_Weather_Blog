class AddBlurbToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :blurb, :text
  end
end
