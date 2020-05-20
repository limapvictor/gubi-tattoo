json.extract! usuario, :id, :Nome, :Email, :CPF, :NomeDeUsuario, :Senha, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
