class BehemothsController < ApplicationController

  def new
    @instincts = Instinct.all
  end

end
