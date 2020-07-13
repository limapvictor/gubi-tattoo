class PostsController < ApplicationController


    def show
        @post = Post.find(params[:id])
        @posts_relacionados = @post.find_related_tags
    end

    def index
        @posts = Post.all
        @busca = Post.tagged_with(params[:search])
    end

    def busca
        @posts = Post.all
        @busca = Post.tagged_with(params[:search])
    end

    def new
        if usuario_atual.TipoDeConta == "Tatuador"
            @post = Post.new
        
        else
            redirect_to feed_path
        end
    end

    def edit
        @post = Post.find(params[:id])
        if @post.usuario_id != usuario_atual.id
            redirect_to feed_path
        end
    end
    
    def create
        if usuario_atual.TipoDeConta == "Tatuador"
            @post = Post.new(tag_params)
            @post.usuario = usuario_atual    

            if @post.save
                flash.notice = "Post salvo!"
                redirect_to post_path(@post)
            else
                render 'new'
            end
        
        else
            redirect_to feed_path    
        end
        end

        def update
            @post = Post.find(params[:id])
            if @post.update(params.require(:post).permit(:titulo, :foto, :usuario_id, :tag_list))
                flash.notice = "Post atualizado!"
                redirect_to post_path(@post)
                
            else 
                render 'edit' 
            end
    end

    def destroy
        @post = Post.find(params[:id])
        if @post.usuario_id == usuario_atual.id
            @post.destroy
            redirect_to posts_path
        else
            redirect_to feed_path
        end
    end
    def tagged
        if params[:tag].present?
            @posts = Post.tagged_with(params[:tag])
        else
            @posts = Post.all
        end
    end

    def tag_params
        p = params.require(:post).permit(:titulo, :foto, :estilo, :tag_list)

        p[:tag_list].split(',') do |tag|
            Caracteristica.create(:Descricao=> tag, :Estilo=>false)
        end

        p[:estilo].split(',') do |tag|
            Caracteristica.create(:Descricao=> tag, :Estilo=>true)
        end

        p[:tag_list] = p[:tag_list] + ',' + p[:estilo]

        p.permit(:titulo, :foto, :tag_list)
    end


end