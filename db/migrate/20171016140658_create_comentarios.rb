class CreateComentarios < ActiveRecord::Migration[5.1]
  def change
    create_table :comentarios do |t|
      t.string :usuario
      t.text :texto
      t.integer :rate

      t.timestamps
    end
  end
end
