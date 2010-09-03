class AddTypeToWorkTypes < ActiveRecord::Migration
  def self.up
    WorkType.create!(:name => "Design, Code, Integrate, and Test")
  end

  def self.down
    WorkType.where("name = ?", "Design, Code, Integrate, and Test").first.destroy
  end
end
