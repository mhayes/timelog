class WorkLog < ActiveRecord::Base
  has_many :person_work_logs
  has_many :people, :through => :person_work_logs
  belongs_to :work_type
  
  validates_format_of :worked_on, 
    :with => /^\d{4}-\d{2}-\d{2}$/,
    :message => "must be in yyyy-mm-dd format"
  validates_format_of :hours,
    :with => /\d?\.(00?|25|50?|75)$|^\d\.$|^\d+$/,
    :message => "invalid time (round to nearest .25 hour)"
    
  validates_presence_of :hours, :worked_on, :work_type
end
