$ ->
  $('.good').on 'click', ->
    $(this).hide()
    $.colorbox({html:"<h1>カッパしました</h1><br><img src='/images/weey.png'>"});
