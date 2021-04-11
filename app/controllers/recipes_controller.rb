class RecipesController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:update]

  def index
    begin
      a = Recipe.find params[:id]
      author = a.author
      render json: {
          title: a.title,
          description: a.description,
          ingredients: a.ingredients,
          directions: a.directions,
          prep_time_min: a.prep_time_min,
          cook_time_min: a.cook_time_min,
          servings: a.servings,
          tags: a.tags,
          author: {
            name: author.name,
            url: author.url
          },
          source_url: a.source_url
        }, status: :ok
    rescue => exception
      render json: { message: "Not found" }, status: :not_found
    end
  end

  def list
    indexes = Recipe.all.map { |r| {id: r.id, title: r.title} }
    render json: indexes
  end
end
