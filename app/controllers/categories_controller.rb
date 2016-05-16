class CategoriesController < ApplicationController
	def index
		@categories = Category.all
	end

	def show
		@category = Category.find(params[:id])
	end

	def new
		
	end

	def create
		@category = Category.new
		@category.name = params[:name]
		@category.status = params[:status]
		@category.save
		redirect_to categories_path
	end

	def edit
		@category = Category.find(params[:id])
	end

	def update
		@category = Category.find(params[:id])
		@category.update(
			name: params[:name],
			status: params[:status],
		)
		redirect_to categories_path
	end

	def destroy
		@category = Category.find(params[:id])
		
		@category.destroy
		
		redirect_to categories_path

	end
end