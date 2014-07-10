class CommentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @post = Post.find_by(params[:post_id])
    @comments = @post.comments
  end
end
