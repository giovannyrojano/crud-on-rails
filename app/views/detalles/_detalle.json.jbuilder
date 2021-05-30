json.extract! detalle, :id, :cantidad, :Prestamo_id, :libro_id, :created_at, :updated_at
json.url detalle_url(detalle, format: :json)
