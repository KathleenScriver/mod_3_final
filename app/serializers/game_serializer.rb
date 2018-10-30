class GameSerializer < ActiveModel::Serializer
  attributes :game_id, :scores

  # belongs_to :player_1
  # belongs_to :player_2
  # has_many :plays

  def game_id
    object.id
  end

  def scores
    Game.find(object.id).total_scores
  end
end
