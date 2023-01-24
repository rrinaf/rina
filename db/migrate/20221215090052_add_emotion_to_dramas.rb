class AddEmotionToDramas < ActiveRecord::Migration[6.1]
  def change
    add_column :dramas, :emotion, :string
  end
end
