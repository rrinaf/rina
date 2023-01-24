class AddHighlightToDramas < ActiveRecord::Migration[6.1]
  def change
    add_column :dramas, :highlight, :string
  end
end
