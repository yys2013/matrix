<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="js/jquery-1.11.1.js"></script>
<script>
$(document).ready(function(){
	$("button").click(function(){
	  $.post("pro",
	  {
	    name:"Donald Duck",
	    city:"Duckburg"
	  },
	  function(data,status){
	    //alert("Data: " + data + "\nStatus: " + status);
	    getPercent();
	  });
	});
});
var tmp = 0;
function getPercent() {
	
// 	$.ajax({
// 	    type: 'POST',
// 	    async: false,
// 	    url: 'per',
// 	    data: '',
	    
// 	    success: function(data){
// 	        $("#rateShow").val(data);
// 	        if(sts == 1) {
// 	        	$("#rateShow").val("恭喜全部已经完成！");
// 	        	return;
// 	        }
// 	        getPercent();
// 	   }
// 	});
	

	$.post("per",
    {},
    function(data,status){
      var num = parseInt(data / 5);
      $("#rateShow").html(data + "%");

      if((num - tmp) >= 1 && num != tmp) {
    	  for(var i=tmp; i<num; i++) {
		      $("#block" + i).after("<div id='block" + (i+1) + "' class='blockShow2'></div>");
// 		      var s = $("#show").html();
// 		      $("#show").html(s + "i=" + i + "tmp="+tmp+";num=" + num+ ": "+(parseInt(num) != parseInt(tmp))+ ";;");
// 		      $("#show").html(s + "i=" + i + ";;");
    	  }
	      tmp = num;
      }
      
      for(var i=0; i<num; i++) {
    	  //$("#block" + i).css("display","block");
//     	  alert($("#block" + i));
      }
      
      if(num == 20) {
          $("#rateShow").html("完成！");
//           $(".blockShow2").css("background-color","#FF7F00");
          $(".blockShow2").each(function(index){
        		  $("#block" + (index+1)).css("background-color","#FF7F00");
        		  //sleep(1000);
          });
          return;
      }
      getPercent();
    });
}

function change(){
	$("#block" + (index+1)).css("background-color","#FF7F00");
}

// sleep(5000); //当前方法暂停5秒
function sleep(d){
    for(var t = Date.now();Date.now() - t <= d;);
}

// $.ajax({
//     type: 'POST',
//     async: false,
//     url: '1.php',
//     data: '',
//     success: function(re){
//        a=re;
//    }
// });
</script>
<style>
    .blockShow{
        width:50px;height:20px;background-color:black;float:left;display:none
    }

    .blockShow2{
        width:20px;height:20px;background-color:black;float:left;display:block;border: 1px solid white;
    }
</style>
</head>
<body>
<button>进度展示</button>
<br/>
<br/>
<br/>
<div id="rateShow" style="font-size:30px"></div>
<!-- <input type="text" id="rateShow1" value=""> -->
<div id="block0" ></div>
<!-- <div id="block1" class="blockShow"></div> -->
<!-- <div id="block2" class="blockShow"></div> -->
<!-- <div id="block3" class="blockShow"></div> -->
<!-- <div id="block4" class="blockShow"></div> -->
<!-- <div id="block5" class="blockShow"></div> -->
<!-- <div id="block6" class="blockShow"></div> -->
<!-- <div id="block7" class="blockShow"></div> -->
<!-- <div id="block8" class="blockShow"></div> -->
<!-- <div id="block9" class="blockShow"></div> -->
<div id="show" ></div>
</body>
</html>