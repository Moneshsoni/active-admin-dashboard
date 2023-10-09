ActiveAdmin.register Blog do

  permit_params :title, :description

  # permit_params do
  #   permitted = [:title, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  # controller do 
  #   def update
  #     debugger
  #   end
  # end

  index do
    selectable_column
    id_column
    column :title
    column :description do |object|
      object.description.html_safe
    end
    actions
  end
  
  show do |t|

    attributes_table do
      # if t.images.attached?
      #   t.images.each do |img|
      #     span do
      #       image_tag img.variant(resize_to_limit: [100, 100])
      #     end
      #   end
      # end
      row :title
      row :created_at
      row :updated_at
      row :description do |object|
        object.description.html_safe
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :description, as: :quill_editor
    end
    f.actions
  end
  
end
