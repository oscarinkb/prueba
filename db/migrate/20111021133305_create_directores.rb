class CreateDirectores < ActiveRecord::Migration
  def change
    create_table :directores do |t|
      t.string :nombre
      t.string :lugar
      t.date :fecha
      t.text :bio

      t.timestamps
    end
  end
end
