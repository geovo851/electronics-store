class StoreController < ApplicationController
  before_action :set_categories

  def index
    @products = Product.all
  end

  def search_products
    if params[:root_category]
      @products = Product.where(category_id: all_category(params[:id]))
    else
      @products = Product.where(category_id: params[:id])
    end
    @category = Category.find(params[:id])
  end

  def product
    @product = Product.includes(:product_specifications, :properties).find(params[:id])
  end

  private
    def set_categories
      @categories = Category.where(category_id: nil)
    end

    def all_category root_category_id
      find_category Category.where(id: root_category_id)
    end

    def find_category categories, categories_id = []
      categories.each do |c|
        if c.categories.present?
          find_category c.categories, categories_id
        else
          categories_id << c.id
        end
      end
      categories_id
    end
end
