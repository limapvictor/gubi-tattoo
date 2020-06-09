module ApplicationHelper
    
    def usuario_atual
        # define quem é o usuário que está atualmente logado, seus acessos e suas permissões
        @usuario_atual ||= Usuario.find(session[:usuario_id]) if session[:usuario_id]

    end

    def logado?
        # verifica se tem algum usuario logado
        !!usuario_atual
    end

end
