var drops = 0
var price = 0;

$(document).on('change','#Box',function(){
  console.log("id")
  $.ajax({
    url: '/box_click',
    method: 'GET',
    data: {id: $('#Box').val()},
    success: function(response){
      console.log(response)
      drops = response.length
      str = `<div>`
      for(var i=0;i<response.length;i++){
        str += `<label>`+ response[i][0] +`</label> <select class="selec"  id=`+ response[i][1]['$oid'] +`><option disabled selected >---Select Any Element --- </option>`
        for(var j=0;j<response[i][2].length;j++){
        str+= `<option id=`+ response[i][2][j][1]['$oid'] +` value=`+ response[i][2][j][2] +` >`+ response[i][2][j][0] +`</option>`
        }
        str+=`</select><br>`
        //price.push(0)
      }
      str+= '</div>'
      $("#drop_show").html(str)
    },
    error: function(response){
      console.log("error")
    }
  })
})
$(document).on('change','.selec',function(){
  price = 0
  for (var i=0;i<drops;i++){
    if ($(".selec").eq(i).val() != null) {
      price += parseInt($(".selec").eq(i).val());
    }
  }
  $('#amt').text(price);
})