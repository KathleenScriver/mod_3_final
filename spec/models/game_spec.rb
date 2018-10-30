require "rails_helper"

describe Game do
  context 'instance methods' do
    context '#cumulate_scores' do
      it 'should add up player total score' do
        game = create(:game)
        play_1 = Play.create()

        game.cumulate_scores

      end
    end
  end
end
