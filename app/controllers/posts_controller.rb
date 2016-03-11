class PostsController < ApplicationController

def index
  @posts = Post.all

end

def show
  @post = Post.find_by id: params[:id]
end

def new
  @post = Post.new
end

def create
  #init a blank new Post
  @post=Post.new
  #set the values
  @post.title = params[:post][:title]
  @post.author_id = params[:post][:author_id]
  @post.body = params[:post][:body]
  # SAVE  !
  if @post.save
    # redirect to "/posts"
    redirect_to posts_path
  else
    render:new
  end
end

def edit
  @post = Post.find_by id: params[:id]
end

def update
  # instantiant / Find
  @post = Post.find_by id: params[:id]
  # set values
  @post.title = params[:post][:title]
  @post.body = params[:post][:body]
  @post.author_id = params[:post][:author_id]
  # save it
  if @post.save
    # redirect to "/posts"
    redirect_to post_path(id: @post.id)
  else
    render :edit
  end
end

def delete
  @post = Post.find_by id: params[:id]
  @post.destroy
  redirect_to posts_path
  end
end # end class


  # def form_newpost
  # end
  #
  # def display_entry
  # end
  #
  # def form_editentry
  # end
  # end
