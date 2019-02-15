class CreateDogOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :dog_owners do |t|
      t.string :name
      t.integer :age
      t.boolean :preferred_customer

      t.timestamps
    end
  end
end
