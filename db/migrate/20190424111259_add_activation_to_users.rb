class AddActivationToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :member, :boolean
    add_column :users, :approved_at, :datetime
  end
end
