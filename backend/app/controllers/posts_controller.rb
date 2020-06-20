class PostsController < ApplicationController


    def show
        @post = Post.find(params[:id])
    end

    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def edit
        @post = Post.find(params[:id])
    end
    
    def create
        @post = Post.new(params.require(:post).permit(:titulo, :foto))
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
        if @post.update(params.require(:post).permit(:titulo, :foto))
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

end