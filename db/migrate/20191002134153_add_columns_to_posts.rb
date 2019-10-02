class AddColumnsToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :likes, :integer
    add_column :posts, :published, :timestamp
  end
end
