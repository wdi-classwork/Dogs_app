class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.string :breed
      t.boolean :vaccinated?
    end
  end
end
