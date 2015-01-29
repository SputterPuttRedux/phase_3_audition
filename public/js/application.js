$(document).ready(function() {

  $('#login-link').on('click', function(event) {
    event.preventDefault();
    var $target = $(event.target);

    $.ajax({
      type: 'GET',
      url: $target.attr('href'),
      dataType: 'html'
    }).done(function(response){
      $resp = $(response).children('.auth-container');
      $target.closest('#content').children('#pop-in').html($resp);

    });

    $('#content').css("backgroundColor","#888877");
  });

  $('#signup-link').on('click', function(event) {
    event.preventDefault();
    var $target = $(event.target);

    $.ajax({
      type: 'GET',
      url: $target.attr('href'),
      dataType: 'html'
    }).done(function(response){
      $resp = $(response).children('.auth-container');
      $target.closest('#content').children('#pop-in').html($resp);
    });

    $('#content').css("backgroundColor","#888877");
  });

  $('#delete-button').on('submit', function(event) {
    event.preventDefault();
    var $target = $(event.target);

    $.ajax({
      type: 'DELETE',
      url: $target.attr('action')
    }).done(function(response) {
      $target.closest('tr').remove();
    });

  });
});
