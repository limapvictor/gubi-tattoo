class SessionsController < ApplicationController

    def new
    end

    def create
        usuario = Usuario.find_by(Email: params[:session][:Email].downcase)

        if usuario && usuario.authenticate(params[:session][:password])
            
            flash.notice = "Login efetuado com sucesso!"
            redirect_to usuario
        else
            flash.alert = "Senha e/ou Login incorreto(s)!"
            render 'new'
         end
    end

    def destroy
    end


end