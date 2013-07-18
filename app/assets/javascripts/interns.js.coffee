# $('.category').change ->
    #$(this).attr("id", $(this).val())  # We need the value to be downcased and underscored, you'll have to figure this out using jQuery, not Ruby.
   # $(this).attr("name", $(this).val())  # We need the value to be downcased and underscored, you'll have to figure this out using jQuery, not Ruby.

#

  #prepare_dropdowns()

 # $('#add_button').click (event) ->
   # event.preventDefault()
    # Make ajax request to get HTML as "data" variable
    # Append the data variable to some div wrapper
   # $.ajax 'interns/add_fields/',
#      console.log "add"
      #type: 'post'

      #success: (data) ->
        #$('#my_searches').append(data)
       # prepare_dropdowns()
        #console.log "add"

     # error: (data) ->
       # console.log "Error"



jQuery ->

  $('form').on 'click', '#remove_fields', (event) ->
    $(this).prev('input[type=hidden]').val('1')
    $(this).closest('fieldset').hide()
    event.preventDefault()

  $('form').on 'click', '#add_fields', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp, time))
    event.preventDefault()




