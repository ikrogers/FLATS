ActiveAdmin.register User do

  permit_params :email, :password, :password_confirmation, :weight, :height, :bday, :gender, :u_type, :fname, :lname, :ex_score, :diet_score, :diet_score, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
form do |f|
    f.inputs "User Details" do
      f.input :fname
      f.input :lname
      f.input :bday
      f.input :weight
      f.input :height
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
