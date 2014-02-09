

class ApplicationController < ActionController::Base
protect_from_forgery

private
require "koala"

require "fb_graph"

def current_user
@current_user ||= User.find(session[:user_id]) if session[:user_id]
end
helper_method :current_user
end


def friends 
	  @friends = Koala::Facebook::GraphAPI.new(@token).get_connections("me", "friends")
end 
