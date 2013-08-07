class InternPdf < Prawn::Document

  def initialize(interns)
    super(top_margin: 20)

    @custom = interns
    header_title
    line_items
  end

  def header_title
    text "Interns Report"
  end

  def line_items
    move_down 20
    table line_item_rows
  end
  def line_item_rows
    [["First Name", "Middle Initial", "Last Name", "Age", "School","Classification", "Major","City", "State","ethnicity","congress_district"]] +
      @custom.map do |item|
        [item.first_name, item.middle_initial, item.last_name, item.age, item.school, item.classification,item.major, item.city, item.state,item.ethnicity,item.congress_district]
      end
  end
end
