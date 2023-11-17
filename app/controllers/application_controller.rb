class ApplicationController < ActionController::Base
  include SessionsHelper
  include Pagy::Backend #追記
  
  private

 def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end

  def counts(user)
    @count_tasklist = user.tasklist.count
  end
