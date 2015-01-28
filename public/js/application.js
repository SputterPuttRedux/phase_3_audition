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
      $resp = $(response).children('#auth-container')
      $target.closest('#content').children('#pop-in').html($resp);
      debugger
    });

    $('#content').css("backgroundColor","#888877")


  });

});
