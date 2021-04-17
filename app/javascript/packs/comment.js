$(function (){
  function buildHTML(comment){
    var html =
      '<div class="comment_list">${comment.user_name}${comment.user_id}${comment.content}</div>'
     return html;
  }
  $('#commetn_area').on('submit', function(e){
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr('action');
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      var html =buildHTML(data);
      $('.comment').prebend(html)
      $('.input').val("");
      $('.form_submit').prop('disabled', false);
    })
    .fail(function(){
      alert('error');
    })
  })
})
