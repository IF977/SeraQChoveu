class CreateCidades < ActiveRecord::Migration[5.1]
  def change
    create_table :cidades do |t|
      t.string :nome
      t.string :dia
      t.string :precipitacao
      t.string :ocorrencias

      t.timestamps
    end
  end
end
