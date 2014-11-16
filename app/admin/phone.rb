ActiveAdmin.register Phone do
  permit_params :number, :user_id

  index do
    selectable_column
    id_column
    column :number
    column :user
    actions
  end

  filter :number
  filter :user

  form do |f|
    f.inputs "Phone Details" do
      f.input :number
      f.input :user
    end
    f.actions
  end

end
