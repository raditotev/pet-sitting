class PagesController < ApplicationController
  def index
  end

  def register
    @sitter = Sitter.new
    @owner = Owner.new
  end

  def login
  end

  def profile

  end

  def board

  end

  def appointments

  end

end
