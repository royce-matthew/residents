json.extract! log, :id, :time, :comment, :created_at, :updated_at
json.url log_url(log, format: :json)