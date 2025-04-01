ActiveAdmin.register Product do
  remove_filter :image_attachment, :image_blob

  permit_params :name, :price, :brand_name, :image, :business_id

  form do |f|
    f.inputs "Product Details" do
      f.input :name
      f.input :price
      f.input :brand_name
      f.input :image, as: :file  
      f.input :business_id, as: :radio, collection: Business.pluck(:category, :id), label: "Product Category"
        end
    f.actions
  end

  index do 
     selectable_column 
      id_column
      column :name
      column :brand_name
      column :price
      column :image do |product|
        if product.image.attached?
          link_to image_tag product.image, alt: product.name, style: 'max-width: 300px;'
        else
          "No image available"
        end
      end
   end
     def show_category_product
         render plain: "okey"
     end

show do   
  attributes_table do
    row :name
    row :price
    row :brand_name
    row :image do |product|
      if product.image.attached?
        image_tag product.image, alt: product.name, style: 'max-width: 300px;' 
         else
        "No image available"
      end
    end
  end
 end
end