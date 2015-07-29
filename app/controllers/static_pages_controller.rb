class StaticPagesController < ApplicationController
  before_action :logged_in_user, only: :home
  
  def home
    @activities = current_user.activities.paginate page: params[:page],
      per_page: 20
  end

  def help
    @users = User.all_admin
  end
end
