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
        play = create(:play, word: "assess")
        game = play.game
        expect(game.player_1_score).to eq(6)
      end
    end
  end
end
