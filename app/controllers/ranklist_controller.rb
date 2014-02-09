class RanklistController < ApplicationController
def index
        @foo = 1
	@result = Face.find(:all,  :order=> 'elo_rating desc')
	    end
end
