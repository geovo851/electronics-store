ActiveAdmin.register Message do

  permit_params :name, :email, :subject, :message

end
