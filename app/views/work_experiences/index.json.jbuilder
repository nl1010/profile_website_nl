json.array!(@work_experiences) do |work_experience|
  json.extract! work_experience, :id, :title, :company, :start_date, :end_date, :position, :detail
  json.url work_experience_url(work_experience, format: :json)
end
