json.array!(@educations) do |education|
  json.extract! education, :id, :facility_name, :start_date, :end_date, :subject, :transcript, :detail
  json.url education_url(education, format: :json)
end
