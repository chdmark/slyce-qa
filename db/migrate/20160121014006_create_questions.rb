class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :content 
      t.references :fan 
      t.references :qa
      t.timestamps null: false
    end
  end
end
