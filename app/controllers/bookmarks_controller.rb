class BookmarksController < ApplicationController
  def create
    @company = Company.find(params[:company_id])
    @bookmark = Bookmark.new
    @bookmark.company_id = @company.id
    @bookmark.user_id = current_user.id
    @bookmark.save
  end
end
