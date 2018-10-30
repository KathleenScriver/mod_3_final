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
      it 'should return examples objects of word in array' do
        VCR.use_cassette("examples") do
          expect(subject.examples.first).to be_a(Example)
          expect(subject.examples.first.region).to eq("Canadian")
          expect(subject.examples.first.text).to eq("Meditation is one way to express mindfulness in a dedicated, concentrated manner.")
        end
      end
    end
  end
end
