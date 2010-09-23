class WorkType < ActiveRecord::Base
  has_many :work_logs
  has_many :subfeatures, :class_name => "WorkType", :foreign_key => "feature_id"
  belongs_to :feature, :class_name => "WorkType"
end
