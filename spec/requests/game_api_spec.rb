require "rails_helper"

describe "Game API" do
  it 'will return JSON of one game' do
    game = create(:game)

    get "/api/v1/games/#{game.id}"

    game = JSON.parse(response.body, symbolize_names: true)

    expect(game).to have_key(:game_id)
    expect(game[:game_id]).to eq(1)
    expect(game).to have_key(:scores)
    expect(game[:scores].first).to have_key(:user_id)
    expect(game[:scores]).to have_key(:score)
    expect(game[:scores]).second[:user_id].to eq(2)
    expect(game[:scores]).second[:score].to eq(16)
  end
#   GET request to “/api/v1/games/1” I receive a JSON response as follows:
#   {
#   "game_id":1,
#   "scores": [
#     {
#       "user_id":1,
#       "score":15
#     },
#     {
#       "user_id":2,
#       "score":16
#     }
#   ]
# }
end
