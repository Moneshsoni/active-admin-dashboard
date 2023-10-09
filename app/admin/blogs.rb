ActiveAdmin.register Blog do

  permit_params :title, :description

  # permit_params do
  #   permitted = [:title, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.inputs do
      f.input :title
      f.input :description, as: :quill_editor
    end
    f.actions
  end
  
end
