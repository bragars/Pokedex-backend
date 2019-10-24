class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :image_url
      t.string :identifier
      t.integer :weight
      t.integer :height
      t.string :kind

      t.timestamps
    end
    add_index :pokemons, :identifier, unique: true
  end
end
