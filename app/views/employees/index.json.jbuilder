json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :document, :jobDescription, :email
  json.url employee_url(employee, format: :json)
end
