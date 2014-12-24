json.array!(@morses) do |morse|
  json.extract! morse, :id, :name, :message
  json.url morse_url(morse, format: :json)
end
