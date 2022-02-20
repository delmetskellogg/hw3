class PostsController < ApplicationController
    def index
        @posts = Post.all
      end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
        @post = Post.find(params["place_id"])
        @post.place_id = @place.id
      end
    
      def create
        @post = Post.new(params["post"])
        @post.save
        redirect_to "/places/#{@post.place.id}"
      end
end