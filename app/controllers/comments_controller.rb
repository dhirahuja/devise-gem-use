class CommentsController < ApplicationController
def create
		@plum = Plum.find(params[:plum_id])
		@project = @plum.comments.create(comment_params)
		redirect_to plum_path(@plum)
	end

	 def destroy
    @plum = Plum.find(params[:plum_id])
    @comment = @plum.comments.find(params[:id])
    @comment.destroy
    redirect_to plum_path(@plum)
  end

	private
		def comment_params
			params.require(:comment).permit(:commenter, :body)
		end
end
