module ApplicationHelper
    


    def logado?
        # verifica se tem algum usuario logado
        !!usuario_atual
    end

end
