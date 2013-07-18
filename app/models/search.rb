class Search < ActiveRecord::Base
  has_many :search_attributes, :dependent => :destroy
  accepts_nested_attributes_for :search_attributes, allow_destroy: true



  def custom_search
    filter = []
    if self.search_attributes.size > 0
        #drop_down = self.search_attributes.first.drop_down
        #attrs = Search.last.search_attributes.map {|i| [i.drop_down, i.criteria] }
        #Intern.where(Hash[*attrs.flatten])

        Search.last.search_attributes.each do |it|
          if filter.empty?
            filter = Intern.where("lower(#{it.drop_down}) like lower(?)", "%#{it.criteria}%")
          else
            filter = filter.where("lower(#{it.drop_down}) like lower(?)", "%#{it.criteria}%")
          end
        end
      else
        #Intern.find_by_sql("SELECT * FROM  interns WHERE '#{criteria}' ")
      end
      filter
  end

end
