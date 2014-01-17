# Modal

$(':not(.s-modal)').not('.s-modal *').click( ->
  $('.s-modal[style="display: block;"]').fadeOut 'fast'
).children().click (e) ->
  false
$('.s-modal .s-close').click -> $(this).closest('.s-modal').fadeOut()

# End Concatenation

$.fn.s_endconcat = () -> 
  try
    @each -> $(@).html ($(@).html().replace (new RegExp '((?:[^ ]* ){' + ($(@).html().match(/\s/g).length - 1) + '}[^ ]*) '), "$1&nbsp;")
  catch e
    return false
$('.s-endconcat').s_endconcat()

# Dropdowns

$('.s-dropdown a').click ->  $(this).parent().toggleClass('s-dropdown_clicked')
