require "rails_helper"

describe WordSearchFacade do
  subject { WordSearchFacade.new("mindfulness") }
  it 'exists' do
    expect(subject).to be_a(WordSearchFacade)
  end

  it 'is created with word attribute' do
    expect(subject.word).to eq('mindfulness')
  end

  context 'instance methods' do
    context '#examples' do
      it 'should return sentence examples of word in hash with region' do
        text_1 = "Meditation is one way to express mindfulness in a dedicated, concentrated manner."
        text_2 = "At such times, mindfulness of the practice of patience and the application of certain techniques will help us to continue generating this attitude."

        expected_hash = { "British" => text_1, "Canadian" => text_2 }
        expect(subject.examples).to eq(expected_hash)
      end
    end
  end
end
