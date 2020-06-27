# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

naruto = Usuario.create([{Nome: 'Uzumaki Naruto', Email: 'uzumakinaruto@konoha.com', CPF: '10101986709', NomeDeUsuario: 'Naruto', password_digest: BCrypt::Password.create('hokage'), TipoDeConta: 'Comum', foto_de_perfil_blob: ActiveStorage::Blob.create_and_upload!(io: File.open('photos/naruto.png'), filename: 'naruto.png')}])
sasuke = Usuario.create([{Nome: 'Uchiha Sasuke', Email: 'uchihasasuke@nukenin.com', CPF: '23071986710', NomeDeUsuario: 'Sasuke', password_digest: BCrypt::Password.create('nukenin'), TipoDeConta: 'Comum', foto_de_perfil_blob: ActiveStorage::Blob.create_and_upload!(io: File.open('photos/sasuke.png'), filename: 'sasuke.png')}])
sakura = Usuario.create([{Nome: 'Haruno Sakura', Email: 'harunosakura@konoha.com', CPF: '28031986703', NomeDeUsuario: 'Sakura', password_digest: BCrypt::Password.create('kunoichi'), TipoDeConta: 'Comum', foto_de_perfil_blob: ActiveStorage::Blob.create_and_upload!(io: File.open('photos/sakura.png'), filename: 'sakura.png')}])
jiraiya = Usuario.create([{Nome: 'Jiraiya', Email: 'jiraiya@myoboku.com', CPF: '11111948306', NomeDeUsuario: 'Jiraiya', password_digest: BCrypt::Password.create('sennin'), TipoDeConta: 'Tatuador', foto_de_perfil_blob: ActiveStorage::Blob.create_and_upload!(io: File.open('photos/jiraiya.png'), filename: 'jiraiya.png'), Celular: '11 954724923', Instagram: '@erosennin'}])
orochimaru = Usuario.create([{Nome: 'Orochimaru', Email: 'orochimaru@ryuchi.com', CPF: '27101948306', NomeDeUsuario: 'Orochimaru', password_digest: BCrypt::Password.create('sennin'), TipoDeConta: 'Tatuador', foto_de_perfil_blob: ActiveStorage::Blob.create_and_upload!(io: File.open('photos/orochimaru.png'), filename: 'orochimaru.png'), Celular: '11 967624462', Instagram: '@orochimaru'}])
tsunade = Usuario.create([{Nome: 'Tsunade', Email: 'tsunade@konoha.com', CPF: '02081948306', NomeDeUsuario: 'Tsunade', password_digest: BCrypt::Password.create('sennin'), TipoDeConta: 'Tatuador', foto_de_perfil_blob: ActiveStorage::Blob.create_and_upload!(io: File.open('photos/tsunade.png'), filename: 'tsunade.png')}])
gamabunta = Post.create([{titulo: 'Gamabunta', foto_blob: ActiveStorage::Blob.create_and_upload!(io: File.open('photos/gamabunta.png'), filename: 'gamabunta.png'), tag_list: 'Sapo, Gamabunta, Kuchiyose', usuario_id: '7'}])
