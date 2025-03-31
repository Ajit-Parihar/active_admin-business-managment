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
    column "Orders" do |business|
      link_to "View Orders", admin_orders_path
    end
    actions
  end

end