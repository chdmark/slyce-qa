class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
      t.string :name 
      t.references :sport
      t.timestamps null: false
    end
  end
end
