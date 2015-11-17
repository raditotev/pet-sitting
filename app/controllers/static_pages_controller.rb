class StaticPagesController < ApplicationController
  def index
  end

  def register
    @sitter = Sitter.new
    @owner = Owner.new
  end

  def login
  end

end
