ActiveAdmin.register Product do
    permit_params :name, images: []
    form partial: 'form'
    nro_images = 0
  
    show do
      attributes_table do
        row :name
        row :images[0] do |ad|
          nro_images = ad.images.size
          image_tag url_for(ad.images[0].variant(resize: "200x200"))
        end

        (1..(nro_images-1)).each do |demas|
          row :images[demas] do |ad|
            image_tag url_for(ad.images[demas].variant(resize: "200x200"))
          end
        end

      end
    end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
