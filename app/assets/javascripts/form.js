$(function(){
    $('#japanese_sentences').on('keyup', function(){
      let textLength = $("#japanese_sentences").val().length;
      $("td#moji").text(textLength);
      console.log(textLength);
  })
})
