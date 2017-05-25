class PrjctsController < ApplicationController

	before_action :set_prjct, only: [:show, :edit, :update, :destroy]

	def index
		@prjcts = Prjct.all.order("created_at desc")
	end

	def show
		@pictures = Picture.where(prjct_id: @prjct.id).order("created_at DESC")
		@prjct = Prjct.find(params[:id])
	end

	def new
		@prjct = Prjct.new
	end

	def create
		@prjct = Prjct.new(prjct_params)
		if @prjct.save
			redirect_to @prjct, notice: 'Project created.'
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @prjct.update(prjct_params)
			redirect_to @prjct, notice: 'Project updated.'
		else
			render :edit
		end
	end

	def destroy
		@prjct.destroy
		redirect_to root_path, notice: 'Project entry was deleted.'
	end

	private
		def set_prjct
			@prjct = Prjct.find(params[:id])
		end

		def prjct_params
			params.require(:prjct).permit(:title, :description, :deight)
		end
	end

