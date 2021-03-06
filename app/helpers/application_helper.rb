module ApplicationHelper
  # def title(*parts)
  #unless parts.empty?
  # content_for :title do
  # (parts << "KITS").join(" - ")
  #  end
  # end
  # end


  #module ApplicationHelper
  #def link_to_remove_fields(name, f)
  # f.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)")
  # end


  def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render("interns/" + association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, '#', id: "add_fields", class: 'btn btn-info', data: {id: id, fields: fields.gsub("\n", "")})

  end

  def sortable(column, title = nil)
    title ||= column.titleize

    direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"
    link_to title, :sort => column, :direction => direction
  end

end










