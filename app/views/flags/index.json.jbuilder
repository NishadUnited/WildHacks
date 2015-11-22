json.array!(@flags) do |flag|
  json.extract! flag, :id, :x, :y, :type, :claimed
  json.url flag_url(flag, format: :json)
end
