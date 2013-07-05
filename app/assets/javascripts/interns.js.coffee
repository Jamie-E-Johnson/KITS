prepare_dropdowns = ->
  $('.category').change ->
    $(this).attr("id", $(this).val())  # We need the value to be downcased and underscored, you'll have to figure this out using jQuery, not Ruby.
    $(this).attr("name", $(this).val())  # We need the value to be downcased and underscored, you'll have to figure this out using jQuery, not Ruby.

ready = ->

  prepare_dropdowns()

  $('#add_button').click (event) ->
    event.preventDefault()
    # Make ajax request to get HTML as "data" variable
    # Append the data variable to some div wrapper
    $.ajax 'interns/add_fields/',
      type: 'post'
      success: (data) ->
        $('#my_searches').append(data)
        prepare_dropdowns()

      error: (data) ->
        console.log "Error"

$(document).ready(ready)
$(document).on('page:load', ready)