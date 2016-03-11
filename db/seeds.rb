if Author.count == 0
  john = Author.create first_name: "John", last_name: "Winter"
  frangie = Author.create first_name: "Frangie", last_name: "Pangie"
  bill = Author.create first_name: "Bill", last_name: "Clinton"
end

if Post.count == 0
  Post.create title: "Title Field", body: "Body Field body field", author_id: john.id
  Post.create title: "Another Title Field", body: "this is a body field", author_id: john.id
  Post.create title: "this is a title", body: "body field body field", author_id: frangie.id
  Post.create title: "this is a title", body: "body field body field", author_id: bill.id
  Post.create title: "this another title", body: "body field body field", author_id: john.id
end


if Author.all.blank?
  Author.create first_name: "John", last_name: "Dastardly"
  Author.create first_name: "Georgeie", last_name: "Porgie"
  Author.create first_name: "Randolph", last_name: "scot"
end

if Book.all.blank?
  Book.create title: "Harry Potter and the Sorcerer's Stone", author_id: 1
  Book.create title: "Harry Potter and the Chamber of Secrets", author_id: 1
  Book.create title: "Game of Thrones", author_id: 2
end
