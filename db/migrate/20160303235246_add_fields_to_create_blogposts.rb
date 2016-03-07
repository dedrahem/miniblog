class AddFieldsToCreateBlogposts < ActiveRecord::Migration
  def change
    change_table :blogposts do |t|
      t.string :title
      t.string :author
      t.string :body
    end
  end
end
