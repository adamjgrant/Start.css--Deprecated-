// Generated by CoffeeScript 1.6.3
(function() {
  $(':not(.s-modal)').not('.s-modal *').click(function() {
    return $('.s-modal[style="display: block;"]').fadeOut('fast');
  }).children().click(function(e) {
    if ($('.s-modal[style="display: block;"]').length > 0) {
      return false;
    }
  });

  $('.s-modal .s-close').click(function() {
    return $(this).closest('.s-modal').fadeOut();
  });

  $.fn.s_endconcat = function() {
    var e;
    try {
      return this.each(function() {
        return $(this).html($(this).html().replace(new RegExp('((?:[^ ]* ){' + ($(this).html().match(/\s/g).length - 1) + '}[^ ]*) '), "$1&nbsp;"));
      });
    } catch (_error) {
      e = _error;
      return false;
    }
  };

  $('.s-endconcat').s_endconcat();

  $('.s-dropdown a').click(function() {
    return $(this).parent().toggleClass('s-dropdown_clicked');
  });

}).call(this);
