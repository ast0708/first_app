class StaticPagesController < ApplicationController
	#the behavior of this class will be different than 
	# normal ruby class as it inherits from application controller
  def home
    @micropost = current_user.microposts.build if signed_in?
    @feed_items = current_user.feed.paginate(page: params[:page])
  end

  def help
  end

  def about
  end

  def contact
  end
end
