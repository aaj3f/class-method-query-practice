class CreateDogWalkingCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :dog_walking_companies do |t|
      t.string :name

      t.timestamps
    end
  end
end
