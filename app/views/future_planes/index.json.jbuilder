json.array!(@future_planes) do |future_plane|
  json.extract! future_plane, :id, :title, :planning_time, :detail
  json.url future_plane_url(future_plane, format: :json)
end
