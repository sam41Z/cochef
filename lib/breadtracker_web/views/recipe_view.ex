defmodule BreadtrackerWeb.RecipeView do
  use BreadtrackerWeb, :view
  alias BreadtrackerWeb.RecipeView

  def render("index.json", %{recipes: recipes}) do
    %{data: render_many(recipes, RecipeView, "recipe.json")}
  end

  def render("show.json", %{recipe: recipe}) do
    %{data: render_one(recipe, RecipeView, "recipe.json")}
  end

  def render("recipe.json", %{recipe: recipe}) do
    %{id: recipe.id, name: recipe.name}
  end
end
