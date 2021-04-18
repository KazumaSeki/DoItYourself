class CommentsController < ApplicationController
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @comment = Comment.create(comment_params)
    if @comment.save
      respond_to do |format|
        format.html { redirect_to recipe_path(@recipe) }
        format.json
      end
    else
      render recipe_path(@comment.recipe.id)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, recipe_id: params[:recipe_id])
  end
end
