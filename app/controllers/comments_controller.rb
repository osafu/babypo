class CommentsController < ApplicationController
  def create
    # spotをパラメータの値から探し出し,spotに紐づくcommentsとしてbuildします。
    @comment = current_user.comments.build(comment_params)
    @spot = @comment.spot
    # クライアント要求に応じてフォーマットを変更
    respond_to do |format|
      if @comment.save
        format.html { redirect_to spot_path(@spot), notice: 'コメントを投稿しました。' }
      else
        format.html { render :new }
      end
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:spot_id, :content)
    end
end
