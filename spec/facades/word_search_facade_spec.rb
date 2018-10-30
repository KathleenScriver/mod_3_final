require "rails_helper"

describe WordSearchFacade do
  subject { WordSearchFacade.new("mindfulness") }
  it 'exists' do
    expect(subject).to be_a(WordSearchFacade)
  end

  it 'is created with word attribute' do
    expect(subject.word).to eq('mindfulness')
  end
end
