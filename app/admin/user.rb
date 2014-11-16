ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation, :name, :phone_ids

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :phones
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "User Details" do
      f.input :email
      f.inputs do
        f.has_many :phones, :allow_destroy => true, :new_record => false do |cf|
          cf.input :number
        end
      end
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
