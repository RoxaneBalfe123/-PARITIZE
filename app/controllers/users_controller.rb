class UsersController < ApplicationController
  def show
    @user = current_user
    @bookmark = @user.bookmarks
  end
end
