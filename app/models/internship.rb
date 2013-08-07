class Internship < ActiveRecord::Base
  belongs_to :intern
  validates  :season, :year, :program, presence: true
end
