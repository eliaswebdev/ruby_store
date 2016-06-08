class  Admin::CategoriesController < AdminController
	before_action :set_category, only: [:show, :edit, :update, :destroy, :ativar, :desativar, :change_status]

	def index
		@categories = Category.all
	end

	def show
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(category_params)
		
		if @category.save
			redirect_to admin_categories_path, notice: 'A categoria foi cadastrada com sucesso!'
		else
			render :new
		end

	end

	def edit
		
	end

	def update
		if @category.update(category_params)
			redirect_to admin_categories_path, notice: 'A categoria foi atualizada com sucesso!'
		else
			render :edit
		end
	end

	def destroy
		@category.destroy
		redirect_to admin_categories_path, notice: 'A categoria foi excluída com sucesso!'

	end

	def ativar
		@category.update(status: true)
		redirect_to admin_categories_path, notice: 'A categoria foi ativada com sucesso!'
	end

	def desativar
		@category.update(status: false)
		redirect_to admin_categories_path, notice: 'A categoria foi desativada com sucesso!'
	end

	def change_status
		if @category.status == true
			@category.update(status: false)
			redirect_to admin_categories_path, notice: 'A categoria foi desativada com sucesso!'
		else
			@category.update(status: true)
			redirect_to admin_categories_path, notice: 'A categoria foi ativada com sucesso!'			
		end
	end

	private

		def set_category
			@category = Category.find(params[:id])
		end

		def category_params
			params.require(:category).permit(:name, :status)
		end

end