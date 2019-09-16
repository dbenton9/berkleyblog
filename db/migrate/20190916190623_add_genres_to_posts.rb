class AddGenresToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :genres, :string
  end
end
