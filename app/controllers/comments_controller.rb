class CommentsController < ApplicationController
	before_action :set_prjct

	def create
		@comment = @prjct.comments.build(comment_params)
		@comment.user = current_user
		if @comment.save
			respond_to do |format|
				format.html { redirect_to root_path }
				format.js
			end
		end
		
	end

	def destroy
		@comment = @prjct.comments.find(params[:id])

		if @comment.user == current_user
			@comment.delete
			respond_to do |format|
				format.html { redirect_to root_path }
				format.js
			end
		end
	end

	private

	def comment_params
		params.require(:comment).permit(:content)
	end

	def set_prjct
		@prjct = Prjct.find(params[:prjct_id])
	end

end
