json.extract! libro, :id, :titulo, :autor, :anyo, :created_at, :updated_at
json.url libro_url(libro, format: :json)
