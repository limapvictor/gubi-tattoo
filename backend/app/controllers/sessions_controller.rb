class SessionsController < ApplicationController

    def new
    end

    def create
        usuario = Usuario.find_by(Email: params[:session][:Email].downcase)

        if usuario && usuario.authenticate(params[:session][:password])
            session[:usuario_id] = usuario.id
            flash.notice = "Login efetuado com sucesso!"
            redirect_to usuario
        else
            flash.alert = "Senha e/ou Login incorreto(s)!"
            render 'new'
         end
    end

    def destroy
        session[:usuario_id] =  nil
        flash.notice = "Logout efetuado!"
        redirect_to login_path
    end


end