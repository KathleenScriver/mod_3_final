require 'rails_helper'

describe Play do
  context "Instance methods" do
    context "#score_word" do
      it "scores the word" do
        play = create(:play, word: "assess")

        expect(play.score).to eq(6)
      end
    end

    context '#increment_score' do
      it 'totals player points' do
        user_1 = create(:user)
        user_2 = create(:user)
        game = create(:game, player_1: user_1, player_2: user_2)
        play = create(:play, word: "assess", game: game, user: user_1)
        expect(Game.first.player_1_score).to eq(6)
      end
    end
  end
end
