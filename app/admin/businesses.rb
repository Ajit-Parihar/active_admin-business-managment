ActiveAdmin.register Business do
  permit_params :category
  form do |f|
    f.inputs "Business Details" do
    f.input :category
  end
  f.actions
  end

  show do
    attributes_table do
      row :category
      row :created_at
      row :updated_at
    end

  panel "Sellers" do
    table_for business.sellers do
      column :id
      column :business_id
      # column :name
      # column :email
      column :created_at

      column "View Seller" do |seller|
        link_to "View", admin_seller_path(seller) 
      end
    end
   end
end
end
