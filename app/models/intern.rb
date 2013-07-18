class Intern < ActiveRecord::Base

  has_many :internships, dependent: :destroy
  #validates :first_name, :middle_initial, :last_name, :home_city, :home_state, :local_city, :classification, :age, :ethnicity, :major, :minor, :congress_district, presence: true
  validates :first_name, :last_name, presence: true
  accepts_nested_attributes_for :internships



  def self.search(search)
    if search

      #find(:all, :conditions => ['name LIKE?', "%#{search}%"])


      #where('name LIKE ?',"%#{search}%")
    else
      #find(:all)
      #scoped
    end
  end


   def self.uniq_id(counter)
     puts 1.next
     counter += 1

     return counter
   end

  def filtered_results(search_params)

    search_params.each do |f|

    end

  end




end
