json.array!(@patents) do |patent|
  json.extract! patent, :id, :title, :people_involved, :register_date, :status, :detail
  json.url patent_url(patent, format: :json)
end
