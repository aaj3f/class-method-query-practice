class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.integer :weight
      t.boolean :well_trained
      t.belongs_to :dog_owner, foreign_key: true
      t.belongs_to :dog_walker, foreign_key: true

      t.timestamps
    end
  end
end
