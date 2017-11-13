module SessionsHelper
  # Faz o login do usuario
  def log_in(user)
      session[:user_id] = user.id
  end

  # Salva o usuario em uma sessao persistente
  def remember(user)
      user.remember
      cookies.permanent.signed[:user_id] = user.id
      cookies.permanent[:remember_token] = user.remember_token
  end

  # Retorna true se o usuario logado e' o current_user, falso caso contrario
  def current_user?(user)
      user == current_user
  end

  # Retorna o usuario logado, se existir
  # Se nao estiver logado, loga e retorna o usuario correspondente ao cookie remember_token
  def current_user
      if (user_id = session[:user_id])
          @current_user ||= User.find_by(id: user_id)
      elsif (user_id = cookies.signed[:user_id])
          user = User.find_by(id: user_id)
          if user && user.authenticated?(:remember, cookies[:remember_token])
              log_in user
              @current_user = user
          end
      end
  end

  # Retorna true se existe usuario logado, false caso contrario
  def logado?
      !current_user.nil?
  end

  # Esquece uma sessao persistente
  def forget(user)
      user.forget
      cookies.delete(:user_id)
      cookies.delete(:remember_token)
  end

  # Faz o logoff do usuario
  def log_out
      forget(current_user)
      session.delete(:user_id)
      @current_user = nil
      flash[:danger] = 'Logoff realizado!'
  end

  # Redireciona para a url pretendida (ou para a default).
  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  # Guarda a URL que esta tentando ser acessada.
  def store_location
    session[:forwarding_url] = request.original_url if request.get?
  end

end
