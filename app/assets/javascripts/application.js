// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function(){

  $('#new_comment').submit(function(evt){
    event.preventDefault();
    var url = $(this).attr('action');
    var formData = $('form').serialize();

    $.post(url, formData, function(response){
      console.log(response);
      var newComment = $(response).find('#comment_list').children().last();

      $('#comment_list').append(newComment.html());
      $('#comment_content').val('');
    }); // end post

  }); // end submit

}); // end ready
