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
  end

  def update
  end

  def destroy

  end

  private

  def comment_params
    params.require(:comment).permit([:content])
  end

end
