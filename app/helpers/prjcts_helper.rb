module PrjctsHelper
	def display_likes(prjct)
		votes = prjct.votes_for.up.by_type(User)
		return count_likers(votes)
	end

	def liked_prjct(prjct)
		return 'glyphicon-heart' if current_user.voted_for? prjct
		'glyphicon-heart-empty'
	end

	private

	def count_likers(votes)
		vote_count = votes.size
		vote_count.to_s
	end
end
