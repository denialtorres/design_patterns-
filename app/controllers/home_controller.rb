class HomeController < ApplicationController
  def index
    # view_context to call the view helpers
    @users = User.all
    @user_decorators = @users.map { |user| UserDecorator.new(user, view_context) }
  end

  def terms; end

  def privacy; end
end
