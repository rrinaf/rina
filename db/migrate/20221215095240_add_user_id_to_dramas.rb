class AddUserIdToDramas < ActiveRecord::Migration[6.1]
  def change
    add_column :dramas, :user_id, :integer
  end
end
