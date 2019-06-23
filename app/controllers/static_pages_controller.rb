class StaticPagesController < ApplicationController
  def index
    puts @pagy.inspect
  end
end
