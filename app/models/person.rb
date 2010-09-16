class Person < ActiveRecord::Base
  has_many :person_work_logs
  has_many :work_logs, :through => :person_work_logs
end
