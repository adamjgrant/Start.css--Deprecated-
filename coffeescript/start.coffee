# Modal

$(':not(.s-modal)').not('.s-modal *').click( ->
  $('.s-modal[style="display: block;"]').fadeOut 'fast'
).children().click (e) ->
  false if $('.s-modal[style="display: block;"]').length > 0
$('.s-modal .s-close').click -> $(this).closest('.s-modal').fadeOut()

# End Concatenation

$.fn.s_endconcat = () -> 
  try
    @each -> $(@).html ($(@).html().replace (new RegExp '((?:[^ ]* ){' + ($(@).html().match(/\s/g).length - 1) + '}[^ ]*) '), "$1&nbsp;")
  catch e
    return false
$('.s-endconcat').s_endconcat()

# Dropdowns

$('.s-dropdown').click ->  $(this).parent().toggleClass('dropdown_open')

# Dropdowns - alt

window.clickMenu = (id, $) ->
  _ = @
  $ = window.$ if typeof $ != 'function'
  @menu =
    menu:             $ 'nav.mainHeader#' + id
    menu_item:        $ '#' + id + ' .mainHeader-menu-item > a'
    menu_item_menu_item:        $ '#' + id + ' .mainHeader-menu-item-menu-item > a'
    open:             false
    targeted:         false
    closeMenu:        -> $(_.menu.menu).removeClass 'clicked'; _.menu.clearHovers(); @open = false
    openMenu:         -> $(_.menu.menu).addClass 'clicked'; @open = true
    clearHovers:      -> $(_.menu.menu_item).removeClass('hover').find('.mainHeader-menu-item-menu').hide();return
    init:             ->
      $(_.menu.menu_item_menu_item)
        .mouseover -> $(@).focus()
        .click ->
          location.href = ($(@).attr 'href')
      $(_.menu.menu_item)
        .click ->
          if _.menu.open && _.menu.targeted 
            _.menu.closeMenu() 
          else 
            if _.menu.targeted
              $(@).addClass('hover')
            _.menu.openMenu()
        .hover(
          -> 
            _.menu.targeted = true
          -> 
            _.menu.targeted = false
            _.menu.clearHovers() if !_.menu.open
        )
        .mouseover ->
          _.menu.clearHovers()
          $(_.menu.menu_item).blur()
          $(@).addClass 'hover'
          false

      $('html').click -> _.menu.closeMenu() if (!_.menu.targeted && _.menu.open )

      $(window).blur -> _.menu.closeMenu()
      ( 
        $('iframe').contents().keydown -> _.menu.closeMenu()
        $($('iframe').get(0).contentWindow.document).click -> _.menu.closeMenu()
      ) if $('iframe').length > 0  

  _.menu.init()