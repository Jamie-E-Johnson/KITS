class Intern < ActiveRecord::Base

  has_many :internships, dependent: :destroy
  #validates :first_name, :middle_initial, :last_name, :home_city, :home_state, :local_city, :classification, :age, :ethnicity, :major, :minor, :congress_district, presence: true
  validates :first_name, :last_name, presence: true
  accepts_nested_attributes_for :internships

end
