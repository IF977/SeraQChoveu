class User < ApplicationRecord
    has_secure_password
    attr_accessor :remember_token
    before_save {email.downcase!}
    validates :name, presence: true, length: {maximum: 50}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true, length: {maximum: 255},
    format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
    validates :password, presence: true, length: { minimum: 6 }, allow_nil: true

    # Retorna um hash criptografado da string passada como parametro
    def self.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                      BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
    end

    # Gera um novo token aleatorio
    def self.new_token
        SecureRandom.urlsafe_base64
    end

    # Salva um usuario na base de dados para uso em sessoes persistentes
    def remember
        self.remember_token = User.new_token
        update_attribute(:remember_digest, User.digest(remember_token))
    end

    # Retorna true se o token passado como parametro bate com a hash criptografada
    def authenticated?(remember_token)
        return false if remember_digest.nil?
        BCrypt::Password.new(remember_digest).is_password?(remember_token)
    end

    # Esquece um usuario, ou seja, desfaz o metodo remember
    def forget
        update_attribute(:remember_digest, nil)
    end
end
