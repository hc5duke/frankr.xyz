root = exports ? this

$ ($) ->
  kkeys = []
  konami = "38,38,40,40,37,39,37,39,66,65"
  $(document).keydown (e) ->
    kkeys.push( e.keyCode )
    if ( kkeys.toString().indexOf( konami ) >= 0 )
      $(document).unbind('keydown', arguments.callee)
      $('#selfie').attr('src', 'cfarm.jpg')
      $.getScript 'http://www.cornify.com/js/cornify.js', ->
        cornify_add()
        $(document).keydown(cornify_add)

  # converted from js, a bit of a mess :-|
  $("audio").removeAttr("controls").each (i, audioElement) ->
    audio = $(this)
    that = this
    btnHtml = '<button>'+audio.attr("title")+'</button>'
    btn = $(btnHtml)
    btn.click (-> that.play())
    $("#doc").append btn
