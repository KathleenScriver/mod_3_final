class Game < ApplicationRecord
  belongs_to :player_1, class_name: "User", foreign_key: :player_1_id
  belongs_to :player_2, class_name: "User", foreign_key: :player_2_id

  has_many :plays

  def cumulate_scores(player, score)
    if player_1_id == player
      self.player_1_score += score
    elsif player_2_id == player
      self.player_2_score += score
    end
  end

  def total_scores
    [
      { user_id: player_1_id,
        score: player_1_score
      },
      { user_id: player_2_id,
        score: player_2_score
      }
    ]
  end
end
