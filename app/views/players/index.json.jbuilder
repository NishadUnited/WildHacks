json.array!(@players) do |player|
  json.extract! player, :id, :team, :score, :flagsClaimed
  json.url player_url(player, format: :json)
end
