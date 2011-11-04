class CreatePeliculas < ActiveRecord::Migration
  def change
    create_table :peliculas do |t|
      t.string :nombre
      t.date :fecha
      t.text :sinop
      t.references :director

      t.timestamps
    end
    add_index :peliculas, :director_id
  end
end
