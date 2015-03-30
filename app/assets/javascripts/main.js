$(document).ready(function(){

   console.log("js works!");

  $('#new_comment').submit(function(evt){
    event.preventDefault();
    var url = $(this).attr('action');
    var formData = $('form').serialize();
    console.log(formData);
    $.post(url, formData, function(response){
      console.log(response);
      var newComment = $(response).find('#comment_list').children().first();

      $('#comment_list').prepend(newComment);
      $('#comment_content').val('');
    }); // end post

  }); // end submit

}); // end ready
