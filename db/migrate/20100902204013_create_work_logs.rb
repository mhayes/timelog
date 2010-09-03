class CreateWorkLogs < ActiveRecord::Migration
  def self.up
    create_table :work_logs do |t|
      t.references :person
      t.references :work_type
      t.float :hours
      t.date :worked_on
      t.string :summary

      t.timestamps
    end
  end

  def self.down
    drop_table :work_logs
  end
end
