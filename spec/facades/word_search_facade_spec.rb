require "rails_helper"

describe WordSearchFacade do
  subject { WordSearchFacade.new("mindfulness") }
  it 'exists' do
    expect(subject).to be_a(WordSearchFacade)
  end
end
