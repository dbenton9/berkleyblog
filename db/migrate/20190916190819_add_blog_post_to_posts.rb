class AddBlogPostToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :blog_post, :text, :limit => 16777215
  end
end
