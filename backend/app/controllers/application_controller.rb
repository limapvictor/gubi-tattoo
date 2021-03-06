class ApplicationController < ActionController::Base
    
    helper_method :usuario_atual, :logado?
    def usuario_atual
        # define quem é o usuário que está atualmente logado, seus acessos e suas permissões
        @usuario_atual ||= Usuario.find(session[:usuario_id]) if session[:usuario_id]

    end

    def logado?
        # verifica se tem algum usuario logado
        !!usuario_atual
    end
    
    def requer_usuario
        if !logado?
            flash.alert = "Você deve estar logado para executar essa ação"
            redirect_to login_path
        end
    end

    
end
