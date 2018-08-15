class RatingsController < ApplicationController
	before_action :find_tart
	before_action :find_rating, only: [:edit, :update, :destroy]

	def new 
		@rating = Rating.new
	end

	def create
		@rating = Rating.new(rating_params)
		@rating.tart_id = @tart.id

		if @rating.save
			redirect_to tart_path(@tart)
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @rating.update(rating_params)
			redirect_to tart_path(@tart)
		else
			render 'edit'
		end
	end

	def destroy
		@rating.destroy
		redirect_to tart_path(@tart)
	end

	private 

	def rating_params
		params.require(:rating).permit(:taste, :appearance, :texture, :comment)
	end

	def find_tart
		@tart = Tart.find(params[:tart_id])
	end

	def find_rating
        @rating = Rating.find(params[:id])
    end
end
