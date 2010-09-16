class PopulatePersonWorkLogs < ActiveRecord::Migration
  def self.up
    WorkLog.all.each {|w| PersonWorkLog.create!(:person_id => w.person_id, :work_log_id => w.id) }
    
    # remove_column :work_logs, :person_id
  end

  def self.down
    PersonWorkLog.delete_all
  end
end
