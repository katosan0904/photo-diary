class AddTitleTopost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :title, :text, null:false
  end
end
