class AddTiposchuvasToCidades < ActiveRecord::Migration[5.1]
  def change
    add_column :cidades, :fracas, :string
    add_column :cidades, :moderadas, :string
    add_column :cidades, :fortes, :string
  end
end
