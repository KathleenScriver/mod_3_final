class AddPlayerScoreToGames < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :player_1_score, :integer, default: 0
    add_column :games, :player_2_score, :integer, default: 0
  end
end
