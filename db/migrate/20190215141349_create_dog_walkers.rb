class CreateDogWalkers < ActiveRecord::Migration[5.2]
  def change
    create_table :dog_walkers do |t|
      t.string :name
      t.belongs_to :dog_walking_company, foreign_key: true
      t.boolean :full_time

      t.timestamps
    end
  end
end
