module SessionsHelper

  def login(user)
    remember_token = SessionsHelper.remember_token
    remember_digest = SessionsHelper.digest(remember_token)
    cookies.permanent[:remember_token] = remember_token
    user.update_attribute(:remember_digest, remember_digest)
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    remember_token = cookies[:remember_token]
    if remember_token
      sitter = Sitter.find_by(remember_digest: SessionsHelper.digest(remember_token))
      owner = Owner.find_by(remember_digest: SessionsHelper.digest(remember_token))
      if sitter
        @current_user ||= sitter
      else
        @current_user ||= owner
      end
    end
  end

  def logout(user)
    user.update_attribute(:remember_digest, nil)
    cookies.delete(:remember_token)
    self.current_user = nil
  end

  def logged_in?
    !current_user.nil?
  end

  private

  def self.remember_token
    SecureRandom.urlsafe_base64
  end

  def self.digest(string)
    Digest::SHA1.hexdigest(string)
  end

end
