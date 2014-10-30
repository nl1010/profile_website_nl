json.array!(@abilities) do |ability|
  json.extract! ability, :id, :name, :professioncy, :detail
  json.url ability_url(ability, format: :json)
end
