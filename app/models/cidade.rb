class Cidade < ApplicationRecord
  def self.search(cidade)
    where("nome ILIKE ?", "%#{cidade}%")
  end
end
