class PersonWorkLog < ActiveRecord::Base
  belongs_to :person
  belongs_to :work_log
end
