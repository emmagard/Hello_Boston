class UsersController < ApplicationController

  def posts_manager
    @posts = Post.where(user_id: current_user)
  end

  def comments_manager
    @comments = Comment.where(user_id: current_user)
  end

end
