class Team < ActiveRecord::Base

  has_many :members, :through => :progress_reports, source: :author
  has_many :progress_reports
  belongs_to :owner
end
