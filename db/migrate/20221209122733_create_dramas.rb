class CreateDramas < ActiveRecord::Migration[6.1]
  def change
    create_table :dramas do |t|
      t.text :body

      t.timestamps
    end
  end
end
