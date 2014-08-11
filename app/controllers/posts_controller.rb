class PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = Post.includes(:user).order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user

    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to users_posts_manager_path(current_user)
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
       redirect_to users_posts_manager_path(current_user)
       flash[:notice] = 'Your post has been deleted!'
    end
  end

  private

  def post_params
    params.require(:post).permit([:title, :content])
  end

end
