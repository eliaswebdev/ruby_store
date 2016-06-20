class ProductsController < ApplicationController
  before_action :authenticate_user!, only: [:like, :dislike]
  before_action :set_product, only: [:show, :like, :dislike]

  def index
    @products = Product.published
  end

  def show
  end

  def like
    if @product.likes.create!(user: current_user)
      redirect_to :back, notice: "Liked!!"
    else
      redirect_to :back, notice: "Error: No Liked!"
    end
  end

  def dislike
    if @product.likes.where(user: current_user).destroy_all
      redirect_to :back, notice: "DisLiked!!"
    else
      redirect_to :back, notice: "Error: No Disliked!"
    end
  end

  private
    def set_product
      @product = Product.published.find(params[:id])
    end
end
