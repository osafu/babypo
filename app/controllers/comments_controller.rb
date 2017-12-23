class CommentsController < ApplicationController

  before_action :set_comment, only: [:edit, :destroy, :update]

  def create
    # spotをパラメータの値から探し出し,spotに紐づくcommentsとしてbuildします。
    @comment = current_user.comments.build(comment_params)
    @spot = @comment.spot
    # クライアント要求に応じてフォーマットを変更
    respond_to do |format|
      if @comment.save
        format.html { redirect_to spot_path(@spot), notice: 'コメントを投稿しました。' }
        format.js { render :index }
      else
        flash.now[:notice] = 'コメントが未入力です。'
        format.html { render :index, notice: 'コメントが未入力です。' }
        format.js { render :index }
      end
    end
  end

  def destroy
    @comment.destroy
    respond_to do |format|
        format.html { redirect_to spot_path(@spot), notice: 'コメントを削除しました。' }
        format.js { render :index }
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:spot_id, :content)
    end

    def set_comment
      @comment = Comment.find(params[:id])
    end

end
