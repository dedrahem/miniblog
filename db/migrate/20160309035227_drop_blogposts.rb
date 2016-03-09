class DropBlogposts < ActiveRecord::Migration
  def change
        drop_table :blogposts
  end
end
