if Author.all.blank?
  Author.create first_name: "John", last_name: "Winter"
  Author.create first_name: "Frangie", last_name: "Pangie"
end

if Post.all.blank?
  Post.create title: "Stone County", author_id: 1
  Post.create title: "Missippi Blues", author_id: 1
  Post.create title: "Big Flowers", author_id: 2
end
