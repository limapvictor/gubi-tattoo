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
        @post = Post.new
    end

    def edit
        @post = Post.find(params[:id])
    end
    
    def create
        @post = Post.new(params.require(:post).permit(:titulo, :foto, :usuario_id, :tag_list))
        @post.usuario = usuario_atual
        
        if @post.save
            flash.notice = "Post salvo!"
            redirect_to post_path(@post)
        else
            render 'new'
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
        @post.destroy
        redirect_to posts_path
    end

    def tagged
        if params[:tag].present?
            @posts = Post.tagged_with(params[:tag])
        else
            @posts = Post.all
        end
    end

end