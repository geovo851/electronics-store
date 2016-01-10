class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  before_action :set_categories

  def index
    @products = Product.first(12)
    @carousel_products = CarouselProduct.first(12)
    @title_products = 'Popular Products'
  end

  def search_products
    if params[:root_category]
      @products = Product.where(category_id: all_category(params[:id])).page(params[:page]).per(12)
    else
      @products = Product.where(category_id: params[:id]).page(params[:page]).per(12)
    end
    @category = Category.find(params[:id])
    @title_products = @category.title
  end

  def product
    @product = Product.includes(:product_specifications, :properties).find(params[:id])
    @products_order = ProductsOrder.new
    @popular_products = PopularProduct.includes(:product).first(3)
    @carousel_products = CarouselProduct.first(12)
  end

  def contact_us
    @message = Message.new
  end

  def search
    @products = Product.search(params[:search_text], params[:page])
    @title_products = 'Results found:'
  end

  def terms_of_use
  end

  def privacy_policy
  end

  def cart
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
