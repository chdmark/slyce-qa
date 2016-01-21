class CreateQaSessions < ActiveRecord::Migration
  def change
    create_table :qa_sessions do |t|
      t.datetime :start_time
      t.datetime :end_time 
      t.integer :host_id 
      t.integer :fan_id	
      t.timestamps null: false
    end
  end
end
