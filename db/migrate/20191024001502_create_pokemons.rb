class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :image_url
      t.integer :number
      t.integer :weight
      t.integer :height
      t.string :kind

      t.timestamps
    end
    add_index :pokemons, :name, unique: true
  end
end
