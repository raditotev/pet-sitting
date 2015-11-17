module ApplicationHelper

  def sitter?
    current_user.class == Sitter
  end
end
