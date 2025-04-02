ActiveAdmin.register Order do
    controller do
      def scoped_collection
        Order.where(id: Order.select("MIN(id)").group(:product_id))
      end
    end

  index do
      ordernew = []
      orders.each do |order|
      products = Product.where(id: order.product_id).group(:name) 
      ordernew.push(products)
     end    
     
    selectable_column
    column "Product Name" do |order|
       Product.find(order.product_id).name
    end
    column "Product Price" do |order|
      Product.find(order.product_id).price
    end
    actions
  end

  show do
  user = User.find(order.user_id) 
  all_orders = Order.where(product_id: order.product_id) 

  panel "Other Users Who Ordered This Product" do
    table_for all_orders do
      column "User" do |order|
        order.user.email
      end
      column "Ordered At" do |order|
        order.created_at.strftime("%B %d, %Y %H:%M")
      end
      column "Seller" do |order|
          order.seller.email
      end
    end
  end
end
end
