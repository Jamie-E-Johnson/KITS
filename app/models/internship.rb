class Internship < ActiveRecord::Base
  belongs_to :intern
  validates  :season, :year, :program, :nasa_internships,presence: true
end
