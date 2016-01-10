ActiveAdmin.register Order do

  permit_params :status, :payment_id, :delivary_adress, :order, :total_sum

end
