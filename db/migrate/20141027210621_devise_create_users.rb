class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      
      ## Basic info
      t.text :fname
      t.text :lname
      t.integer :u_type
      t.text :gender
      t.datetime :bday
<<<<<<< HEAD
      t.integer :weight
      t.integer :height
      t.integer :ex_score
      t.integer :diet_score
      t.integer :diet_fitness_flag
=======
      t.decimal :weight
      t.decimal :height
      t.decimal :ex_score
      t.decimal :diet_score
      t.boolean :diet_fitness_flag
>>>>>>> 80efdba88b7e800395887d54047aefcfefce0267

      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
    
    
  end
end
