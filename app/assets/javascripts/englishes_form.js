$('form').submit(function(){
  var data = $('form').serializeArray();

  alert(JSON.stringify(data));

  $.ajax({
    type:          'post',
    dataType:      'json',
    contentType:   'application/json',
    scriptCharset: 'utf-8',
    data:          JSON.stringify(data)
  })
}
