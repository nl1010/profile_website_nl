json.array!(@internships) do |internship|
  json.extract! internship, :id, :title, :company, :contry, :start_date, :end_date, :postion, :company_annotation, :detail
  json.url internship_url(internship, format: :json)
end
