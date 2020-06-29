class UsuariosController < ApplicationController
  before_action :set_usuario, only: [:show, :edit, :update, :destroy]
  before_action :requer_usuario, except: [:show, :new, :create]
  before_action :requer_mesmo_usuario, only: [:edit, :update, :destroy]

  # GET /usuarios
  # GET /usuarios.json
  def index
    @usuarios = Usuario.all
  end

  # GET /usuarios/1
  # GET /usuarios/1.json
  def show
    @posts = Post.all
  end

  # GET /usuarios/new
  def new
    if !logado?
      @usuario = Usuario.new
    else
      redirect_to feed_path
    end
  end

  # GET /usuarios/1/edit
  def edit
  end

  # POST /usuarios
  # POST /usuarios.json
  def create
<<<<<<< HEAD
    @usuario = Usuario.new(usuario_params)
    respond_to do |format|
      if @usuario.save
        session[:usuario_id] = @usuario.id
        format.html { redirect_to cadastro_url, notice: 'Seu perfil foi criado!' }
        format.json { render :show, status: :created, location: @usuario }
      else
        format.html { render :new }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
=======
        @usuario = Usuario.new(usuario_params)
        respond_to do |format|
          if @usuario.save
            session[:usuario_id] = @usuario.id
            format.html { redirect_to cadastro_url, notice: 'Usuario was successfully created.' }
            format.json { render :show, status: :created, location: @usuario }
          else
            format.html { render :new }
            format.json { render json: @usuario.errors, status: :unprocessable_entity }
          end
        end
>>>>>>> urls sem acesso redirecionam ao feed
  end

  # PATCH/PUT /usuarios/1
  # PATCH/PUT /usuarios/1.json
  def update
    respond_to do |format|
      if @usuario.update(usuario_params)
        format.html { redirect_to @usuario, notice: 'Seu perfil foi atualizado.' }
        format.json { render :show, status: :ok, location: @usuario }
      else
        format.html { render :edit }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuarios/1
  # DELETE /usuarios/1.json
  def destroy
    if usuario_atual != @usuario
      @usuario.destroy
      session[:usuario_id] = nil
      redirect_to root_path
      flash.alert = "Usuario deletado com sucesso."
    
    else
      redirect_to feed_path  
    end
  end

  def follow
    @usuario = Usuario.find(params[:id])
    usuario_atual.acompanhados << @usuario
    redirect_to usuario_path(@usuario)
  end

  def unfollow
    @usuario = Usuario.find(params[:id])
    usuario_atual.usuarios_acompanhados.find_by(acompanhado_id: @usuario.id).destroy
    redirect_to usuario_path(@usuario)
  end


  def feed
    @acompanhados = usuario_atual.usuarios_acompanhados
    @posts = Post.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def usuario_params
      params.require(:usuario).permit(:Nome, :Email, :CPF, :NomeDeUsuario, :password, :TipoDeConta, :Foto, :Sobre, :Celular, :Instagram, :NumeroDeSeguidores, :foto_de_perfil )
    end

    def requer_mesmo_usuario
      if usuario_atual != @usuario
        flash.alert = "Você só pode deletar ou editar o próprio perfil!"
        redirect_to usuarios_path
      end
    end


end
