class SittersController < ApplicationController

  def new
    @sitter = Sitter.new
  end

def create
  @sitter = Sitter.new(sitter_params)
  if @sitter.save
    redirect_to @sitter
  else
    render :new
  end
end

def show
  @sitter = Sitter.find(params[:id])
end

private

def sitter_params
  params.require(:sitter).permit(:name)
end

end
