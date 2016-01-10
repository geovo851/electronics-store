Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :messages
  resources :products_orders
  resources :deliveries, only: [:edit, :update]
  post 'store/cart/update_quantity' => 'products_orders#update_quantity', 
        as: 'cart_update_quantity'
  get 'store/cart/:id' => 'store#cart', as: 'store_cart'
  get 'privacy_policy' => 'store#privacy_policy', as: 'store_privacy_policy'
  get 'terms_of_use' => 'store#terms_of_use', as: 'store_terms_of_use'
  get 'contact' => 'store#contact_us', as: 'store_contact_us'
  match 'search' => 'store#search', as: 'store_search', via: [:get, :post]
  get 'search/:id' => 'store#search_products', as: 'store_search_products'
  get 'product/:id' => 'store#product', as: 'store_product'
  root 'store#index'
end
