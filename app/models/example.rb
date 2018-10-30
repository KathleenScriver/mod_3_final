class Example
  attr_reader :region, :text
  def initialize(region, text)
    @region = region.first
    @text = text
  end
end
