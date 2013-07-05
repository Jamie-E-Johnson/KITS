module ApplicationHelper
  def title(*parts)
    unless parts.empty?
      content_for :title do
        (parts << "KITS").join(" - ")
      end
    end
  end

  def link_drop_down_menu(name, f,association)
  new_object = f.object.class.reflect_on_association(association).klass.new
  fields = f.options_for_select(association, new_object, :child_index => "new_#{association}") do |builder|
    render(association.to_s.singularize + "_fields", :f => builder)
    end
    link_to_function(name, "add_drop_down_menu(this, \"#{association}\", \"#{escape_javascript(fields)}\")")
  end
end



