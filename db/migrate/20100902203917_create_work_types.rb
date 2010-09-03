class CreateWorkTypes < ActiveRecord::Migration
  def self.up
    create_table :work_types do |t|
      t.string :name

      t.timestamps
    end
    
    ["MGT", "LRN", "SRS", "Arch. Design","Interaction (IxD) Design Framework",
      "SDS", "STS", "Testing & STR", "UM", "Delivery-CD"].each {|wt| WorkType.create!(:name => wt)}
  end

  def self.down
    drop_table :work_types
  end
end
