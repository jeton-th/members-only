class PostsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    #     @post = current_user.posts.build(post_params)
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      flash[:info] = "Post created successfully!"
      redirect_to root_url
    else
      render 'new'
    end    
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

end
