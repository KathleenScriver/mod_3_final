require "rails_helper"

describe Game do
  context 'instance methods' do
    context '#cumulate_scores' do
      it 'should add up player total score' do
        user_1 = create(:user)
        user_2 = create(:user)
        game = create(:game)
        play_1 = create(:play, word: "assess", game: game, user: user_1)

        game.cumulate_scores(1, 6)
      end
    end

    context '#total_scores' do
      it 'shoule return total scores' do
        user_1 = create(:user)
        user_2 = create(:user)
        game = create(:game, player_1: user_1, player_2: user_2)
        game.player_1_score = 0
        game.player_2_score = 0
        game.save

        play = create(:play, word: "assess", game: game, user: user_1)

        expected =  [
            { user_id: 1,
              score: 6
            },
            { user_id: 2,
              score: 0
            }
          ]
        expect(game.total_scores).to eq(expected)
      end
    end
  end
end
