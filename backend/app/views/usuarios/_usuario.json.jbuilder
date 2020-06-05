json.extract! usuario, :id, :Nome, :Email, :CPF, :NomeDeUsuario, :created_at, :updated_at, :password
json.url usuario_url(usuario, format: :json)
