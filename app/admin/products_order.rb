ActiveAdmin.register ProductsOrder do

  permit_params :order_id, :product_id, :quantity, :price

end
