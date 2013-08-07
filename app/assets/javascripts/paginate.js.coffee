ready = ->
  if history and history.pushState
    $ ->
      $(document).on "click", ".pagination a", (e) ->
        $(".pagination").html "Page is loading..."
        $.getScript @href
        history.pushState null, document.title, @href
        e.preventDefault()
        false

      $(window).bind "popstate", ->
        $.getScript location.href

  else
    $ ->
      $(document).on "click", ".pagination a", (e) ->
        $(".pagination").html "Page is loading..."
        $.getScript @href
        false

$(document).ready(ready)
$(document).on('page:load', ready)
