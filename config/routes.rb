Rails.application.routes.draw do

  root 'welcome#index'
  get "posts/new" => 'posts#new',as: :new_post
  get "posts" => 'posts#index',as: :posts
  get "by_author" => 'by_author#listof_authors',as: :by_author
  post "posts" => 'posts#create'
  get "posts" => 'posts#index'
  get "posts/:id" => 'posts#show',as: :post
  delete "posts/:id" => 'posts#delete'
  patch "posts/:id" => 'posts#update'
  get "posts/:id/edit" => 'posts#edit',as: :edit_post
  delete "by_author/:id" => 'by_author#delete'
  patch "by_author/:id" => 'by_author#update'

end
