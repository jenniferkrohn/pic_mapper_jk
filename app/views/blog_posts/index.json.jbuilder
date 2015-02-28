json.array!(@blog_posts) do |blog_post|
  json.extract! blog_post, :id, :title, :author, :blog_entry, :user_id, :entry_date, :address
  json.url blog_post_url(blog_post, format: :json)
end
