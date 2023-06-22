class LikesController < ApplicationController
    def create
        @like = Like.new(
            user_id: @current_user.id,
            post_id: params[:post_id]
        )
        @like.save
        flash[:good] = "いいね😆！"
        redirect_to("/posts/index")
    end

    def destroy
        @like = Like.find_by(
            user_id: @current_user.id,
            post_id: params[:post_id]
        )
        @like.destroy
        redirect_to("/posts/index")
    end
end
