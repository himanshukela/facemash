class MashController < ApplicationController
def index 
	@faces = Face.find(:all).sample(2)
	@face_1 = @faces[0]
	@face_2 = @faces[1]
end

def update 
@face_1 = Face.find(params[:face1])

@face_2 = Face.find(params[:face2])

@selection = params[:selection]


if (@selection == @face_1.id)
	            update_elo_rating(@face_1,@face_2)
	        else
		            update_elo_rating(@face_2,@face_1)
	        end

redirect_to(:action=>"index")


end 



def update_elo_rating(winner, looser)

	rank_diff = winner.elo_rating - looser.elo_rating

	exp = (-1 * rank_diff) / 400

odds = 1/(1+ 10 ** exp)

	k = 32

	if winner.elo_rating < 2100

	k = 32

	elsif winner.elo_rating >= 2100

	k = 24

	else

	k = 16

	end   



winner.elo_rating = winner.elo_rating + (k*(1-odds))

looser.elo_rating = looser.elo_rating - (k*(1-odds))



	winner.won += 1

	looser.lost += 1

	winner.save

	looser.save

	end




end
