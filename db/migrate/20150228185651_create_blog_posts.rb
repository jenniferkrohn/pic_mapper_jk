class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.string :author
      t.text :blog_entry
      t.integer :user_id
      t.date :entry_date
      t.string :address

      t.timestamps null: false
    end
  end
end
