class AddTitleToDramas < ActiveRecord::Migration[6.1]
  def change
    add_column :dramas, :title, :string
  end
end
