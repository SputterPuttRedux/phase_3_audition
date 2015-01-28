$(document).ready(function() {

  $('#login-link').on('click', function(event) {
    console.log("you clicked log-in");
    event.preventDefault();
    var $target = $(event.target);

    $.ajax({
      type: 'GET',
      url: $target.attr('href'),
      dataType: 'html'
    }).done(function(response){
      // debugger
      $target.closest('#content').children('#pop-in').html(response);
    });

  });

});
