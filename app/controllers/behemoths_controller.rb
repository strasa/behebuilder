class BehemothsController < ApplicationController

  def new
    @categories = Category.all
    @instincts = Instinct.all
  end

end
