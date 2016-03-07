class AddColumnsToPost < ActiveRecord::Migration
  def change
    create_table "posts", force: :cascade do |t|
      t.string "title"
      t.string "author"
      t.string "body"
    end
  end
end
