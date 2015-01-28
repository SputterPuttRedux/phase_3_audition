$(document).ready(function() {

  $('#login-link').on('click', function(event) {
    event.preventDefault();
    var $target = $(event.target);

    $.ajax({
      type: 'GET',
      url: $target.attr('href'),
      dataType: 'html'
    }).done(function(response){
      $resp = $(response).children('.auth-container')
      $target.closest('#content').children('#pop-in').html($resp);
      debugger
    });

    $('#content').css("backgroundColor","#888877")

  });

  $('#signup-link').on('click', function(event) {
    event.preventDefault();
    var $target = $(event.target);

    $.ajax({
      type: 'GET',
      url: $target.attr('href'),
      dataType: 'html'
    }).done(function(response){
      $resp = $(response).children('.auth-container')
      $target.closest('#content').children('#pop-in').html($resp);
      debugger
    });

    $('#content').css("backgroundColor","#888877")

  });

});
