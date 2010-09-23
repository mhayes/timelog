class AddParentToWorkTypes < ActiveRecord::Migration
  def self.up
    add_column :work_types, :feature_id, :integer
    
    # add subfeatures to Design, Code, etc.
    wt = WorkType.where("name like ?", "Design, Code%").first
    wt.subfeatures << WorkType.create!(:name => "F1 - Manage volunteers")
    wt.subfeatures << WorkType.create!(:name => "F2 - Public-facing volunteer form")
  end

  def self.down
    remove_column :work_types, :feature_id
  end
end
