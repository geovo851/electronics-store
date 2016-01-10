ActiveAdmin.register Product do

  permit_params :name, :photo, :description, :category_id, :price, :model, :weight, :units_in_stock

end
