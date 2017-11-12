class PasswordResetsController < ApplicationController
  before_action :get_user,   only: [:edit, :update]
  before_action :valid_user, only: [:edit, :update]
  before_action :check_expiration, only: [:edit, :update]

  def new
  end

  def create
    @user = User.find_by(email: params[:password_reset][:email].downcase)
    if @user
      @user.create_reset_digest
      @user.send_password_reset_email
      flash[:info] = "E-mail enviado com as instruções para a recuperação da senha!"
      redirect_to root_url
    else
      flash.now[:danger] = "E-mail não encontrado"
      render 'new'
    end
  end

  def edit
  end

  def update
      if params[:user][:password].empty?
        @user.errors.add(:password, "Não pode ser vazio")
        render 'edit'
      elsif @user.update_attributes(user_params)
        log_in @user
        @user.update_attribute(:reset_digest, nil)
        flash[:success] = "A senha foi resetada!"
        redirect_to @user
      else
        render 'edit'
      end
    end

    private

      def user_params
        params.require(:user).permit(:password, :password_confirmation)
      end

      def get_user
        @user = User.find_by(email: params[:email])
      end

      # Confirma um usuario valido
      def valid_user
        unless (@user && @user.authenticated?(:reset, params[:id]))
          redirect_to root_url
        end
      end

      # Verifica se o token de reset expirou.
      def check_expiration
        if @user.password_reset_expired?
          flash[:danger] = "O link para recuperação de senha expirou!"
          redirect_to new_password_reset_url
        end
      end
end
