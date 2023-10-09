ActiveAdmin.register Client do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :address, :company, :phone_number
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :address, :company, :phone_number]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  actions :index, :edit, :update, :create, :destroy

  permit_params :name, :address, :company, :phone_number
  menu label: "VIP Clients"

    index do
        column :name
        column :address
        column :company
        column :phone_number    
    end

   filter :name
   filter :company

   controller { actions :all, except: [:destroy] }

end
