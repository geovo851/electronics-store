Rails.application.routes.draw do
  get 'contact' => 'store#contact_us', as: 'store_contact_us'
  get 'search/:id' => 'store#search_products', as: 'store_search_products'
  get 'product/:id' => 'store#product', as: 'store_product'
  root 'store#index'
end
