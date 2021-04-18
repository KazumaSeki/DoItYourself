class LikesController < ApplicationController
  before_action :set_recipe

  def create
    @like = Like.new(user_id: current_user.id, recipe_id: @recipe.id)
    @like.save
  end

  def destroy
    @like =Like.find(user_id: cirrent_user.id, recipe_id: @recipe.id)
  end

  private
  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
