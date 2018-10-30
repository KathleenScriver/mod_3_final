class WordSearchFacade
  attr_reader :word
  def initialize(word)
    @word = word
  end

  def examples
    app_id = ENV['oxford_app_id']
    app_key = ENV['oxford_app_key']
    conn = Faraday.new('https://od-api.oxforddictionaries.com') do |faraday|
      faraday.headers['app_id'] = app_id
      faraday.headers['app_key'] = app_key
      faraday.adapter Faraday.default_adapter
    end
    response = conn.get("/api/v1/entries/en/#{word}/sentences")
    raw_info = JSON.parse(response.body, symbolize_names: true)[:results].first[:lexicalEntries].first[:sentences]
    regional_info = raw_info.select do |info_hash|
      info_hash[:regions].first == "Canadian" || info_hash[:regions].first == "British"
    end
    regional_info.map do |regional_hash|
      Example.new(regional_hash[:regions], regional_hash[:text])
    end
  end
end
