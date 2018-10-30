require "rails_helper"

describe Game do
  context 'instance methods' do
    context '#cumulate_scores' do
      it 'should add up player total score' do
        user_1 = create(:user)
        user_2 = create(:user)
        game = create(:game)
        play_1 = create(:play, word: "assess", game: game, user: user_1)

        game.cumulate_score
      end
    end
  end
end
