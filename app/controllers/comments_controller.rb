class CommentsController < ApplicationController
	before_action :set_prjct

	def create
		@comment = @prjct.comments.build(comment_params)
		@comment.user_id = current_user.id

		if @comment.save
			redirect_to :back
		else
			render root_path
		end
	end

	def destroy
		@comment = @post.comments.find(params[:id])

		@comment.destroy
		redirect_to :back
	end

	private

	def comment_params
		params.require(:comment).permit(:content)
	end

	def set_prjct
		@prjct = Prjct.find(params[:prjct_id])
	end

end
