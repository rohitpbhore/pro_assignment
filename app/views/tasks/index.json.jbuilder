json.array!(@tasks) do |task|
  json.extract! task, :id, :name, :description, :project_id, :status, :user_id
  json.url task_url(task, format: :json)
end
