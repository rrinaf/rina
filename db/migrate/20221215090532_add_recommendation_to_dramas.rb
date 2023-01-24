class AddRecommendationToDramas < ActiveRecord::Migration[6.1]
  def change
    add_column :dramas, :recommendation, :integer
  end
end
