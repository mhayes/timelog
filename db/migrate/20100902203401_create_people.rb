class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :name

      t.timestamps
    end
    Person.create!(:name => "David Bettencourt")
    Person.create!(:name => "Dung Truong")
    Person.create!(:name => "Michael Luc")
    Person.create!(:name => "Mark Hayes")
  end

  def self.down
    drop_table :people
  end
end
