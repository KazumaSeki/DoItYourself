class CommentsController < ApplicationController
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @comment = @recipe.comments.build(comment_params)
    @comment = Comment.new(comment_params)
    if @comment.save
      respond_to do |format|
        format.html {redirect_to recipe_path(@recipe)}
        format.json
      end
    else
        flash.now[:alert] = 'コメントを入力してください'
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      redirect_to recipe_path(@recipe)
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, recipe_id: params[:recipe_id])
  end
end
