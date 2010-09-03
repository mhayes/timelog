class WorkLog < ActiveRecord::Base
  belongs_to :person
  belongs_to :work_type
  
  validates_format_of :worked_on, 
    :with => /^\d{4}-\d{2}-\d{2}$/,
    :message => "must be in yyyy-mm-dd format"
  validates_format_of :hours,
    :with => /\d?\.(00?|25|50?|75)$|^\d\.$|^\d+$/,
    :message => "invalid time (round to nearest .25 hour)"
    
  validates_presence_of :person, :hours, :worked_on, :work_type
end
