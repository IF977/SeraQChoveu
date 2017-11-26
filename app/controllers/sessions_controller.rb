class SessionsController < ApplicationController
  def new
  end

  def create
      if request.env['omniauth.auth']
          user = User.create_with_omniauth(request.env['omniauth.auth'])
          session[:user_id] = user.id
          redirect_to user_path(user.id)
      else
          user = User.find_by(email: params[:session][:email].downcase)
          if user && user.authenticate(params[:session][:password])
              log_in user
              params[:session][:remember_me] == '1' ? remember(user) : forget(user)
              redirect_back_or user
          else
              flash.now[:danger] = 'E-mail ou Senha inválido!'
              render 'new'
          end
      end
  end

  def destroy
      log_out if logado?
      redirect_to root_url
  end
end
