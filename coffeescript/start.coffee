# Modal

$(':not(.se-modal)').not('.se-modal *').click( ->
  $('.se-modal[style="display: block;"]').fadeOut 'fast'
).children().click (e) ->
  false