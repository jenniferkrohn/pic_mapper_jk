class AddDetailsToBlogPosts < ActiveRecord::Migration
  def change
    add_column :blog_posts, :country, :string
  end
end
