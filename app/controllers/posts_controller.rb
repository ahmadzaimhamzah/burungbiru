class PostsController < ApplicationController
   
    def new
        @post = Post.new 
    end
   
    def create
        @post = Post.new(post_params)
        @post.user_id = current_user.id
        respond_to do |f|
            if (@post.save)
                f.html { redirect_to "/home", notice: "Mesej berjaya dikicaukan!"}
            else
                f.html { redirect_to "/home", alert: "Ralat! Mesej tidak berjaya dihantar."}
            end
        end
    end
    
    private
    def post_params
        params.require(:post).permit(:user_id, :content)
    end
end