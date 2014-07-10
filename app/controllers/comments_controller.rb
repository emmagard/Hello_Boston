class CommentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    #pushes the new comment into posts.comments
    @comment = @post.comments.new(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to post_comments_path(@post)
    else
      flash[:notice] = "Your Comment Did not Save"
      render :new
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to users_comments_manager_path(current_user)
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      redirect_to users_comments_manager_path(current_user)
      flash[:success] = "Your bookmark has been deleted!"
    end
  end

  private

  def comment_params
    params.require(:comment).permit([:content])
  end

end
