class CreateRiskAreas < ActiveRecord::Migration
  def change
    create_table :risk_areas do |t|
      t.string :address
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :resident
      t.text :description
      t.string :phone
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
