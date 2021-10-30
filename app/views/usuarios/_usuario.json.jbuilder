json.extract! usuario, :id, :first_name, :last_name, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
