ActiveAdmin.register Business do
  permit_params :category, :user_id, :create_at, :updated_at

  form do |f|
    f.inputs "Business Details" do
      f.input :category
      f.input :user_id, input_html: { value: current_user.id, readonly: true } 
    end
    f.actions
  end

  scope :all, default: true
  scope("With User") { |businesses| businesses.where.not(user_id: nil) }

  index do
    selectable_column
    id_column
    column :user
    column :category
    column :created_at
    column :image do |business| 
      category = business.category
      image_url = Rails.application.config.images_hash[category.to_sym] if Rails.application.config.images_hash.key?(category.to_sym)
        if image_url
          link_to show_category_product_admin_products_path do
          image_tag image_url, alt: "#{category} Image", style: 'max-width: 300px;'
        end
     else
        "No image available"
      end
    end
    column "Orders" do |business|
      link_to "View Orders", admin_orders_path
    end
    actions
  end
      show do 
      user_admin = User.find(business.user_id)
      admin = user_admin.email
      attributes_table do
         row :created_at
         row :updated_at
         row :category
         row :admin do
            admin
         end
      end
    end
end