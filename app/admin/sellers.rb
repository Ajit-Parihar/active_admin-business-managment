ActiveAdmin.register Seller do
   permit_params :busniess_id

form do |f|
 f.inputs "seller detail" do
 f.input :business_id
end
f.actions
end
  show do
    attributes_table do
      # row :name
      # row :email
      row :id
      row :business_id  # This will show the associated business
      row :created_at
    end

    panel "Buyer" do
      table_for seller.seller_users do
        column :user_id
        column "Email" do |seller_user|
          seller_user.user.email if seller_user.user.present?
        end
        column :created_at
      end
  end
 end
end
