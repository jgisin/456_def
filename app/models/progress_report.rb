class ProgressReport < ActiveRecord::Base

  belongs_to :author, foreign_key: :employee_id, :class_name => "Employee"
  belongs_to :team
end
