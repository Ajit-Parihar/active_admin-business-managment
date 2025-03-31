ActiveAdmin.register Order do
     index do 
       selectable_column
       id_column
       column :product_id
       column :created_at
       column "show" do |order|
        link_to "Details", admin_order_path(order)
       end
     end

     show do
      user = User.find(order.user_id)
      product = Product.find(order.product_id)
      seller = User.find( product.user_id) 
      order_date = order.created_at
      attributes_table do
        row :user
        row :product
        row :seller do
          seller.email
        end
        row :order_date do
          order_date.strftime("%B %d, %Y %H:%M")
        end
      end
    end
end
