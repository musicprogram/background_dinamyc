class CreateFondos < ActiveRecord::Migration[5.1]
  def change
    create_table :fondos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
