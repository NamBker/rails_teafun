class TagsController < ApplicationController
	def create
		tag = Tag.create user_id: params[:user_id], post_id: params[:post_id]
		respond_to do |format|
			format.json {render json: tag}
		end
	end

	def remove
		tag = Tag.find_by user_id: params[:user_id], post_id: params[:post_id]
		tag.destroy
	end
end