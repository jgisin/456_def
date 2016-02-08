class Employee < ActiveRecord::Base

  has_many :teams, :through => :progress_reports
  has_many :progress_reports
  has_many :owned_teams, class_name: 'teams'

end
