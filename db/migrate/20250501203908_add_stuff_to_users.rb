class AddStuffToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :name, :string
    add_column :users, :admin, :boolean, default: false
    add_column :users, :activation_digest, :string
    add_column :users, :activated, :boolean, default: false
    add_column :users, :activated_at, :datetime
    add_column :users, :reset_digest, :string
    add_column :users, :reset_sent_at, :datetime
    add_column :users, :current_task_user_id, :integer
    add_column :users, :anon, :boolean
    add_column :users, :confirmed_at, :datetime
    add_column :users, :invite_digest, :string
    add_column :users, :invite_sent_at, :datetime 
    add_column :users, :invite_sent_by, :integer
  end
end
