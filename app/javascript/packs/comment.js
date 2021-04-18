$(document).on('turbolinks:load', ()=> {
  function buildHTML(comment) {
    let html =
    '<div class="comment">${comment.user_name} ${comment.text} ${comment.created_at}</div>'
    return html;
  }
  $('#new_comment').on('submit', function(e){
    e.preventDefault();
    let formData = new FormData(this);
    let url = $(this).attr('acition');
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: "json",
      processData: false,
      contentType: false
    })
    .done(function(data){
      let html = buildHTML(data);
      $(".comment_box").append(html);
      $(".input").val("");
      $(".comment_box").animate({scrollTop: $(".comment_box")[0].scrollHeight});
      $(".form_submit").prop("disabled", false)
    })
    .fail(function(){
      alert("コメントを入力してください");
    })
  })
})
