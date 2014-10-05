json.array!(@campaings) do |campaing|
  json.extract! campaing, :id, :campaingName, :campaingCode, :status
  json.url campaing_url(campaing, format: :json)
end
