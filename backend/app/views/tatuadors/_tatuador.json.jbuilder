json.extract! tatuador, :id, :Nome, :Email, :CPF, :NumeroDeSeguidores, :Instagram, :Celular, :Senha, :Sobre, :Foto.string, :created_at, :updated_at
json.url tatuador_url(tatuador, format: :json)
