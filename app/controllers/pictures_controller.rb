class PicturesController < ApplicationController
	before_action :set_picture, only: [:show, :edit, :update, :destroy]
	before_action :set_prjct

	def new
		@picture = Picture.new
	end

	def create
		@picture = Picture.new(picture_params)
		@picture.prjct_id = @prjct.prjct_id

		if @picture.save
			redirect_to @prjct
		else
			render 'new'
		end
	end

	def update
		@picture.update(picture_params)
	end

	def destroy
		@picture.destroy
		redirect_to prjct_path
	end

	private
		def set_picture
			@picture = Picture.find(params[:id])
		end

		def set_prjct
			@prjct = Prjct.find(params[:prjct_id])
		end

		def picture_params
			params.require(:picture).permit(:image, :caption)
		end


end
