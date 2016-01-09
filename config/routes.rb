Rails.application.routes.draw do
  get 'search/:id' => 'store#search_products', as: 'store_search_products'
  get 'product/:id' => 'store#product', as: 'store_product'
  root 'store#index'
end
