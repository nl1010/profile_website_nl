json.array!(@projects) do |project|
  json.extract! project, :id, :name, :start_date, :end_date, :status, :priority, :involved_tool, :involved_team, :detail
  json.url project_url(project, format: :json)
end
