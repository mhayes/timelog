class CreatePersonWorkLogs < ActiveRecord::Migration
  def self.up
    create_table :person_work_logs do |t|
      t.references :person
      t.references :work_log

      t.timestamps
    end    
  end

  def self.down
    drop_table :person_work_logs    
  end
end
