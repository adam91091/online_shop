# frozen_string_literal: true

class CategoriesController < ApplicationController
  def show
    @child_categories = find_child_categories(cat_id = params[:id])
  end

  private

  def find_child_categories(cat_id)
    Category.where(parent: cat_id)
  end
end
