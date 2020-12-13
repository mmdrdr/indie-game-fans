class SearchController < ApplicationController
  def search
    @model = params[:model]
    @content = params["search"]["content"]
    @records = search_for(@model, @content)
  end

  private

  def search_for(model, content)
    if model == 'user'
      User.where('name LIKE ?', '%' + content + '%')
    elsif model == 'game'
      Game.where('title LIKE ?', '%' + content + '%')
    end
  end
end
