class Cidade < ApplicationRecord
  validates :nome, presence: true
  validates :dia, presence: true
  validates :ocorrencias, presence: true
  validates :precipitacao, presence: true
  validates :fracas, presence: true
  validates :moderadas, presence: true
  validates :fortes, presence: true
  def self.search(cidade)
    where("nome ILIKE ?", "%#{cidade}%")
  end
end
