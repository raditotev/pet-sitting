class SittersController < ApplicationController

  def new
    @sitter = Sitter.new
  end

def create
  @sitter = Sitter.new(sitter_params)
  if @sitter.save
    login(@sitter)
    redirect_to board_path
  else
    render :new
  end
end

def show
  @sitter = Sitter.find(params[:id])
end

def update
  @sitter = Sitter.find(params[:id])
  @sitter.update_attributes(sitter_params)
  if @sitter.save
    #add message
    redirect_to root_url
  else
    #add error message
    redirect_to root_url
  end
end

private

def sitter_params
  params.require(:sitter).permit(:name)
end

end
