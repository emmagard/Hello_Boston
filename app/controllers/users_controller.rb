class UsersController < ApplicationController

  def posts_manager
    @user = current_user
    @posts = Post.where(user_id: @user)
  end

end
